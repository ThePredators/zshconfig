# Flutter
alias fr="flutter run -d all --verbose"

alias frm="flutter run -d macos"
alias frl="flutter run -d linux"
alias frw="flutter run -d windows"
alias frc="flutter run -d chrome"

alias fbi="flutter build ios"
alias fbd="flutter build android"
alias fbw="flutter build web"
alias fbm="flutter build macos"
alias fbl="flutter build linux"
alias fbw="flutter build windows"

alias fem="flutter config --enable-macos-desktop"  
alias fel="flutter config --enable-linux-desktop"
alias few="flutter config --enable-windows-desktop"

## Add missing support platforms
alias fcr="flutter create ."

alias fpg="flutter pub get"
alias fd="flutter doctor"
alias fc="flutter clean"
alias fa="flutter analyze"
alias fcb="flutter create bug"
alias fde="flutter devices"

alias fdta="flutter pub global activate devtools"
alias fdtl="flutter pub global run devtools"
alias fdtd="open -a Google\ Chrome.app http://localhost:9100"

## Create Flutter plugin
flcp() {
  ORG="$1"
  PLUG_NAME="$2"
  flutter create --org $ORG --template=plugin --platforms=android,ios -i swift -a kotlin $PLUG_NAME 
}
alias fppdr="flutter pub publish --dry-run"
alias fpp="flutter pub publish --force"

## stable, beta, dev, and master
alias fcs="flutter channel stable"
alias fcb="flutter channel beta"
alias fp="flutter upgrade" 
alias fpip="flutter pub upgrade"

# android, ios, web
# alias fap="flutter create -t plugin --platforms"

## Flutter support all desktop platforms
fleap() {
  flutter config --enable-windows-desktop
  flutter config --enable-macos-desktop
  flutter config --enable-linux-desktop
}

## Create Custom Apps
flc() {
  ORG="$1"
  PLUG_NAME="$2"
  flutter create --org $ORG --platforms=android,ios -i swift -a kotlin $PLUG_NAME 
}

flcall() {
  ORG="$1"
  PLUG_NAME="$2"
  flutter create --org $ORG --platforms=android,ios,web -i swift -a kotlin $PLUG_NAME 
}