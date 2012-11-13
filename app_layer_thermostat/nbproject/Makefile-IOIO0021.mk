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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=IOIO0021
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_thermostat.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_thermostat.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1270477542/logging.o ${OBJECTDIR}/_ext/1537399865/uart2.o ${OBJECTDIR}/adc.o ${OBJECTDIR}/byte_queue.o ${OBJECTDIR}/digital.o ${OBJECTDIR}/features.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/icsp.o ${OBJECTDIR}/incap.o ${OBJECTDIR}/main.o ${OBJECTDIR}/pins.o ${OBJECTDIR}/protocol.o ${OBJECTDIR}/pwm.o ${OBJECTDIR}/spi.o ${OBJECTDIR}/timers.o ${OBJECTDIR}/uart.o ${OBJECTDIR}/thermostat.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1270477542/logging.o.d ${OBJECTDIR}/_ext/1537399865/uart2.o.d ${OBJECTDIR}/adc.o.d ${OBJECTDIR}/byte_queue.o.d ${OBJECTDIR}/digital.o.d ${OBJECTDIR}/features.o.d ${OBJECTDIR}/i2c.o.d ${OBJECTDIR}/icsp.o.d ${OBJECTDIR}/incap.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/pins.o.d ${OBJECTDIR}/protocol.o.d ${OBJECTDIR}/pwm.o.d ${OBJECTDIR}/spi.o.d ${OBJECTDIR}/timers.o.d ${OBJECTDIR}/uart.o.d ${OBJECTDIR}/thermostat.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1270477542/logging.o ${OBJECTDIR}/_ext/1537399865/uart2.o ${OBJECTDIR}/adc.o ${OBJECTDIR}/byte_queue.o ${OBJECTDIR}/digital.o ${OBJECTDIR}/features.o ${OBJECTDIR}/i2c.o ${OBJECTDIR}/icsp.o ${OBJECTDIR}/incap.o ${OBJECTDIR}/main.o ${OBJECTDIR}/pins.o ${OBJECTDIR}/protocol.o ${OBJECTDIR}/pwm.o ${OBJECTDIR}/spi.o ${OBJECTDIR}/timers.o ${OBJECTDIR}/uart.o ${OBJECTDIR}/thermostat.o


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
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-IOIO0021.mk dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_thermostat.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128DA106
MP_LINKER_FILE_OPTION=,--script="..\common\dummy.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1270477542/logging.o: ../common/logging.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1270477542 
	@${RM} ${OBJECTDIR}/_ext/1270477542/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1270477542/logging.o.ok ${OBJECTDIR}/_ext/1270477542/logging.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1270477542/logging.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/_ext/1270477542/logging.o.d" -o ${OBJECTDIR}/_ext/1270477542/logging.o ../common/logging.c    
	
${OBJECTDIR}/_ext/1537399865/uart2.o: ../microchip/common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1537399865 
	@${RM} ${OBJECTDIR}/_ext/1537399865/uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537399865/uart2.o.ok ${OBJECTDIR}/_ext/1537399865/uart2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1537399865/uart2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/_ext/1537399865/uart2.o.d" -o ${OBJECTDIR}/_ext/1537399865/uart2.o ../microchip/common/uart2.c    
	
${OBJECTDIR}/adc.o: adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/adc.o.d 
	@${RM} ${OBJECTDIR}/adc.o.ok ${OBJECTDIR}/adc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/adc.o.d" -o ${OBJECTDIR}/adc.o adc.c    
	
${OBJECTDIR}/byte_queue.o: byte_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/byte_queue.o.d 
	@${RM} ${OBJECTDIR}/byte_queue.o.ok ${OBJECTDIR}/byte_queue.o.err 
	@${FIXDEPS} "${OBJECTDIR}/byte_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/byte_queue.o.d" -o ${OBJECTDIR}/byte_queue.o byte_queue.c    
	
${OBJECTDIR}/digital.o: digital.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/digital.o.d 
	@${RM} ${OBJECTDIR}/digital.o.ok ${OBJECTDIR}/digital.o.err 
	@${FIXDEPS} "${OBJECTDIR}/digital.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/digital.o.d" -o ${OBJECTDIR}/digital.o digital.c    
	
${OBJECTDIR}/features.o: features.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/features.o.d 
	@${RM} ${OBJECTDIR}/features.o.ok ${OBJECTDIR}/features.o.err 
	@${FIXDEPS} "${OBJECTDIR}/features.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/features.o.d" -o ${OBJECTDIR}/features.o features.c    
	
${OBJECTDIR}/i2c.o: i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/i2c.o.d 
	@${RM} ${OBJECTDIR}/i2c.o.ok ${OBJECTDIR}/i2c.o.err 
	@${FIXDEPS} "${OBJECTDIR}/i2c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/i2c.o.d" -o ${OBJECTDIR}/i2c.o i2c.c    
	
