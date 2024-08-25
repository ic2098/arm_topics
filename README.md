for sync. 
Notes:

@20240824:
Asynchronous exceptions not taken in EL3 on Cortex A53 r0p2 and above #368
https://github.com/ARM-software/tf-issues/issues/368


DDR Calibrations: 
https://docs.amd.com/r/en-US/pg313-network-on-chip/Calibration-Stages

General concept: 
1) Control and data pins on high speed intfc must have accurate alignment with clocks due to skew/PCB trace mismatch. Need to adjust delay at the source (DDR PHY), observe captured control and data signals at the DDR chip and feed back to DDRC/DDRPHY CPU to analyze and program a calculated delay. DDR chips uses the DQ to feedback captured CS/CA to DDRC/DDRPHY
2) Terminations can cause issue with on the mis-alignment too due to reflections. Calibration is done by programming a ODT and calculate BER?
3) VREF causes eye degradation due to saturation. CAL is done by the 2d eye pattern.

