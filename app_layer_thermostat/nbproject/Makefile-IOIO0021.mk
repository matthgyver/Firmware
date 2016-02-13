#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-IOIO0021.mk)" "nbproject/Makefile-local-IOIO0021.mk"
include nbproject/Makefile-local-IOIO0021.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=IOIO0021
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_v1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_v1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../common/logging.c ../microchip/common/uart2.c ../common/byte_queue.c adc.c digital.c features.c i2c.c icsp.c incap.c main.c pins.c protocol.c pwm.c spi.c timers.c uart.c sequencer.c sequencer_asm.s sequencer_protocol.c field_accessors.s

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1270477542/logging.o ${OBJECTDIR}/_ext/1537399865/uart2.o ${OBJECTDIR}/_ext/1270477542/byte_queue.o ${OBJECTDIR}/adc.o ${OBJECTDIR}/digital.o ${OBJECTDIR}/features.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/icsp.o ${OBJECTDIR}/incap.o ${OBJECTDIR}/main.o ${OBJECTDIR}/pins.o ${OBJECTDIR}/protocol.o ${OBJECTDIR}/pwm.o ${OBJECTDIR}/spi.o ${OBJECTDIR}/timers.o ${OBJECTDIR}/uart.o ${OBJECTDIR}/sequencer.o ${OBJECTDIR}/sequencer_asm.o ${OBJECTDIR}/sequencer_protocol.o ${OBJECTDIR}/field_accessors.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1270477542/logging.o.d ${OBJECTDIR}/_ext/1537399865/uart2.o.d ${OBJECTDIR}/_ext/1270477542/byte_queue.o.d ${OBJECTDIR}/adc.o.d ${OBJECTDIR}/digital.o.d ${OBJECTDIR}/features.o.d ${OBJECTDIR}/i2c.o.d ${OBJECTDIR}/icsp.o.d ${OBJECTDIR}/incap.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/pins.o.d ${OBJECTDIR}/protocol.o.d ${OBJECTDIR}/pwm.o.d ${OBJECTDIR}/spi.o.d ${OBJECTDIR}/timers.o.d ${OBJECTDIR}/uart.o.d ${OBJECTDIR}/sequencer.o.d ${OBJECTDIR}/sequencer_asm.o.d ${OBJECTDIR}/sequencer_protocol.o.d ${OBJECTDIR}/field_accessors.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1270477542/logging.o ${OBJECTDIR}/_ext/1537399865/uart2.o ${OBJECTDIR}/_ext/1270477542/byte_queue.o ${OBJECTDIR}/adc.o ${OBJECTDIR}/digital.o ${OBJECTDIR}/features.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/icsp.o ${OBJECTDIR}/incap.o ${OBJECTDIR}/main.o ${OBJECTDIR}/pins.o ${OBJECTDIR}/protocol.o ${OBJECTDIR}/pwm.o ${OBJECTDIR}/spi.o ${OBJECTDIR}/timers.o ${OBJECTDIR}/uart.o ${OBJECTDIR}/sequencer.o ${OBJECTDIR}/sequencer_asm.o ${OBJECTDIR}/sequencer_protocol.o ${OBJECTDIR}/field_accessors.o

