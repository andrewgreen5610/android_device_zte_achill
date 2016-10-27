# Copyright (C) 2016 The CyanogenMod Project
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


# Ramdisk
PRODUCT_COPY_FILES += \
   device/zte/achill/ramdisk/recovery/init.rc:root/init.rc \
   device/zte/achill/ramdisk/sbin/usbconfig:root/sbin/usbconfig \
   device/zte/achill/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
   device/zte/achill/ramdisk/fstab.qcom:root/fstab.qcom \
   device/zte/achill/ramdisk/recovery/init.recovery.qcom.rc:root/init.recovery.qcom.rc \

# Recovery Keys (unsure if needed at the moment)
PRODUCT_COPY_FILES += \
   device/zte/achill/ramdisk/recovery/res/keys:root/res/keys \
   device/zte/achill/ramdisk/recovery/verity_key:root/verity_key
