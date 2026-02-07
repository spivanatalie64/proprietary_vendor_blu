Extraction steps for proprietary vendor blobs (BLU Bold N2)

Overview
--------
This document explains how to extract the vendor blobs used by the LineageOS
device tree for BLU Bold N2. The repository already contains an extraction
helper at the repository root: `extract_vendor_blobs.sh` which reads the
file list at `android_device_blu_bold_n2/proprietary-files.txt`.

Prerequisites
-------------
- A copy of the stock firmware image (or a device with ADB access).
- The firmware unpacked or the device mounted under a directory referenced in
  `extract_vendor_blobs.sh` (VENDOR_MOUNT variable).
- `sudo` may be required by the script for copying files; you can modify the
  script to avoid sudo if extracting to user-owned directories.

Steps
-----
1) Unpack the stock firmware (or mount the vendor partition from a device) and
   set the path in `extract_vendor_blobs.sh` (VENDOR_MOUNT).

2) Verify the device-specific file list exists at:
   `android_device_blu_bold_n2/proprietary-files.txt`.

3) Run the extraction script:

   ./extract_vendor_blobs.sh

   The script will copy files listed in `proprietary-files.txt` into
   `vendor/blu/bold_n2/proprietary/`.

4) Inspect `vendor/blu/bold_n2/proprietary/` and commit the blobs you need into
   your vendor repository.

Tips
----
- Prefer extracting only files in `proprietary-files.txt` rather than copying
  an entire vendor partition.
- If additional vendor HAL versions are required (e.g., 32-bit vs 64-bit), add
  them to `proprietary-files.txt` and re-run extraction.
- For reproducibility, note the stock firmware version used; the README records
  the original image name and the vendor build properties.

Support
-------
If you encounter missing dependencies during build, run `readelf -d` on the
problematic .so to list DT_NEEDED entries and verify corresponding vendor
libraries are present under `vendor/blu/bold_n2/proprietary/lib` or `lib64`.
