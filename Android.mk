##******************************************##
#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
##******************************************##
LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),RM6785)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
