# Author: William Lam
# Created Date: 11/17/2008
# http://www.virtuallyghetto.com/
# https://github.com/lamw/ghettoVCB
# http://communities.vmware.com/docs/DOC-8760

##################################################################
#                   <trick>
##################################################################

set -- "${@}" "-f" "${@}" "/tmp/vms.list"

##################################################################
#                   </trick>
##################################################################
LAST_MODIFIED_DATE=2019_01_06
VERSION=4

# directory that all VM backups should go (e.g. /vmfs/volumes/SAN_LUN1/mybackupdir)
VM_BACKUP_VOLUME=/vmfs/volumes/backup/daily

# Format output of VMDK backup
# zeroedthick
# 2gbsparse
# thin
# eagerzeroedthick
DISK_BACKUP_FORMAT=thin

# Number of backups for a given VM before deleting
VM_BACKUP_ROTATION_COUNT=2

# Shutdown guestOS prior to running backups and power them back on afterwards
# This feature assumes VMware Tools are installed, else they will not power down and loop forever
# 1=on, 0 =off
POWER_VM_DOWN_BEFORE_BACKUP=0

# enable shutdown code 1=on, 0 = off
ENABLE_HARD_POWER_OFF=0

# if the above flag "ENABLE_HARD_POWER_OFF "is set to 1, then will look at this flag which is the # of iterations
# the script will wait before executing a hard power off, this will be a multiple of 60seconds
# (e.g) = 3, which means this will wait up to 180seconds (3min) before it just powers off the VM
ITER_TO_WAIT_SHUTDOWN=3

# Number of iterations the script will wait before giving up on powering down the VM and ignoring it for backup
# this will be a multiple of 60 (e.g) = 5, which means this will wait up to 300secs (5min) before it gives up
POWER_DOWN_TIMEOUT=5

# enable compression with gzip+tar 1=on, 0=off
ENABLE_COMPRESSION=0

# Include VMs memory when taking snapshot
VM_SNAPSHOT_MEMORY=0
................................................
................................................
................................................
