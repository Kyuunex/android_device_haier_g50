# Device tree for Haier G50.

This device also goes by names: Beeline Fast (in Georgia), Haier L54 (in Guatemala), reallytek rlk6735m_65u_c_m0 (in build.prop file) and HM-G551-FL as actual model number.

---

## What I know works:
* Telephony (Calls, Messages)
* Brightness control
* Sound (Headphones, Speakers, Microphone)
* FM Radio
* Sensors (Accelerometer, Light, Proximity)
* Wi-FI
* Bluethooth
* USB (MTP and ADB)
* Camera
* Flashlight

## Issues:
* GPS not working
* LiveDisplay not working
* Offline charging not working
* Wrong resolutions in Camera
* Video Recording does not work
* 3DMark crashes at the end
* Devices fail to connect to the wifi hotspot

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

After that, we need to apply some patches.
```
cd device/haier/g50/patches
source apply-patches.sh
```

And finally, we actually build it: (This will take a while)
```
source build/envsetup.sh
brunch g50
```

[Here is the device tree I used as a template](https://github.com/darklord4822/android_device_lenovo_P1m)
