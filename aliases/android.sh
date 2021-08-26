alias scrr="scrcpy -b2M -m800"

# scr toto.mp4
scr() {
  scrcpy --record $@;
}

# Download SDK & SDK Platform Tools (Up to SDK 29)
## OS: windows, linux, macosx
## Revisions : https://developer.android.com/studio/releases/platform-tools
sdkdl() {
  REVISION="$1"
  curl -O "http://dl-ssl.google.com/android/repository/tools_r${REVISION}-macosx.zip";
  curl -O "https://dl.google.com/android/repository/platform-tools_r${REVISION}-darwin.zip"
}