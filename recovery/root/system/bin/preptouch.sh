#!/system/bin/sh
#
# Copyright (c) 2019-2020 Martin Dünkelmann
# All rights reserved.
#
# On Linux 4.19 SODP kernels, touchscreen drivers (Clearpad, Synaptics TCM)
# are built-in to the kernel image. Trigger post-probe initialization nodes
# when present.

if [ -e /sys/devices/virtual/input/clearpad/post_probe_start ]; then
    echo 1 > /sys/devices/virtual/input/clearpad/post_probe_start
fi

if [ -e /sys/devices/virtual/input/siw_touch_input/init_late_session ]; then
    echo 1 > /sys/devices/virtual/input/siw_touch_input/init_late_session
fi
