#pragma once
#include <fat/types.h>
#include <fat/error.h>
#include <last_error.h>

#define SYSCALL_OPEN 0u8
#define SYSCALL_READ 1u8
#define SYSCALL_WRITE 2u8
#define SYSCALL_CLOSE 3u8
#define SYSCALL_TRUNCATE 4u8
#define SYSCALL_SEEK_END 5u8
#define SYSCALL_GET_SIZE 6u8
#define SYSCALL_GET_NEXT_DIR_ENTRY 8u8
#define SYSCALL_MOUNT 9u8

import u32 syscall(u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6, u32 arg7);

import u8 open(u8 *path, u8 mode);

import u16 read(u8 fd, u8 *buf, u16 len);

import u16 write(u8 fd, u8 *data, u16 len);

import u8 close(u8 fd);

import u8 truncate(u8 fd);

import u8 seek_end(u8 fd);

import u32 get_size(u8 fd);

import u8 get_next_dir_entry(u8 fd, struct FatDirEntry *result, u8 attr_skip_mask);

import u8 mount();
