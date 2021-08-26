alias odd="open ~/Library/Developer/Xcode/DerivedData/"
# gemi xcode-install

## Xcode
alias oax="open -a Xcode.app ."
alias oaxb="open -a Xcode-beta.app ."
alias oas="open -a Simulator"
alias oaai="open -a Accessibility\ Inspector"
alias oacm="open -a Create\ ML"
alias oafm="open -a FileMerge"
alias oai="open -a Instruments"
alias oarc="open -a RealityComposer"
alias shd="instruments -s devices"
alias kx="kill $(ps aux | grep 'Xcode' | awk '{print $2}')"

#### Xcode ####

# List active Xcode version
alias xcvxs="xcversion selected"

# List installed Xcode versions	
alias xcvx="xcversion installed"

# List available Xcode versions	
alias xcvxl="xcversion list"

# Install Xcode version	
alias xcvxi="xcversion install "

# Activate Xcode version*	
alias xcvxa="xcversion select --symlink "

# Select the specified Xcode version	
alias xcvxsi="xcversion select "

# Uninstall Xcode version	
alias xcvxu="xcversion uninstall "

#### Simulator ####

# Install cli tools	
alias xcvct="xcversion install-cli-tools"

# List available simulators	
alias xcvs="xcversion simulators"

# List all available device with there Ids
xcsl() {
	xcrun simctl list;
}

# Open a device and start debug
alias oasd="/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/Contents/MacOS/Simulator -CurrentDeviceUDID "

# Parse Device IDs


# Install simulator
xcvsi() {
  xcversion simulators --install="$@";
}