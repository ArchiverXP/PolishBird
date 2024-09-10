THEOS_DEVICE_IP = 10.0.0.207
TARGET := iphone:clang:latest:11.0
INSTALL_TARGET_PROCESSES = Twitter


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PolishBird

PolishBird_FILES = Tweak.x
PolishBird_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
