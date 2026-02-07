# Proprietary Vendor Blobs for BLU Bold N2

Device: BLU Bold N2
Codename: bold_n2
Platform: MediaTek MT6833 (Dimensity 810)

## Source

Extracted from stock firmware: BOLD_N0050UU_V11.0.04.04_GENERIC_20220914_2257
Vendor build properties: see `proprietary/build.prop` (ro.vendor.mediatek.version.release=alps-mp-r0.mp3-V2.77_P21)

## Contents

This vendor tree contains:
- Hardware Abstraction Layers (HALs) under proprietary/lib and proprietary/lib64 and proprietary/lib/hw
- Vendor binaries and daemons under proprietary/bin and proprietary/bin/hw
- Firmware and binary blobs under proprietary/firmware and proprietary/odm
- VINTF manifests and SELinux contexts under proprietary/etc

## Major blobs and purpose

- Camera libraries (libCamera_*, camera HALs) — image capture, ISP tuning and camera HAL implementation.
- Audio HALs (android.hardware.audio.*) and libpowerhal.so — audio routing, power management for vendor-specific audio features.
- RIL and modem helpers (librilmtk*, ccci_*, netdagent) — telephony interface and modem control.
- Wi‑Fi/BT firmware and HALs (wmt, mt663*, vendor wifi/firmware) — wireless connectivity blobs and firmware.
- DRM & Widevine components (android.hardware.drm@1.3-service, clearkey/widevine) — protected media playback.
- Neuralnetworks / APU libraries (libarmnn_ndk.mtk.so, apuware) — vendor NN accelerators and drivers.
- Fingerprint, sensor, and other vendor HALs — device security and sensor stacks.

## Dependency check (quick)

I scanned vendor libraries for vendor.* dependencies and verified matching vendor .so files exist in proprietary/lib and proprietary/lib64. No missing vendor.* dependencies were found.

## Optimized makefile

An example optimized makefile is included as `vendor-blobs-optimized.mk` which enumerates the primary directories and files to install; prefer it when you want a slim vendor partition rather than copying all files.

## Sources & versions

Primary source: stock firmware image BOLD_N0050UU_V11.0.04.04_GENERIC_20220914_2257.
Reported vendor platform/version in build.prop: ro.vendor.mediatek.platform=MT6833 and ro.vendor.mediatek.version.release=alps-mp-r0.mp3-V2.77_P21.

## Extraction and reproducibility

Use the provided extraction helper at the repository root: `extract_vendor_blobs.sh`.
- Ensure the stock firmware is mounted or extracted to the path referenced in that script (`VENDOR_MOUNT`).
- The device-specific file list is at: `../android_device_blu_bold_n2/proprietary-files.txt` (used by the script).

Example:
1) Edit `extract_vendor_blobs.sh` to point VENDOR_MOUNT to your unpacked stock firmware or an adb pull location.
2) Run: `./extract_vendor_blobs.sh` (requires sudo for file copy in current script).

## Extraction tips

- Prefer extracting only files listed in `proprietary-files.txt` to avoid unnecessary files.
- Double-check `proprietary/etc/vintf/manifest*.xml` and `proprietary/etc/selinux/*` files are present for HAL bindings.

## License

These files remain proprietary; do not redistribute them outside of allowed use for building LineageOS for this device.
