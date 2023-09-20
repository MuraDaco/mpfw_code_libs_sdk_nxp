#   *******************************************************************************
#   
#   mpfw / fw2 - Multi Platform FirmWare FrameWork
#   Copyright (C) (2023) Marco Dau
#   
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Affero General Public License as published
#   by the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#   
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU Affero General Public License for more details.
#   
#   You should have received a copy of the GNU Affero General Public License
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.
#   
#   You can contact me by the following email address
#   marco <d o t> ing <d o t> dau <a t> gmail <d o t> com
#   
#   *******************************************************************************
##################################################################################
## _______________________________________________________________________________
## RELATIVE PATH Definitions

##################################################################################
## Relative path from CMakeLists.txt project folder                             ##
##################################################################################

include(${CODE_MAIN_CMAKE_LIBS_SDK_VER_DEF_DIR}/set_class_src_ver.cmake)

set(LIBS_SDK_PLATFORM_SRC_DIR                  ${LIBS_SDK_PLATFORM_DIR}/src/v_${SDK_PLATFORM_LIB_VER}              )

set(SDK_NXP_AMAZON_FREERTOS_DIR                 amazon-freertos                 )
set(SDK_NXP_AMAZON_FREERTOS_KERNEL_DIR          amazon-freertos/freertos_kernel )
set(SDK_NXP_BOARD_DIR                           board                           )
set(SDK_NXP_CMSIS_DIR                           CMSIS                           )
set(SDK_NXP_COMPONENT_DIR                       component                       )
set(SDK_NXP_COMPONENT_LIST_DIR                  component/lists                 )
set(SDK_NXP_COMPONENT_SERIAL_DIR                component/serial_manager        )
set(SDK_NXP_COMPONENT_UART_DIR                  component/uart                  )
set(SDK_NXP_DEVICE_DIR                          device                          )
set(SDK_NXP_DRIVERS_DIR                         drivers                         )
set(SDK_NXP_STARTUP_DIR                         startup                         )
set(SDK_NXP_UTILITIES_DIR                       utilities                       )
set(SDK_NXP_WRAPPER_DIR                         wrapper                         )


set(CODE_DIR_LIB_SDK_NXP_INCLUDE
    ${SDK_PLATFORM_CONF_DIR}

    ${LIBS_SDK_PLATFORM_SRC_DIR}/${SDK_NXP_AMAZON_FREERTOS_KERNEL_DIR}/include
    ${LIBS_SDK_PLATFORM_SRC_DIR}/${SDK_NXP_AMAZON_FREERTOS_KERNEL_DIR}/portable/GCC/ARM_CM4F
    ${LIBS_SDK_PLATFORM_SRC_DIR}/${SDK_NXP_BOARD_DIR}
    ${LIBS_SDK_PLATFORM_SRC_DIR}/${SDK_NXP_CMSIS_DIR}
    ${LIBS_SDK_PLATFORM_SRC_DIR}/${SDK_NXP_COMPONENT_LIST_DIR}
    ${LIBS_SDK_PLATFORM_SRC_DIR}/${SDK_NXP_COMPONENT_SERIAL_DIR}
    ${LIBS_SDK_PLATFORM_SRC_DIR}/${SDK_NXP_COMPONENT_UART_DIR}
    ${LIBS_SDK_PLATFORM_SRC_DIR}/${SDK_NXP_DEVICE_DIR}
    ${LIBS_SDK_PLATFORM_SRC_DIR}/${SDK_NXP_DRIVERS_DIR}
    ${LIBS_SDK_PLATFORM_SRC_DIR}/${SDK_NXP_STARTUP_DIR}
    ${LIBS_SDK_PLATFORM_SRC_DIR}/${SDK_NXP_UTILITIES_DIR}
    ${LIBS_SDK_PLATFORM_SRC_DIR}/${SDK_NXP_WRAPPER_DIR}
    ${LIBS_SDK_PLATFORM_SRC_DIR}
    
)

set(CODE_DIR_LIB_SDK_PLATFORM_INCLUDE    ${CODE_DIR_LIB_SDK_NXP_INCLUDE})

