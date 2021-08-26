alias adbss="adb start-server"
alias adbks="adb kill-server"
alias adbiprc="adb reconnect"
alias adbdi="adb disconnect"
alias adbu="adb usb" # tell adb return listenning over USB

timestamp() {
  date +"%T" # current time
}

adbrc() {
  SERIAL=$(adbd)
  adb -s $SERIAL reconnect;
}

# Get Devices Serial Number
adbd() {
  echo $(adb devices) | sed -e "s/List of devices attached//g" | sed -e "s/device//g";
}

# Do a port forwarding From PC to Device
## Params: Port
adbfw() { 
  PORT="$1"
  adb forward tcp:$PORT tcp:$PORT;
  adb tcpip $PORT;
}

# Get Device IP
adbi() {
  adb shell ip route | awk '{print $9}';
}

# Connect to device via IP
## Params: Port
adbiptcp() {
 IP_ADRESS=$(adbi)
 PORT="$1"
 adb tcpip $PORT;
 adb connect $IP_ADRESS;
}

# Get Device Logs for a specific App
## Params: PACKAGE_NAME
adbs() {
  PACKAGE_NAME="$1"
  adb logcat | grep -F "`adb shell ps | grep $PACKAGE_NAME | cut -c10-15`";
}

# Deploy an APK to a Real Device (Using IP)
## We suppose here you are already connected to a device if not run "adbiptcp"
adbipr() {
 PACKAGE_NAME="$1" # ex. fr.freekit.tiktok
 PATH_TO_APK="$2" # ex. /Users/.../toto.apk
 MAIN_ACTIVITY="$3" # ex. SplashScreenActivity
 # Install APP
 adb shell pm uninstall $PACKAGE_NAME
 adb install $PATH_TO_APK
 # Launch App
 adb shell am start -a android.intent.action.MAIN -n $PACKAGE_NAME/.$MAIN_ACTIVITY
}

# Deploy an APK to a Real Device (Using Serial Number)
adbr() {
 SERIAL=$(adbd) # adb devices
 PACKAGE_NAME="$1" # ex. fr.freekit.tiktok
 PATH_TO_APK="$2" # ex. /Users/.../toto.apk
 MAIN_ACTIVITY="$3" # ex. SplashScreenActivity
 # Install APP
 adb -s $SERIAL shell pm uninstall $PACKAGE_NAME
 adb -s $SERIAL install $PATH_TO_APK
 # Launch App
 adb -s $SERIAL shell am start -a android.intent.action.MAIN -n $PACKAGE_NAME/.$MAIN_ACTIVITY
}

# Take screenshot from a device (using Serial Number)
adbsc() {
 SERIAL=$(adbd)
 PIC_NAME=$(timestamp)
 # Take Screen Shot and put on tmp folder
 adb -s $SERIAL shell screencap -p /sdcard/$PIC_NAME.png
 # Pull to output
 adb -s $SERIAL pull /sdcard/$PIC_NAME.png $PWD
 # Clean Tmp Folder
 adb -s $SERIAL shell rm /sdcard/$PIC_NAME.png
}

# Take screenshot from a device (using IP)
adbipsc() {
 PIC_NAME=$(timestamp)
 # Take Screen Shot and put on tmp folder
 adb shell screencap -p /sdcard/$PIC_NAME.png
 # Pull to output
 adb pull /sdcard/$PIC_NAME.png $PWD
 # Clean Tmp Folder
 adb shell rm /sdcard/$PIC_NAME.png
}

# Uninstall an App (from IP)
adbun() {
 PACKAGE_NAME="$1"
 adb shell pm uninstall $PACKAGE_NAME
}

# Uninstall an App
adbuns() {
 SERIAL=$(adbd)
 PACKAGE_NAME="$1"
 adb -s $SERIAL shell pm uninstall $PACKAGE_NAME
}