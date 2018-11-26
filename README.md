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
* Camera (with a `libc` `-fno-stack-protector` hack)
* Flashlight (with a `libc` `-fno-stack-protector` hack)

## Issues:
* GPS not working
* LiveDisplay not working
* Offline charging not working

## What I have not tested:
* Whatever you don't see listed above.

---

## Instructions
Downloading sources:
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

After that we need to manually edit `packages/apps/FMRadio/jni/fmr/libfm_jni.cpp` file, change line:
```cpp
tmp_freq = (int)(freq * 10);        //Eg, 87.5 * 10 --> 875
```
to this
```cpp
tmp_freq = (int)(freq * 100);        //Eg, 87.5 * 10 --> 875
```

And finally, we actually build it:
```
source build/envsetup.sh
brunch g50
```