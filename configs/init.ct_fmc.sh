#!/system/bin/sh
# Copyright (c) 2009-2010, ZTE Corp. All rights reserved.
# *** ct-fmc init comes here ****
################################################################################################################
#when       who         		where,									what, 		 why
#2012-02-02 zhanglei    pppd set suid lead cts test fails  ZTE_FMC_ZL_20120202
################################################################################################################
#ZTE_WSH_FMC_101012,begin
busybox mkdir -p /data/data/zte.com.android.ppptunl
chown radio.radio /data/data/zte.com.android.ppptunl
chmod 0777 /data/data/zte.com.android.ppptunl
#mount -r -w -o remount -t yaffs2 mtd@system /system
#chown system.system /system/bin/ppptunl
#chmod 0755 /system/bin/ppptunl
#chmod 0755 /system/bin/pppd
#chmod 0755 /system/etc/ppp/ip-up
#chmod 0755 /system/etc/ppp/ip-down
#chown system.system /system/etc/ppp/kill_pppd_and_ppptunl.sh
#chmod 0755 /system/etc/ppp/kill_pppd_and_ppptunl.sh
#chown system.system /system/etc/ppp/send_signal_to_ppptunl.sh
#chmod 0755 /system/etc/ppp/send_signal_to_ppptunl.sh
#chown system.system /system/etc/ppp/set_pppd_apn.sh
#chmod 0755 /system/etc/ppp/set_pppd_apn.sh
#chown system.system /system/etc/ppp/ppptunl_up.sh
#chmod 0755 /system/etc/ppp/ppptunl_up.sh
#mount yaffs2 mtd@system /system ro remount
#ZTE_WSH_FMC_101012,end