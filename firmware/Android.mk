LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),guacamole)
RADIO_FILES := $(wildcard $(LOCAL_PATH)/*.img)

$(foreach f, $(notdir $(RADIO_FILES)),$(call add-radio-file,$(f)))
endif
