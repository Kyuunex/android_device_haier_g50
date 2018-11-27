# Device tree for Haier G50.

This device also goes by names: Beeline Fast (in Georgia), Haier L54 (in Guatemala), reallytek rlk6735m_65u_c_m0 (in build.prop file)

---

## What I know works:
* Telephony (Calls, Messages)
* Brightness control
* Sound (Headphones, Speakers, Microphone)
* FM Radio
* Sensors (Accelerometer, Light, Proximity)
* Wi-FI (Hotspot untested)
* Bluethooth
* USB (MTP and ADB)
* Camera
* Flashlight

## Issues:
* GPS not working
* LiveDisplay not working
* Offline charging not working

## What I have not tested:
* Whatever you don't see listed above.

---

## Instructions
Downloading sources: (This will take a while)
```
repo init -u git://github.com/LineageOS/android.git -b cm-14.1
curl https://raw.githubusercontent.com/Kyuunex/android_device_haier_g50/cm-14.1/local_manifest.xml > .repo/manifests/local_manifest.xml
mkdir .repo/local_manifests/
ln -s ../manifests/local_manifest.xml .repo/local_manifests/local_manifest.xml
repo sync
```

After that, we need to apply some patches. In `device/haier/g50/patches` folder, you run:
```
source apply-patches.sh
```

And finally, we actually build it: (This will take a while)
```
source build/envsetup.sh
brunch g50
```