# LVM-VolumeGroup-Virtualizor


1. if your storage is mounted umount it like

 $. **`umount /dev/sda3`**

2. Use pvcreate to create storage

 $ **`pvcreate /dev/sda3`**

3. Create LVM group.

 $ **`vgcreate your_group_name /dev/sda3`**

Example

$ **`vgcreate dopehosting /dev/sda3`**

Then go at virtualizor panel and set storage path "/dev/dopehosting"

"/dev/sda3" is my disk where i'll store server files.
you can find yours with **`fdisk -l`**


# WARNNNNN
I've lost alot of money finding why my server wasn't booting after creating lvm group.

The problem stand here. example if you have one partition lets call it `/dev/dd1` if that is mount to `/home/`
and it's set to `/etc/fstab` now if you umount this and create your lvm group and mount it to a different place
When you will try to reboot your server it may will not boot anymore it will just stuck!
this happens because server will try to use `/dev/dd1` to `/home/` it it's set to `/etc/fstab`

so after creating your LVM group before doing reboot make sure your `/etc/fstab` is right!
