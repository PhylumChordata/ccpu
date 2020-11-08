`timescale 1us/1ns
module test_alu;
    task assert;
        input v;
        if (v === 1'b0)
            $fatal;
    endtask

    localparam ADD = 9; //  a + b
    localparam SUB = 13; //  a - b
    localparam ADC = 10; //  a + b + c
    localparam SBB = 14; //  a - b - c
    localparam INC = 11; //  a + 1
    localparam DEC = 15; //  a - 1
    localparam SHL = 3; //  a << 1
    localparam NEG = 12; // -a
    localparam MOV = 8; //  b
    localparam NOT = 4; //  ~a
    localparam EXP = 0; //  c ? 0xff : 0x00
    localparam AND = 1; // a & b
    localparam OR  = 2; // a | b
    localparam XOR = 5; // a ^ b
    localparam SHR = 6; // a >> 1, zero extended
    localparam SAR = 7; // a >> 1, sign extended

    reg [7:0] a;
    reg [7:0] b;
    reg [3:0] op;
    reg n_oe;
    reg invert;
    reg carry_in;
    wire [7:0] result;
    wire [3:0] flags;
    wire [7:0] alu_a = invert ? b : a;
    wire [7:0] alu_b = invert ? a : b;
    alu inst(
        .a(alu_a),
        .b(alu_b),
        .op(op),
        .n_oe(n_oe),
        .invert(invert),
        .carry_in(carry_in),
        .result(result),
        .flags(flags));

    integer i_carry, i_invert, i_a, i_b;
    initial begin
        // $dumpfile("test_alu.vcd");
        // $dumpvars;

        n_oe = 1'b0;

        // inversion-independent
        for (i_invert = 0; i_invert < 2; i_invert = i_invert + 1) begin
            invert = i_invert[0];
            // carry-independent
            for (i_carry = 0; i_carry < 2; i_carry = i_carry + 1) begin
                carry_in = i_carry[0];
                // ADD
                op = ADD;

                // 0 + 0
                a = 8'h0;
                b = 8'h0;
                #1
                assert(result == 8'h00);
                assert(flags == 4'b0001);

                // f + 2
                a = 8'hf;
                b = 8'h2;
                #1
                assert(result == 8'h11);
                assert(flags == 4'b0000);

                // ff + 2
                a = 8'hff;
                b = 8'h02;
                #1
                assert(result == 8'h01);
                assert(flags == 4'b0010);

                // 7f + 2
                a = 8'h7f;
                b = 8'h02;
                #1
                assert(result == 8'h81);
                assert(flags == 4'b1100);

                // 8f + 2
                a = 8'h8f;
                b = 8'h02;
                #1
                assert(result == 8'h91);
                assert(flags == 4'b0100);

                // ff + ff
                a = 8'hff;
                b = 8'hff;
                #1
                assert(result == 8'hfe);
                assert(flags == 4'b0110);
            end
        end

        invert = 1'b0;
        // carry-independent
        for (i_carry = 0; i_carry < 2; i_carry = i_carry + 1) begin
            carry_in = i_carry[0];
            // SUB
            op = SUB;

            // 0 - 0
            a = 8'h0;
            b = 8'h0;
            #1
            assert(result == 8'h00);
            assert(flags == 4'b0001);

            // 5 - a
            a = 8'h5;
            b = 8'ha;
            #1
            assert(result == 8'hfb);
            assert(flags == 4'b0110);

            // 10 - 1
            a = 8'h10;
            b = 8'h01;
            #1
            assert(result == 8'h0f);
            assert(flags == 4'b0000);

            // 10 - ff
            a = 8'h10;
            b = 8'hff;
            #1
            assert(result == 8'h11);
            assert(flags == 4'b0010);

            // 70 - ef
            a = 8'h70;
            b = 8'hef;
            #1
            assert(result == 8'h81);
            assert(flags == 4'b1110);
        end

        invert = 1'b0;
        op = ADC;
        a = 8'h7f;
        b = 8'h00;
        carry_in = 1'b1;
        #1
        assert(result == 8'h80);
        assert(flags == 4'b1100);

        // test everything
        for (i_a = 0; i_a < 256; i_a = i_a + 1) begin
            for (i_b = 0; i_b < 256; i_b = i_b + 1) begin
                for (i_carry = 0; i_carry < 2; i_carry = i_carry + 1) begin
                    for (i_invert = 0; i_invert < 2; i_invert = i_invert + 1) begin
                        invert = i_invert;

                        a = i_a[7:0];
                        b = i_b[7:0];
                        carry_in = i_carry[0];

                        op = ADD;
                        #1
                        assert(result == ((i_a + i_b) & 8'hff));
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);
                        assert(flags[1] == ((i_a + i_b) & 9'h100) >> 8);
                        assert(flags[3] == ((i_a[7] == i_b[7]) & (i_a[7] != result[7])));

                        op = ADC;
                        #1
                        assert(result == ((i_a + i_b + carry_in) & 8'hff));
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);
                        assert(flags[1] == ((i_a + i_b + i_carry) & 9'h100) >> 8);
                        assert(flags[3] == ((i_a[7] == i_b[7]) & (i_a[7] != result[7])));

                        op = SUB;
                        #1
                        assert(result == ((i_a - i_b) & 8'hff));
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);
                        assert(flags[1] == ((i_a - i_b) & 9'h100) >> 8);
                        assert(flags[3] == ((i_a[7] != i_b[7]) & (i_a[7] != result[7])));

                        op = SBB;
                        #1
                        assert(result == ((i_a - i_b - carry_in) & 8'hff));
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);
                        assert(flags[1] == ((i_a - i_b - i_carry) & 9'h100) >> 8);
                        assert(flags[3] == ((i_a[7] != i_b[7]) & (i_a[7] != result[7])));

                        op = INC;
                        #1
                        assert(result == ((i_a + 1) & 8'hff));
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);
                        assert(flags[1] == ((i_a + 1) & 9'h100) >> 8);
                        assert(flags[3] == (~i_a[7] & result[7]));

                        op = DEC;
                        #1
                        assert(result == ((i_a - 1) & 8'hff));
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);
                        assert(flags[1] == ((i_a - 1) & 9'h100) >> 8);
                        assert(flags[3] == (i_a[7] & ~result[7]));

                        op = SHL;
                        #1
                        assert(result == {i_a[6:0], 1'b0});
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);
                        assert(flags[1] == i_a[7]);

                        op = EXP;
                        #1
                        assert(result == (i_carry ? 8'hff : 8'h00));
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);

                        op = MOV;
                        #1
                        assert(result == i_b);

                        op = NOT;
                        #1
                        assert(result == (~i_a & 8'hff));
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);

                        op = NEG;
                        #1
                        assert(result == ((256 - i_a) & 8'hff));
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);

                        op = AND;
                        #1
                        assert(result == (i_a & i_b));
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);

                        op = OR;
                        #1
                        assert(result == (i_a | i_b));
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);

                        op = XOR;
                        #1
                        assert(result == (i_a ^ i_b));
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);

                        op = SHR;
                        #1
                        assert(result == {1'b0, i_a[7:1]});
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);
                        assert(flags[1] == i_a[0]);

                        op = SAR;
                        #1
                        assert(result == {i_a[7], i_a[7:1]});
                        assert(flags[0] == (result == 0));
                        assert(flags[2] == result[7]);
                        assert(flags[1] == i_a[0]);
                    end
                end
            end
        end
    end
endmodule
