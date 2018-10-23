include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = WAShareSheetFix
WAShareSheetFix_FILES = wssRootListController.m
WAShareSheetFix_INSTALL_PATH = /Library/PreferenceBundles
WAShareSheetFix_FRAMEWORKS = UIKit
WAShareSheetFix_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/WAShareSheetFix.plist$(ECHO_END)
