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
