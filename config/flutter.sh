## Path to Flutter SDK 
FLUTTER_SDK=$SHARED_PATH/_Flutter/bin

## Flutter cache
PUB_CACHE_BIN=$HOME/.pub-cache/bin

## Dart Path
DART_PATH=$FLUTTER_SDK/cache/dart-sdk/bin
export PATH=$PATH:$FLUTTER_SDK:$PUB_CACHE_BIN:$DART_PATH

## For hoster packages : https://dart.dev/tools/pub/environment-variables
# export PUB_HOSTED_URL=http://localhost:8080