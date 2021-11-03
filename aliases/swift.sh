alias spi="swift package init"
alias sb="swift build"
alias st="swift test"
alias sbe="swift package init --type executable"
alias sr="swift run"
alias spmc="open ~/Library/Caches/org.swift.swiftpm/repositories"

spc() {
	mkdir $@ && cd $@ && spi;
}

## Template : https://github.com/fulldecent/swift5-module-template
# smtc lbs_cloud_service_foriOS
smtc() {
	MODULE_PATH="/Users/$(whoami)/_zshconfig/scripts/swift5-module-tmpl/"
	export SMT_PROJECT_NAME="$1"
	export SMT_COM_AN_ORGANIZATION_IDENTIFIER="com.aisin.$1"
	export SMT_ORGANIZATION_NAME="aisin"
	export SMT_AUTHOR_NAME="none"
	export SMT_TODAYS_DATE="Sep 2, 2021"
	export SMT_TODAYS_YEAR="2021"
	export SMT_GITHUB_USERNAME="none"
	$MODULE_PATH"configure";
	open $MODULE_PATH"OUTPUT";
	rm $MODULE_PATH"OUTPUT/"$SMT_PROJECT_NAME"/CHANGELOG.md";
	rm $MODULE_PATH"OUTPUT/"$SMT_PROJECT_NAME"/.travis.yml";
	rm $MODULE_PATH"OUTPUT/"$SMT_PROJECT_NAME"/LICENSE";
	rm $MODULE_PATH"OUTPUT/"$SMT_PROJECT_NAME"/CONTRIBUTING.md";
	rm $MODULE_PATH"OUTPUT/"$SMT_PROJECT_NAME"/README.md";
}

## sdoc LBSCloudService Sources/LBSCloudService Documentation
sdoc() {
	swift-doc generate $2 --module-name $1 --output $3 --format html;
}

## jazzy_ios 15.0
jazzy_ios() {
    jazzy -b -Xswiftc,-sdk,-Xswiftc,`xcrun --sdk iphonesimulator --show-sdk-path`,-Xswiftc,-target,-Xswiftc,x86_64-apple-ios"$1"-simulator
}