${OBJECTDIR}/icsp.o: icsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/icsp.o.d 
	@${RM} ${OBJECTDIR}/icsp.o.ok ${OBJECTDIR}/icsp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/icsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/icsp.o.d" -o ${OBJECTDIR}/icsp.o icsp.c    
	
${OBJECTDIR}/incap.o: incap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/incap.o.d 
	@${RM} ${OBJECTDIR}/incap.o.ok ${OBJECTDIR}/incap.o.err 
	@${FIXDEPS} "${OBJECTDIR}/incap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/incap.o.d" -o ${OBJECTDIR}/incap.o incap.c    
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o.ok ${OBJECTDIR}/main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    
	
${OBJECTDIR}/pins.o: pins.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/pins.o.d 
	@${RM} ${OBJECTDIR}/pins.o.ok ${OBJECTDIR}/pins.o.err 
	@${FIXDEPS} "${OBJECTDIR}/pins.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/pins.o.d" -o ${OBJECTDIR}/pins.o pins.c    
	
${OBJECTDIR}/protocol.o: protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/protocol.o.d 
	@${RM} ${OBJECTDIR}/protocol.o.ok ${OBJECTDIR}/protocol.o.err 
	@${FIXDEPS} "${OBJECTDIR}/protocol.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/protocol.o.d" -o ${OBJECTDIR}/protocol.o protocol.c    
	
${OBJECTDIR}/pwm.o: pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/pwm.o.d 
	@${RM} ${OBJECTDIR}/pwm.o.ok ${OBJECTDIR}/pwm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/pwm.o.d" -o ${OBJECTDIR}/pwm.o pwm.c    
	
${OBJECTDIR}/spi.o: spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/spi.o.d 
	@${RM} ${OBJECTDIR}/spi.o.ok ${OBJECTDIR}/spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/spi.o.d" -o ${OBJECTDIR}/spi.o spi.c    
	
${OBJECTDIR}/timers.o: timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/timers.o.d 
	@${RM} ${OBJECTDIR}/timers.o.ok ${OBJECTDIR}/timers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/timers.o.d" -o ${OBJECTDIR}/timers.o timers.c    
	
${OBJECTDIR}/uart.o: uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/uart.o.d 
	@${RM} ${OBJECTDIR}/uart.o.ok ${OBJECTDIR}/uart.o.err 
	@${FIXDEPS} "${OBJECTDIR}/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/uart.o.d" -o ${OBJECTDIR}/uart.o uart.c    
	
${OBJECTDIR}/thermostat.o: thermostat.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/thermostat.o.d 
	@${RM} ${OBJECTDIR}/thermostat.o.ok ${OBJECTDIR}/thermostat.o.err 
	@${FIXDEPS} "${OBJECTDIR}/thermostat.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/thermostat.o.d" -o ${OBJECTDIR}/thermostat.o thermostat.c    
	
else
${OBJECTDIR}/_ext/1270477542/logging.o: ../common/logging.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1270477542 
	@${RM} ${OBJECTDIR}/_ext/1270477542/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1270477542/logging.o.ok ${OBJECTDIR}/_ext/1270477542/logging.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1270477542/logging.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/_ext/1270477542/logging.o.d" -o ${OBJECTDIR}/_ext/1270477542/logging.o ../common/logging.c    
	
${OBJECTDIR}/_ext/1537399865/uart2.o: ../microchip/common/uart2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1537399865 
	@${RM} ${OBJECTDIR}/_ext/1537399865/uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537399865/uart2.o.ok ${OBJECTDIR}/_ext/1537399865/uart2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1537399865/uart2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/_ext/1537399865/uart2.o.d" -o ${OBJECTDIR}/_ext/1537399865/uart2.o ../microchip/common/uart2.c    
	
${OBJECTDIR}/adc.o: adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/adc.o.d 
	@${RM} ${OBJECTDIR}/adc.o.ok ${OBJECTDIR}/adc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/adc.o.d" -o ${OBJECTDIR}/adc.o adc.c    
	
${OBJECTDIR}/byte_queue.o: byte_queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/byte_queue.o.d 
	@${RM} ${OBJECTDIR}/byte_queue.o.ok ${OBJECTDIR}/byte_queue.o.err 
	@${FIXDEPS} "${OBJECTDIR}/byte_queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/byte_queue.o.d" -o ${OBJECTDIR}/byte_queue.o byte_queue.c    
	
${OBJECTDIR}/digital.o: digital.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/digital.o.d 
	@${RM} ${OBJECTDIR}/digital.o.ok ${OBJECTDIR}/digital.o.err 
	@${FIXDEPS} "${OBJECTDIR}/digital.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/digital.o.d" -o ${OBJECTDIR}/digital.o digital.c    
	
