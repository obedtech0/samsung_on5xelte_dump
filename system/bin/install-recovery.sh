#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:20238336:9670baf2b3f0ae52d06e7941eb875636bae82b3b; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:18008064:58129006b25d9780b226454bf1a9db254cf4d7aa EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY 9670baf2b3f0ae52d06e7941eb875636bae82b3b 20238336 58129006b25d9780b226454bf1a9db254cf4d7aa:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
