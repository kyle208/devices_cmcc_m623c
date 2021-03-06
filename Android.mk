#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This empty Android.mk file exists to prevent the build system from
# automatically including any other Android.mk files under this directory.
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),m623c)

include device/cmcc/m623c/kernel/AndroidKernel.mk

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

# Create a link for the WCNSS config file, which ends up as a writable
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/prima; \
        mkdir -p $(TARGET_OUT)/lib/modules; \
        ln -sf /system/etc/wifi/WCNSS_qcom_cfg.ini \
        $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_cfg.ini; \
        ln -sf /system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
        $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin; \
        ln -sf /system/lib/modules/pronto/pronto_wlan.ko \
        $(TARGET_OUT)/lib/modules/wlan.ko)

endif
