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
target_link_options(${EXECUTABLE} PRIVATE
    -L${LIBS_SDK_PLATFORM_OBJ_LIB_DIR__FROM_BUILD}/libs                  # di default questa opzione se non presente 
    -nostdlib 
    -Wl,-Map=${PROJECT_NAME}.map
    -Wl,--gc-sections
    -Wl,-print-memory-usage
    -Wl,--sort-section=alignment
    -Wl,--cref
    -mcpu=cortex-m4
    -mfpu=fpv4-sp-d16
    -mfloat-abi=hard
    -mthumb
    -T LPC54608_tst_freertos.ld
    -l:libpower_hardabi.a   # questa opzione è ininfluente, sembra venga ignorata dal linker perchè inserita prima della lista dei file oggetto nel comando di link (arm-none-eabi-ld), vedere il file "... CMakeFiles/TestMarco_cmake.out.dir/link.txt"
                            # per poter inserire questa opzione come ultima del comando di link bisogna usare "target_link_libraries"
)

target_link_libraries(${EXECUTABLE} PRIVATE
    :libpower_hardabi.a
)


# Print executable size
add_custom_command(TARGET ${EXECUTABLE}
    POST_BUILD
    COMMAND arm-none-eabi-size ${EXECUTABLE}
)

# Create hex file
add_custom_command(TARGET ${EXECUTABLE}
    POST_BUILD
    COMMAND arm-none-eabi-objcopy -O ihex ${EXECUTABLE} ${PROJECT_NAME}.hex
    COMMAND arm-none-eabi-objcopy -O binary ${EXECUTABLE} ${PROJECT_NAME}.bin
    COMMAND [ -d ${PLATFORM_ENVIRONMENT_BUILD_DIR} ] || mkdir ${PLATFORM_ENVIRONMENT_BUILD_DIR}
    COMMAND cp ${EXECUTABLE} ${PLATFORM_ENVIRONMENT_BUILD_DIR} 
)

add_custom_command(TARGET ${EXECUTABLE}
    POST_BUILD
    COMMENT "nxp - Platform selected: ${WP_PLATFORM_STR} - Config fw2_lib folder: ${FW2_LIB_CONFIG_DIR} - fw2 cmake files folder: ${LIBS_FW2_CORE_CORE_PRJ_DIR}"
)
