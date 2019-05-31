#/bin/bash
d="$(date '+%Y-%m-%d')"
for i in {101..117}; do scp /root/backup-esxi-vms/vms/vms-esxi-$i.list  root@10.10.2.$i:/tmp/vms.list;ssh root@10.10.2.$i 'sh -s' < /root/backup-esxi-vms/ghettoVCB/ghettoVCB-daily.sh >> /root/backup-esxi-vms/logs/$d-daily.log;done