${OBJECTDIR}/features.o: features.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/features.o.d 
	@${RM} ${OBJECTDIR}/features.o.ok ${OBJECTDIR}/features.o.err 
	@${FIXDEPS} "${OBJECTDIR}/features.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/features.o.d" -o ${OBJECTDIR}/features.o features.c    
	
${OBJECTDIR}/i2c.o: i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/i2c.o.d 
	@${RM} ${OBJECTDIR}/i2c.o.ok ${OBJECTDIR}/i2c.o.err 
	@${FIXDEPS} "${OBJECTDIR}/i2c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/i2c.o.d" -o ${OBJECTDIR}/i2c.o i2c.c    
	
${OBJECTDIR}/icsp.o: icsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/icsp.o.d 
	@${RM} ${OBJECTDIR}/icsp.o.ok ${OBJECTDIR}/icsp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/icsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/icsp.o.d" -o ${OBJECTDIR}/icsp.o icsp.c    
	
${OBJECTDIR}/incap.o: incap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/incap.o.d 
	@${RM} ${OBJECTDIR}/incap.o.ok ${OBJECTDIR}/incap.o.err 
	@${FIXDEPS} "${OBJECTDIR}/incap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/incap.o.d" -o ${OBJECTDIR}/incap.o incap.c    
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o.ok ${OBJECTDIR}/main.o.err 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    
	
${OBJECTDIR}/pins.o: pins.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/pins.o.d 
	@${RM} ${OBJECTDIR}/pins.o.ok ${OBJECTDIR}/pins.o.err 
	@${FIXDEPS} "${OBJECTDIR}/pins.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/pins.o.d" -o ${OBJECTDIR}/pins.o pins.c    
	
${OBJECTDIR}/protocol.o: protocol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/protocol.o.d 
	@${RM} ${OBJECTDIR}/protocol.o.ok ${OBJECTDIR}/protocol.o.err 
	@${FIXDEPS} "${OBJECTDIR}/protocol.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/protocol.o.d" -o ${OBJECTDIR}/protocol.o protocol.c    
	
${OBJECTDIR}/pwm.o: pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/pwm.o.d 
	@${RM} ${OBJECTDIR}/pwm.o.ok ${OBJECTDIR}/pwm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/pwm.o.d" -o ${OBJECTDIR}/pwm.o pwm.c    
	
${OBJECTDIR}/spi.o: spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/spi.o.d 
	@${RM} ${OBJECTDIR}/spi.o.ok ${OBJECTDIR}/spi.o.err 
	@${FIXDEPS} "${OBJECTDIR}/spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/spi.o.d" -o ${OBJECTDIR}/spi.o spi.c    
	
${OBJECTDIR}/timers.o: timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/timers.o.d 
	@${RM} ${OBJECTDIR}/timers.o.ok ${OBJECTDIR}/timers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/timers.o.d" -o ${OBJECTDIR}/timers.o timers.c    
	
${OBJECTDIR}/uart.o: uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/uart.o.d 
	@${RM} ${OBJECTDIR}/uart.o.ok ${OBJECTDIR}/uart.o.err 
	@${FIXDEPS} "${OBJECTDIR}/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/uart.o.d" -o ${OBJECTDIR}/uart.o uart.c    
	
${OBJECTDIR}/thermostat.o: thermostat.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/thermostat.o.d 
	@${RM} ${OBJECTDIR}/thermostat.o.ok ${OBJECTDIR}/thermostat.o.err 
	@${FIXDEPS} "${OBJECTDIR}/thermostat.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -fno-short-double -Wall -DPLATFORM=1021 -DNDEBUG -I"." -I".." -I"../microchip/include" -I"../common" -O3 -MMD -MF "${OBJECTDIR}/thermostat.o.d" -o ${OBJECTDIR}/thermostat.o thermostat.c    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_thermostat.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../common/dummy.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=coff -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_thermostat.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=1536,--gc-sections,-l"conn",-l"adb",-l"usb",-l"btstack",-L"../libconn/dist/PIC24FJ128DA106/production",-L"../libadb/dist/PIC24FJ128DA106/production",-L"../libbtstack/dist/PIC24FJ128DA106/production",-L"../libusb/dist/PIC24FJ128DA106/production",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-T../blapi/app_IOIO0021.gld
else
dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_thermostat.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../common/dummy.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=coff -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_thermostat.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1,--heap=1536,--gc-sections,-l"conn",-l"adb",-l"usb",-l"btstack",-L"../libconn/dist/PIC24FJ128DA106/production",-L"../libadb/dist/PIC24FJ128DA106/production",-L"../libbtstack/dist/PIC24FJ128DA106/production",-L"../libusb/dist/PIC24FJ128DA106/production",-Map="$(BINDIR_)$(TARGETBASE).map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-T../blapi/app_IOIO0021.gld
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/app_layer_thermostat.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=coff
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