# Source Files
SOURCEFILES=../common/logging.c ../microchip/common/uart2.c ../common/byte_queue.c adc.c digital.c features.c i2c.c icsp.c incap.c main.c pins.c protocol.c pwm.c spi.c timers.c uart.c sequencer.c sequencer_asm.s sequencer_protocol.c field_accessors.s


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-IOIO0021.mk dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_v1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128DA106
MP_LINKER_FILE_OPTION=,--script=../common/dummy.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1270477542/logging.o: ../common/logging.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1270477542" 
	@${RM} ${OBJECTDIR}/_ext/1270477542/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1270477542/logging.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../common/logging.c  -o ${OBJECTDIR}/_ext/1270477542/logging.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1270477542/logging.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/1270477542/logging.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1537399865/uart2.o: ../microchip/common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1537399865" 
	@${RM} ${OBJECTDIR}/_ext/1537399865/uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537399865/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../microchip/common/uart2.c  -o ${OBJECTDIR}/_ext/1537399865/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1537399865/uart2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/1537399865/uart2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1270477542/byte_queue.o: ../common/byte_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1270477542" 
	@${RM} ${OBJECTDIR}/_ext/1270477542/byte_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1270477542/byte_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../common/byte_queue.c  -o ${OBJECTDIR}/_ext/1270477542/byte_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1270477542/byte_queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/1270477542/byte_queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/adc.o: adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.o.d 
	@${RM} ${OBJECTDIR}/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  adc.c  -o ${OBJECTDIR}/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/adc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/digital.o: digital.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/digital.o.d 
	@${RM} ${OBJECTDIR}/digital.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  digital.c  -o ${OBJECTDIR}/digital.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/digital.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/digital.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/features.o: features.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/features.o.d 
	@${RM} ${OBJECTDIR}/features.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  features.c  -o ${OBJECTDIR}/features.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/features.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/features.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/i2c.o: i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.o.d 
	@${RM} ${OBJECTDIR}/i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  i2c.c  -o ${OBJECTDIR}/i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/i2c.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/i2c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/icsp.o: icsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/icsp.o.d 
	@${RM} ${OBJECTDIR}/icsp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  icsp.c  -o ${OBJECTDIR}/icsp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/icsp.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/icsp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/incap.o: incap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/incap.o.d 
	@${RM} ${OBJECTDIR}/incap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  incap.c  -o ${OBJECTDIR}/incap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/incap.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/incap.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/pins.o: pins.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pins.o.d 
	@${RM} ${OBJECTDIR}/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  pins.c  -o ${OBJECTDIR}/pins.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/pins.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/pins.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/protocol.o: protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/protocol.o.d 
	@${RM} ${OBJECTDIR}/protocol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  protocol.c  -o ${OBJECTDIR}/protocol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/protocol.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/protocol.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/pwm.o: pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pwm.o.d 
	@${RM} ${OBJECTDIR}/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  pwm.c  -o ${OBJECTDIR}/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/pwm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/spi.o: spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi.o.d 
	@${RM} ${OBJECTDIR}/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  spi.c  -o ${OBJECTDIR}/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/spi.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/timers.o: timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timers.o.d 
	@${RM} ${OBJECTDIR}/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  timers.c  -o ${OBJECTDIR}/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/timers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/uart.o: uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uart.o.d 
	@${RM} ${OBJECTDIR}/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  uart.c  -o ${OBJECTDIR}/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/uart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sequencer.o: sequencer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sequencer.o.d 
	@${RM} ${OBJECTDIR}/sequencer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sequencer.c  -o ${OBJECTDIR}/sequencer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sequencer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/sequencer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sequencer_protocol.o: sequencer_protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sequencer_protocol.o.d 
	@${RM} ${OBJECTDIR}/sequencer_protocol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sequencer_protocol.c  -o ${OBJECTDIR}/sequencer_protocol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sequencer_protocol.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/sequencer_protocol.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1270477542/logging.o: ../common/logging.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1270477542" 
	@${RM} ${OBJECTDIR}/_ext/1270477542/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1270477542/logging.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../common/logging.c  -o ${OBJECTDIR}/_ext/1270477542/logging.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1270477542/logging.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/1270477542/logging.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1537399865/uart2.o: ../microchip/common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1537399865" 
	@${RM} ${OBJECTDIR}/_ext/1537399865/uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537399865/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../microchip/common/uart2.c  -o ${OBJECTDIR}/_ext/1537399865/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1537399865/uart2.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/1537399865/uart2.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1270477542/byte_queue.o: ../common/byte_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1270477542" 
	@${RM} ${OBJECTDIR}/_ext/1270477542/byte_queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1270477542/byte_queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../common/byte_queue.c  -o ${OBJECTDIR}/_ext/1270477542/byte_queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1270477542/byte_queue.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/_ext/1270477542/byte_queue.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/adc.o: adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc.o.d 
	@${RM} ${OBJECTDIR}/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  adc.c  -o ${OBJECTDIR}/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/adc.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/adc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/digital.o: digital.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/digital.o.d 
	@${RM} ${OBJECTDIR}/digital.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  digital.c  -o ${OBJECTDIR}/digital.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/digital.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/digital.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/features.o: features.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/features.o.d 
	@${RM} ${OBJECTDIR}/features.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  features.c  -o ${OBJECTDIR}/features.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/features.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/features.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/i2c.o: i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2c.o.d 
	@${RM} ${OBJECTDIR}/i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  i2c.c  -o ${OBJECTDIR}/i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/i2c.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/i2c.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/icsp.o: icsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/icsp.o.d 
	@${RM} ${OBJECTDIR}/icsp.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  icsp.c  -o ${OBJECTDIR}/icsp.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/icsp.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/icsp.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/incap.o: incap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/incap.o.d 
	@${RM} ${OBJECTDIR}/incap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  incap.c  -o ${OBJECTDIR}/incap.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/incap.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/incap.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/pins.o: pins.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pins.o.d 
	@${RM} ${OBJECTDIR}/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  pins.c  -o ${OBJECTDIR}/pins.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/pins.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/pins.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/protocol.o: protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/protocol.o.d 
	@${RM} ${OBJECTDIR}/protocol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  protocol.c  -o ${OBJECTDIR}/protocol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/protocol.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/protocol.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/pwm.o: pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pwm.o.d 
	@${RM} ${OBJECTDIR}/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  pwm.c  -o ${OBJECTDIR}/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/pwm.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/spi.o: spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi.o.d 
	@${RM} ${OBJECTDIR}/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  spi.c  -o ${OBJECTDIR}/spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/spi.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/spi.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/timers.o: timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timers.o.d 
	@${RM} ${OBJECTDIR}/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  timers.c  -o ${OBJECTDIR}/timers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/timers.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/timers.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/uart.o: uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uart.o.d 
	@${RM} ${OBJECTDIR}/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  uart.c  -o ${OBJECTDIR}/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/uart.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/uart.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sequencer.o: sequencer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sequencer.o.d 
	@${RM} ${OBJECTDIR}/sequencer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sequencer.c  -o ${OBJECTDIR}/sequencer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sequencer.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/sequencer.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/sequencer_protocol.o: sequencer_protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sequencer_protocol.o.d 
	@${RM} ${OBJECTDIR}/sequencer_protocol.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sequencer_protocol.c  -o ${OBJECTDIR}/sequencer_protocol.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/sequencer_protocol.o.d"      -mno-eds-warn  -g -omf=elf -no-legacy-libc  -fno-short-double -O3 -I"." -I".." -I"../microchip/include" -I"../common" -DPLATFORM=1021 -DNDEBUG -msmart-io=1 -Wall -msfr-warn=off   -std=gnu99
	@${FIXDEPS} "${OBJECTDIR}/sequencer_protocol.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/sequencer_asm.o: sequencer_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sequencer_asm.o.d 
	@${RM} ${OBJECTDIR}/sequencer_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  sequencer_asm.s  -o ${OBJECTDIR}/sequencer_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=elf -no-legacy-libc  -I".." -Wa,-MD,"${OBJECTDIR}/sequencer_asm.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/sequencer_asm.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/field_accessors.o: field_accessors.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/field_accessors.o.d 
	@${RM} ${OBJECTDIR}/field_accessors.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  field_accessors.s  -o ${OBJECTDIR}/field_accessors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=elf -no-legacy-libc  -I".." -Wa,-MD,"${OBJECTDIR}/field_accessors.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/field_accessors.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/sequencer_asm.o: sequencer_asm.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sequencer_asm.o.d 
	@${RM} ${OBJECTDIR}/sequencer_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  sequencer_asm.s  -o ${OBJECTDIR}/sequencer_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -no-legacy-libc  -I".." -Wa,-MD,"${OBJECTDIR}/sequencer_asm.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/sequencer_asm.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/field_accessors.o: field_accessors.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/field_accessors.o.d 
	@${RM} ${OBJECTDIR}/field_accessors.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  field_accessors.s  -o ${OBJECTDIR}/field_accessors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -no-legacy-libc  -I".." -Wa,-MD,"${OBJECTDIR}/field_accessors.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/field_accessors.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_v1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../common/dummy.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_v1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=elf -no-legacy-libc      -Wl,--local-stack,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,$(MP_LINKER_FILE_OPTION),--heap=1536,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--library=conn,--library=adb,--library=usb,--library=btstack,--library-path="../libconn/dist/PIC24FJ128DA106/production",--library-path="../libadb/dist/PIC24FJ128DA106/production",--library-path="../libbtstack/dist/PIC24FJ128DA106/production",--library-path="../libusb/dist/PIC24FJ128DA106/production",--no-force-link,--smart-io,-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-T../blapi/app_IOIO0021.gld$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_v1.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../common/dummy.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_v1.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -no-legacy-libc  -Wl,--local-stack,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=1536,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--library=conn,--library=adb,--library=usb,--library=btstack,--library-path="../libconn/dist/PIC24FJ128DA106/production",--library-path="../libadb/dist/PIC24FJ128DA106/production",--library-path="../libbtstack/dist/PIC24FJ128DA106/production",--library-path="../libusb/dist/PIC24FJ128DA106/production",--no-force-link,--smart-io,-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml,-T../blapi/app_IOIO0021.gld$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_v1.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/IOIO0021
	${RM} -r dist/IOIO0021

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
