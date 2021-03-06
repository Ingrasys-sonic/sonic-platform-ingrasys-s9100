#!/bin/bash
# Copyright (C) 2017 Ingrasys, Inc.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

VERSION="1.0.0"
TRUE=200
FALSE=404

TYPE=${1}
PORT=${2}

#QSFP Optical
function _qsfp_optical_si_set {
    case ${PORT} in
        0)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce0 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x39;phy ce0 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x37;phy ce0 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0xF AMS_TX_DRIVERMODE=0x0;phy ce0 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x39;"
            bcmcmd "phy ce0 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x37;phy ce0 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0;phy ce0 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x35;phy ce0 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x37"
            bcmcmd "phy ce0 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x9 AMS_TX_DRIVERMODE=0x0;phy ce0 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x30;phy ce0 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x40;phy ce0 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0xF AMS_TX_DRIVERMODE=0x0"
        ;;
        1)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce1 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x3E;phy ce1 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x32;phy ce1 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0xF AMS_TX_DRIVERMODE=0x0;phy ce1 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x38"
            bcmcmd "phy ce1 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x38;phy ce1 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0xE AMS_TX_DRIVERMODE=0x0;phy ce1 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x33;phy ce1 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x3D"
            bcmcmd "phy ce1 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x9 AMS_TX_DRIVERMODE=0x0;phy ce1 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x35;phy ce1 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x3B;phy ce1 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0xE AMS_TX_DRIVERMODE=0x0"
        ;;
        2)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce2 CL93N72_UT_CTL2r CL93N72_TXFIR_POST=0x35;phy ce2 CL93N72_UT_CTL3r CL93N72_TXFIR_MAIN=0x3B;phy ce2 AMS_TX_CTL2r AMS_TX_AMP_CTL=0xB AMS_TX_DRIVERMODE=0x0"
        ;;
        3)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce3 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x3B;phy ce3 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x35;phy ce3 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0xF AMS_TX_DRIVERMODE=0x0;phy ce3 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x35"
            bcmcmd "phy ce3 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x37;phy ce3 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0xC AMS_TX_DRIVERMODE=0x0;phy ce3 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x35;phy ce3 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x37"
            bcmcmd "phy ce3 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0xB AMS_TX_DRIVERMODE=0x0;phy ce3 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x35;phy ce3 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x37;phy ce3 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0xB AMS_TX_DRIVERMODE=0x0"
        ;;
        4)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce4 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x30;phy ce4 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x40;phy ce4 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0;phy ce4 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x33"
            bcmcmd "phy ce4 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x3D;phy ce4 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0;phy ce4 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x30;phy ce4 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x40"
            bcmcmd "phy ce4 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0;phy ce4 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x30;phy ce4 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x40;phy ce4 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0"
        ;;
        5)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce5 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x30;phy ce5 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x40;phy ce5 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0;phy ce5 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x35"
            bcmcmd "phy ce5 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x3B;phy ce5 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0xF AMS_TX_DRIVERMODE=0x0;phy ce5 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x30;phy ce5 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x40"
            bcmcmd "phy ce5 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0;phy ce5 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x30;phy ce5 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x40;phy ce5 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0"
        ;;
        6)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce6 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x30;phy ce6 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x40;phy ce6 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0;phy ce6 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x36"
            bcmcmd "phy ce6 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x3A;phy ce6 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0xC AMS_TX_DRIVERMODE=0x0;phy ce6 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x30;phy ce6 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x40"
            bcmcmd "phy ce6 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0;phy ce6 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x30;phy ce6 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x40;phy ce6 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0"
        ;;
        7)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce7 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x30;phy ce7 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x40;phy ce7 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce7 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x30"
            bcmcmd "phy ce7 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x40;phy ce7 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce7 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x30;phy ce7 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x40"
            bcmcmd "phy ce7 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce7 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x30;phy ce7 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x40;phy ce7 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0"
        ;;
        8)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce8 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x25;phy ce8 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x4B;phy ce8 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce8 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x2C"
            bcmcmd "phy ce8 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x44;phy ce8 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0x9 AMS_TX_DRIVERMODE=0x0;phy ce8 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x25;phy ce8 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x4B"
            bcmcmd "phy ce8 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce8 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x25;phy ce8 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x4B;phy ce8 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0"
        ;;
        9)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce9 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x25;phy ce9 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x4B;phy ce9 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce9 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x2B"
            bcmcmd "phy ce9 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x45;phy ce9 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0x9 AMS_TX_DRIVERMODE=0x0;phy ce9 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x25;phy ce9 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x4B"
            bcmcmd "phy ce9 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce9 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x25;phy ce9 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x4B;phy ce9 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0"
        ;;
        10)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce10 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x25;phy ce10 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x4B;phy ce10 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce10 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x2B"
            bcmcmd "phy ce10 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x45;phy ce10 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0x7 AMS_TX_DRIVERMODE=0x0;phy ce10 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x25;phy ce10 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x4B"
            bcmcmd "phy ce10 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce10 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x25;phy ce10 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x4B;phy ce10 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0"
        ;;
        11)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce11 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x25;phy ce11 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x4B;phy ce11 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce11 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x2C"
            bcmcmd "phy ce11 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x44;phy ce11 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce11 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x25;phy ce11 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x4B"
            bcmcmd "phy ce11 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce11 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x25;phy ce11 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x4B;phy ce11 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0"
        ;;
        12)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce12 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x25;phy ce12 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x4B;phy ce12 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce12 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x25"
            bcmcmd "phy ce12 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x4B;phy ce12 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0x5 AMS_TX_DRIVERMODE=0x0;phy ce12 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x25;phy ce12 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x4B"
            bcmcmd "phy ce12 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce12 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x25;phy ce12 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x4B;phy ce12 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0"
        ;;
        13)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce13 CL93N72_UT_CTL2r CL93N72_TXFIR_POST=0x25;phy ce13 CL93N72_UT_CTL3r CL93N72_TXFIR_MAIN=0x4B;phy ce13 AMS_TX_CTL2r AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0"
        ;;
        14)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce14 CL93N72_UT_CTL2r CL93N72_TXFIR_POST=0x25;phy ce14 CL93N72_UT_CTL3r CL93N72_TXFIR_MAIN=0x4B;phy ce14 AMS_TX_CTL2r AMS_TX_AMP_CTL=0x7 AMS_TX_DRIVERMODE=0x0"
        ;;
        15)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce15 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x25;phy ce15 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x4B;phy ce15 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0x7 AMS_TX_DRIVERMODE=0x0;phy ce15 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x25"
            bcmcmd "phy ce15 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x4B;phy ce15 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0x5 AMS_TX_DRIVERMODE=0x0;phy ce15 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x25;phy ce15 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x4B"
            bcmcmd "phy ce15 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x7 AMS_TX_DRIVERMODE=0x0;phy ce15 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x25;phy ce15 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x4B;phy ce15 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x7 AMS_TX_DRIVERMODE=0x0"
        ;;
        16)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce16 CL93N72_UT_CTL2r CL93N72_TXFIR_POST=0x27;phy ce16 CL93N72_UT_CTL3r CL93N72_TXFIR_MAIN=0x49;phy ce16 AMS_TX_CTL2r AMS_TX_AMP_CTL=0x4 AMS_TX_DRIVERMODE=0x0"
        ;;
        17)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce17 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x25;phy ce17 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x4B;phy ce17 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce17 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x30"
            bcmcmd "phy ce17 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x40;phy ce17 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0xF AMS_TX_DRIVERMODE=0x0;phy ce17 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x30;phy ce17 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x40"
            bcmcmd "phy ce17 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0xF AMS_TX_DRIVERMODE=0x0;phy ce17 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x30;phy ce17 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x40;phy ce17 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0xF AMS_TX_DRIVERMODE=0x0"
        ;;
        18)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce18 CL93N72_UT_CTL2r CL93N72_TXFIR_POST=0x20;phy ce18 CL93N72_UT_CTL3r CL93N72_TXFIR_MAIN=0x50;phy ce18 AMS_TX_CTL2r AMS_TX_AMP_CTL=0x2 AMS_TX_DRIVERMODE=0x0"
        ;;
        19)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce19 CL93N72_UT_CTL2r CL93N72_TXFIR_POST=0x20;phy ce19 CL93N72_UT_CTL3r CL93N72_TXFIR_MAIN=0x50;phy ce19 AMS_TX_CTL2r AMS_TX_AMP_CTL=0x2 AMS_TX_DRIVERMODE=0x0"
        ;;
        20)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce20 CL93N72_UT_CTL2r CL93N72_TXFIR_POST=0x20;phy ce20 CL93N72_UT_CTL3r CL93N72_TXFIR_MAIN=0x50;phy ce20 AMS_TX_CTL2r AMS_TX_AMP_CTL=0x2 AMS_TX_DRIVERMODE=0x0"
        ;;
        21)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce21 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x17;phy ce21 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x59;phy ce21 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0x4 AMS_TX_DRIVERMODE=0x0;phy ce21 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x17"
            bcmcmd "phy ce21 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x59;phy ce21 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0x2 AMS_TX_DRIVERMODE=0x0;phy ce21 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x20;phy ce21 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x50"
            bcmcmd "phy ce21 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x2 AMS_TX_DRIVERMODE=0x0;phy ce21 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x20;phy ce21 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x50;phy ce21 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x2 AMS_TX_DRIVERMODE=0x0"
        ;;
        22)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce22 CL93N72_UT_CTL2r CL93N72_TXFIR_POST=0x25;phy ce22 CL93N72_UT_CTL3r CL93N72_TXFIR_MAIN=0x4B;phy ce22 AMS_TX_CTL2r AMS_TX_AMP_CTL=0x7 AMS_TX_DRIVERMODE=0x0"
        ;;
        23)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce23 CL93N72_UT_CTL2r CL93N72_TXFIR_POST=0x25;phy ce23 CL93N72_UT_CTL3r CL93N72_TXFIR_MAIN=0x4B;phy ce23 AMS_TX_CTL2r AMS_TX_AMP_CTL=0x7 AMS_TX_DRIVERMODE=0x0"
        ;;
        24)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce24 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x23;phy ce24 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x4D;phy ce24 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce24 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x29"
            bcmcmd "phy ce24 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x47;phy ce24 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce24 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x29;phy ce24 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x47"
            bcmcmd "phy ce24 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x4 AMS_TX_DRIVERMODE=0x0;phy ce24 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x29;phy ce24 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x47;phy ce24 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x4 AMS_TX_DRIVERMODE=0x0"
        ;;
        25)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce25 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x29;phy ce25 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x47;phy ce25 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce25 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x29"
            bcmcmd "phy ce25 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x47;phy ce25 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce25 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x29;phy ce25 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x47"
            bcmcmd "phy ce25 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x4 AMS_TX_DRIVERMODE=0x0;phy ce25 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x29;phy ce25 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x47;phy ce25 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x4 AMS_TX_DRIVERMODE=0x0"
        ;;
        26)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce26 CL93N72_UT_CTL2r CL93N72_TXFIR_POST=0x30;phy ce26 CL93N72_UT_CTL3r CL93N72_TXFIR_MAIN=0x40;phy ce26 AMS_TX_CTL2r AMS_TX_AMP_CTL=0x9 AMS_TX_DRIVERMODE=0x0"
        ;;
        27)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce27 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x30;phy ce27 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x40;phy ce27 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0x9 AMS_TX_DRIVERMODE=0x0;phy ce27 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x30"
            bcmcmd "phy ce27 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x40;phy ce27 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0x9 AMS_TX_DRIVERMODE=0x0;phy ce27 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x30;phy ce27 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x40"
            bcmcmd "phy ce27 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0xB AMS_TX_DRIVERMODE=0x0;phy ce27 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x30;phy ce27 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x40;phy ce27 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x9 AMS_TX_DRIVERMODE=0x0"
        ;;
        28)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce28 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x30;phy ce28 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x40;phy ce28 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0;phy ce28 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x30"
            bcmcmd "phy ce28 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x40;phy ce28 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0;phy ce28 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x30;phy ce28 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x40"
            bcmcmd "phy ce28 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x9 AMS_TX_DRIVERMODE=0x0;phy ce28 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x30;phy ce28 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x40;phy ce28 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x9 AMS_TX_DRIVERMODE=0x0"
        ;;
        29)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce29 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x30;phy ce29 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x40;phy ce29 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0;phy ce29 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x30"
            bcmcmd "phy ce29 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x40;phy ce29 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0x9 AMS_TX_DRIVERMODE=0x0;phy ce29 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x30;phy ce29 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x40"
            bcmcmd "phy ce29 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x9 AMS_TX_DRIVERMODE=0x0;phy ce29 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x30;phy ce29 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x40;phy ce29 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x9 AMS_TX_DRIVERMODE=0x0"
        ;;
        30)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce30 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x30;phy ce30 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x40;phy ce30 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0;phy ce30 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x30"
            bcmcmd "phy ce30 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x40;phy ce30 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0xF AMS_TX_DRIVERMODE=0x0;phy ce30 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x30;phy ce30 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x40"
            bcmcmd "phy ce30 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0;phy ce30 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x30;phy ce30 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x40;phy ce30 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0xA AMS_TX_DRIVERMODE=0x0"
        ;;
        31)
            bcmcmd "phy control ce${PORT} lt=0"
            bcmcmd "phy ce31 CL93N72_UT_CTL2r.0 CL93N72_TXFIR_POST=0x39;phy ce31 CL93N72_UT_CTL3r.0 CL93N72_TXFIR_MAIN=0x37;phy ce31 AMS_TX_CTL2r.0 AMS_TX_AMP_CTL=0xC AMS_TX_DRIVERMODE=0x0;phy ce31 CL93N72_UT_CTL2r.1 CL93N72_TXFIR_POST=0x39"
            bcmcmd "phy ce31 CL93N72_UT_CTL3r.1 CL93N72_TXFIR_MAIN=0x37;phy ce31 AMS_TX_CTL2r.1 AMS_TX_AMP_CTL=0xC AMS_TX_DRIVERMODE=0x0;phy ce31 CL93N72_UT_CTL2r.2 CL93N72_TXFIR_POST=0x30;phy ce31 CL93N72_UT_CTL3r.2 CL93N72_TXFIR_MAIN=0x40"
            bcmcmd "phy ce31 AMS_TX_CTL2r.2 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0;phy ce31 CL93N72_UT_CTL2r.3 CL93N72_TXFIR_POST=0x30;phy ce31 CL93N72_UT_CTL3r.3 CL93N72_TXFIR_MAIN=0x40;phy ce31 AMS_TX_CTL2r.3 AMS_TX_AMP_CTL=0x8 AMS_TX_DRIVERMODE=0x0"
        ;;
        *) 
            echo "Unknown Port"
            return
        ;;
    esac
}

function _qsfp_dac_si_set {
    case ${PORT} in
        0)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        1)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        2)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        3)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        4)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        5)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        6)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        7)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        8)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        9)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        10)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        11)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        12)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        13)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        14)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        15)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        16)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        17)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        18)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        19)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        20)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        21)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        22)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        23)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        24)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        25)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        26)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        27)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        28)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        29)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        30)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        31)
            bcmcmd "phy control ce${PORT} lt=0"
        ;;
        *) 
            echo "Unknown Port"
            return
        ;;
    esac
}

# Help usage function
function _help {
    echo "========================================================="
    echo "# Description: Help Function"
    echo "========================================================="
    echo "----------------------------------------------------"
    echo "EX       : ${0} help"
    echo "         : ${0} optical [0-31]"
    echo "         : ${0} dac [0-31]"
    echo "----------------------------------------------------"
}

#Main Function
function _main {

    if [ "${TYPE}" == "help" ]; then 
        _help
    elif [ "${TYPE}" == "optical" ]; then
        _qsfp_optical_si_set
    elif [ "${TYPE}" == "dac" ]; then
        _qsfp_dac_si_set
    else
        echo "Invalid Parameters, Exit!!!"
        _help
        exit ${FALSE}
    fi
}

_main
