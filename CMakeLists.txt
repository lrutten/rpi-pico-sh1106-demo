cmake_minimum_required(VERSION 3.21)

# initialize the SDK based on PICO_SDK_PATH
# note: this must happen before project()
include(/usr/local/pico-sdk/pico_sdk_init.cmake)
#include(pico_sdk_import.cmake)

project(sh1106-demo)

# initialize the Pico SDK
pico_sdk_init()


if (TARGET tinyusb_device)
    add_executable(sh1106-demo
            sh1106-demo.cpp
            Adafruit_GFX.cpp
            Adafruit_SH1106.cpp
            )

    # pull in common dependencies
    target_link_libraries(sh1106-demo pico_stdlib hardware_i2c)

    # enable usb output, disable uart output
    pico_enable_stdio_usb(sh1106-demo 1)
    pico_enable_stdio_uart(sh1106-demo 0)

    # create map/bin/hex/uf2 file etc.
    pico_add_extra_outputs(sh1106-demo)
elseif(PICO_ON_DEVICE)
    message(WARNING "not building busscan because TinyUSB submodule is not initialized in the SDK")
endif()

