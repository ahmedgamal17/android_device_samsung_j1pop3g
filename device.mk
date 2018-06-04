# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Init files
PRODUCT_COPY_FILES += \
        device/samsung/j1pop3g/rootdir/init.j1pop3g.rc:root/init.j1pop3g.rc \
        device/samsung/j1pop3g/rootdir/init.j1pop3g_base.rc:root/init.j1pop3g_base.rc \
        device/samsung/j1pop3g/rootdir/init.sc8830.rc:root/init.sc8830.rc \
        device/samsung/j1pop3g/rootdir/init.sc8830.usb.rc:root/init.sc8830.usb.rc \
        device/samsung/j1pop3g/rootdir/init.sc8830_ss.rc:root/init.sc8830_ss.rc \
	device/samsung/j1pop3g/rootdir/ueventd.sc8830.rc:root/ueventd.sc8830.rc \
        device/samsung/j1pop3g/rootdir/init.board.rc:root/init.board.rc \
        device/samsung/j1pop3g/rootdir/init.wifi.rc:root/init.wifi.rc \
        device/samsung/j1pop3g/rootdir/fstab.sc8830:root/fstab.sc8830

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_j1pop3g
PRODUCT_DEVICE := j1pop3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J110H
