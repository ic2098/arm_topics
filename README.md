for sync. 
Notes:

@20240824:
Asynchronous exceptions not taken in EL3 on Cortex A53 r0p2 and above #368
https://github.com/ARM-software/tf-issues/issues/368

Intel Cal algorithm
https://www.intel.com/content/www/us/en/docs/programmable/683216/23-2-2-7-1/ddr4-read-calibration.html

DDR Calibrations: 
https://docs.amd.com/r/en-US/pg313-network-on-chip/Calibration-Stages
<picture>
 <source media="(prefers-color-scheme: dark)" srcset="YOUR-DARKMODE-IMAGE">
 <source media="(prefers-color-scheme: light)" srcset="YOUR-LIGHTMODE-IMAGE">
 <img alt="YOUR-ALT-TEXT" src="ddr_test/doc/ddr4_cal_flowchart.png">
</picture>

General concept: 
0) Each master delay line has to be calibrated for the SDRAM clock period. This is done by measuring the number of delay line steps that are required to produce a delay equal to the DDR clock period.
1) Control and data pins on high speed intfc must have accurate alignment with clocks due to skew/PCB trace mismatch. Need to adjust delay at the source (DDR PHY), observe captured control and data signals at the DDR chip and feed back to DDRC/DDRPHY CPU to analyze and program a calculated delay. DDR chips uses the DQ to feedback captured CS/CA to DDRC/DDRPHY
2) Terminations can cause issue with on the mis-alignment too due to reflections. Calibration is done by programming a ODT and calculate BER?
3) VREF causes eye degradation due to saturation. CAL is done by the 2d eye pattern.


AC/ACD - Address/Command
DFU - Device Firmware Update, or short DFU
CA[5:0] - ACT_n, RAS_n, CAS_n, WE_n etc. (Table 84: Command Truth Table)
DBM/I - Data bus mask, inversion

VT compensation algorithm, maybe multiply by some ratio? 
IPRD	8:0	rw	0x0	Initial Period: Initial period measured by the master delay line calibration
for VT drift compensation. This value is used as the denominator when
calculating the ratios of updates during VT compensation.

Possible issues:
data pin connectivity 
cross talk
dram timing parameters
stability of the VTT/VCCIO power rail
