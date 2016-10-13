Contact your GLOBALFOUNDRIES Customer Engineering or Field Engineering representative for questions or
comments about this Design Manual.
The information contained herein is confidential and is the property of GLOBALFOUNDRIES and/or its licensors.
GLOBALFOUNDRIES reserves all proprietary, design, manufacturing, reproduction, use, sales and other rights in the
information herein, in its products and services, and to any article or process utilizing such information, except to the extent
that rights are expressly granted to others.
This document is for informational purposes only, is current only as of the date of publication and is subject to change by
GLOBALFOUNDRIES at any time without notice. While precautions have been taken in the preparation of the information
herein, it may contain technical inaccuracies, omissions and typographical errors. GLOBALFOUNDRIES is under no obligation
to update or otherwise correct this information.
All information contained herein is provided “AS IS.” GLOBALFOUNDRIES MAKES NO REPRESENTATIONS AND
DISCLAIMS ALL WARRANTIES OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION
ANY IMPLIED WARRANTIES OF NONINFRINGEMENT, MERCHANTABILITY OR FITNESS FOR A PARTICULAR
PURPOSE, WITH RESPECT TO THE INFORMATION CONTAINED HEREIN.
Terms and conditions applicable to the purchase, quality and use of GLOBALFOUNDRIES' products and services are as set
forth in your organization’s signed agreement with GLOBALFOUNDRIES or in GLOBALFOUNDRIES’ Standard Terms
and Conditions of Sale. Unless otherwise authorized in a signed agreement with GLOBALFOUNDRIES,
GLOBALFOUNDRIES’ products and services are NOT intended for use in applications such as implantation, life support,
or other hazardous uses where malfunction could result in death, bodily injury, or catastrophic property damage.
GLOBALFOUNDRIES, the GLOBALFOUNDRIES logo and combinations thereof are trademarks of GLOBALFOUNDRIES
Inc. in the United States and/or other jurisdictions. Other product or service names are for identification purposes only and
may be trademarks or service marks of their respective owners.
© GLOBALFOUNDRIES Inc. 2016. Unless otherwise indicated, all rights reserved. Do not copy or redistribute except
as expressly permitted by GLOBALFOUNDRIES.
Contents
3.51.5 Crack Stop (MOB_CS, MOB_CS_NC MOB_GA and MOB_GA_NC) Design
5.3 Electrical Parameters and Models for Passive Devices (Common to both Node 1 and Node
Chapter
1
Technology Introduction
Topics:
• Features
• Ordering Information (Node 1)
• Ordering Information (Node 2)
• Chip Design Checklist and Design Hierarchy Guidelines
These topics describe the features and ordering information for this technology.
1.1 Features
28LPSe is a 28nm CMOS application-specific integrated circuit (ASIC) and foundry technology developed for static
random access memory (SRAM), logic, mixed-signal, and mixed-voltage input/output (I/O) applications.
1.1.1 CMOS Process
• 28LPSe utilizes optical 0.9x shrink of designs drawn at 32nm dimensions; designs must use the 28LPSe version of
the design kit.
• VDD = 1.05 V nominal (thin oxide)
• Twin-well or triple-well (NFET in isolated p-well) CMOS technology on epitaxial p- substrate
• Shallow trench isolation
• Stress-engineered and -optimized devices
• Three gate dielectrics: thin oxide (SG), medium I/O oxide (EG), and thick I/O oxide (ZG); only one I/O oxide
supported in each product design
• Minimum drawn gate length of 0.030 μm
• Low-resistance, nickel-salicided n+ and p+ doped polysilicon and diffusion
• Tungsten stud contact connecting polysilicon or diffusion to the first metal level
• Five to eight copper metal levels, including up to six 1x, one 2x, two 8x or 10x and one 30x metal levels.
• Planarized passivation, interlevel low-k and ultralow-k dielectrics
• Wire bond pads, Flip chip pads
• Optional electrically programmable fuse
1.1.2 Device Options
• Thin-oxide surface channel NFETs and PFETs with a minimum drawn gate length of 0.03 μm
• Two I/O application options: 1.2 V, 1.5 V, 1.8 V and 2.1 V devices with medium gate oxide, and 1.8 V, 2.5 V and
3.3 V devices with thick gate oxide.
• Zero-Vt NFET devices with thin, medium and thick gate oxides
• Medium-oxide EG 3.3V and 5.0V LDFET Transistors (n-type and p-type)
• Vertical PNP and NPN bipolar transistors
• N+ diffusion, P+ diffusion, N+ polysilicon and P+ polysilicon OP resistors
• Silicided N+ diffusion, P+ diffusion, N+ polysilicon and P+ polysilicon resistors
• N-Well Resistor under STI, and N-Well Resistor in Active
• NFET in N-Well capacitors with thin, medium and thick gate oxide.
• PFET in P-Well capacitors with thin and medium gate oxide.
• Alternate Polarity MoM (APMOM)
• Inductors on various copper metal levels
• All devices require the appropriate marking layer
1.1.3 Voltage and Temperature Range
• Maximum power supply voltage of 1.1 times nominal supply voltage
• Maximum burn-in voltage of 1.5 times the nominal voltage (for thin oxide), and maximum burn-in temperature of
140°C
• Operating junction temperature range of -40°C to 125°C
• Restricted-use operating junction temperature range of -55°C to 150°C
1.2 Ordering Information (Node 1)
Designers can use the following table to compile the list of optional features required by GLOBALFOUNDRIES
Manufacturing (contact your GLOBALFOUNDRIES technical representative for more information). Feature availability
and use restrictions are for reference only and might change. Requested features will be evaluated on current information
as part of the ordering process.
Table 1: Optional Features
Feature Group Notes Feature Description Additional Masks
RX, NW, BF, ZP, ZN, PC, CT, TJ, BN, BP,
CA
Always included 1 Base features for 28LPSe
2 N-Well and P-Well in Substrate (Dual Well) -
Well options
2 N-Well and Isolated P-Well (Triple Well) N3
3 Standard-Vt NFET BH, 4BH
Core FET
3 Standard-Vt PFET PH, 4PH
Feature Group Notes Feature Description Additional Masks
3 Low-Vt NFET XW, 4BH
3 Low-Vt PFET LW, 4PH
3 Standard-Vt Horizontal NFET BH, 4BH
3 Standard-Vt Horizontal PFET PH, 4PH
3, 6 eLow-Vt NFET 4BH
3, 6 eLow-Vt NFET 4PH
13 ALVT NFET IN, GN
13 ALVT PFET GP
4 1.8 V EG NFET IN, ZG, GN
I/O FET
4 1.8 V EG PFET ZG, GP
4 1.5 V Underdrive EG NFET IN, ZG, GN
4 1.5 V Underdrive EG PFET ZG, GP
4 1.2 V Underdrive EG NFET IN, ZG, GN
4 1.2 V Underdrive EG PFET ZG, GP
4, 7 2.1 V Overdrive EG NFET IN, ZG, GN
4, 7 2.1 V Overdrive EG PFET ZG, GP
4, 8 2.5 V ZG NFET IN, ZG, GN
4, 8 2.5 V ZG PFET IP, ZG, GP
4, 8 1.8 V Underdrive ZG NFET IN, ZG, GN
4, 8 1.8 V Underdrive ZG PFET IP, ZG, GP
4, 8 3.3 V Overdrive ZG NFET IN, ZG, GN
4, 8 3.3 V Overdrive ZG PFET IP, ZG, GP
- Zero-Vt NFET XH
Additional Options 4 EG Zero-Vt NFET ZG, XH
4, 8 ZG Zero-Vt NFET ZG, GN
Dense SRAM cell P127HD NFET (pass gate) NV, HN
9
SRAM
Dense SRAM cell P127HD NFET (pull down) NV, HN
Dense SRAM cell P127HD PFET (pull up) HP
Performance SRAM cell P155HC NFET (pass gate) NV, HN
9
Performance SRAM cell P155HC NFET (pull NV, HN
down)
Performance SRAM cell P155HC PFET (pull up) PV, HP
LV Two-port SRAM cell TPP240LV NFET (pass NV, HN
gate)
9
Feature Group Notes Feature Description Additional Masks
LV Two-port SRAM cell TPP240LV NFET (pull NV, HN
down)
LV Two-port SRAM cell TPP240LV PFET (pull PV, HP
up)
LV Two-port SRAM cell TPP240LV NFET (read BH, 4BH
stack pass down)
LV Two-port SRAM cell TPP240LV NFET (read BH, 4BH
stack pass gate)
SRAM cell P240HP NFET (pass gate) NV, HN
9 SRAM cell P240HP NFET (pull down) NV, HN
SRAM cell P240HP PFET (pull up) PV, HP
SRAM cell TPP240MX NFET (pass gate) NV, HN
9
SRAM cell TPP240MX NFET (pull down) NV, HN
SRAM cell TPP240MX PFET (pull up) PV, HP
SRAM cell TPP240MX NFET (read stack pass BH, 4BH
down)
SRAM cell TPP240MX NFET (read stack pass BH, 4BH
gate)
SRAM cell DPD315 NFET (pass gate) NV, HN
9 SRAM cell DPD315 NFET (pull down) NV, HN
SRAM cell DPD315 PFET (pull up) PV, HP
- NW/psub Diode -
Diode
- N+/PW tie down Diode -
- EG N+/PW tie down Diode IN, ZG, GN
8 ZG N+/PW tie down Diode IN, ZG, GN
- P+/NW tie down Diode -
- EG P+/NW tie down Diode ZG, GP
8 ZG P+/NW tie down Diode IP, ZG, GP
- N-band to pwell Diode N3
- N-band to psub Diode N3
- OP P+ Poly Resistor OP
Resistor
- OP N+ Poly Resistor OP
- OP P+ Diff Resistor OP
- OP N+ Diff Resistor OP
- Silicided P+ Poly Resistor -
- Silicided N+ Poly Resistor -
Feature Group Notes Feature Description Additional Masks
- Silicided P+ Diff Resistor -
- Silicided N+ Diff Resistor -
- NW Resistor under STI -
- NW Resistor in Active OP
- NCAP -
Capacitor
- EG NCAP ZG
8 ZG NCAP IP, ZG
- PCAP N3
- EG PCAP N3, IN, ZG
8 ZG PCAP N3, IN, ZG
- 2.5V APMOM -
- 3.3V APMOM -
- 5V APMOM -
5 ESD NFET OP
ESD
5 ESD NFET (ED) ED, OP
5 ESD PFET OP
5 ESD NFET Triple-Well N3, OP
5 ESD NFET Triple-Well (ED) N3, ED, OP
5 ESD N+/P-Well Diode -
5 ESD Vertical PNP -
5 ESD Vertical NPN (T3) N3
5 ESD SCR (Silicon-Controlled Rectifier) - P+/NW -
5 ESD SCR (Silicon-Controlled Rectifier) - P+/PW -
5 ESD SCR (Silicon-Controlled Rectifier) - N+/NW -
5 ESD SCR (Silicon-Controlled Rectifier) - N+/PW -
ESD SCR T3 (Silicon-Controlled Rectifier) - N3
P+/NW
5
ESD SCR T3 (Silicon-Controlled Rectifier) - N3
P+/PW
5
ESD SCR T3 (Silicon-Controlled Rectifier) - N3
N+/NW
5
ESD SCR T3 (Silicon-Controlled Rectifier) - N3
N+/PW
5
5 ESD EG N+/PW Poly-Bound Diode IN, ZG
5 ESD EG Vertical PNP Poly-Bound Diode ZG
5 ESD EG Vertical NPN Poly-Bound Diode N3, IN, ZG
Feature Group Notes Feature Description Additional Masks
5, 8 ESD ZG N+/PW Poly-Bound Diode IN, ZG
5, 8 ESD ZG Vertical PNP Poly-Bound Diode IP, ZG
5, 8 ESD ZG Vertical NPN Poly-Bound Diode N3, IN, ZG
- Vertical PNP Bipolar Transistor OP
Bipolar
Vertical NPN Bipolar Transistor N3, OP
Fuse - eFUSE -
Inductor - Inductor -
M1, V1, M2, V2, M3, V3, M4, V4, M5, YX,
IA, VV, LB
2, 11 1. 5U1x_1T8x_LB (LB option: thick only)
Metal Options
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, YX, IA, VV, LB
2, 12 2. 6U1x_1T8x_LB (LB option: thick and thin)
M1, V1, M2, V2, M3, V3, M4, V4, M5, JQ,
OI, VV, LB
2, 11 3. 5U1x_1T30x_LB (LB option: thick only)
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, JQ, OI, VV, LB
2 4. 6U1x_1T30x_LB (LB option: thick only)
M1, V1, M2, V2, M3, V3, M4, V4, M5, YX,
IA, JQ, OI, VV, LB
2, 11 5. 5U1x_1T8x_1T30x_LB (LB option: thick only)
M1, V1, M2, V2, M3, V3, M4, JQ, OI, VV,
LB
2, 11 10. 4U1x_1T30x_LB (LB option: thick only)
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, YX, IA, XA, IB, VV, LB
2, 11 11. 6U1x_2T8x_LB (LB option: thick only)
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, 2YS, JA, XD, JB, VV, LB
2, 11, 12 12. 6U1x_2T10x_LB (LB option: thick and thin)
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, 2YS, JA, VV, LB
2, 11, 12 14. 6U1x_1T10x_LB (LB option: thick and thin)
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, YX, IA, JQ, OI, VV, LB
2 15. 6U1x_1T8x_1T30x_LB (LB option: thick only)
10, 12 Large VV option -
2 C4 plated Lead-free solder bump (flip-chip) RS, LV, 2NB
Packaging
2 Wire bond RS, DV
2 Copper pillar RS, LV, 2NB
Round with PSPI
2 Copper pillar RS, LV, 2NB
Non-round with PSPI
Notes:
1. These are base feature masks required for 28LPSe. The additional masks required beyond base feature masks are
listed out in the table for each devices.. Back-end-of-line (BEOL) masks depend on the metal stack selected. Refer
to Mask Levels, Design Levels, Graphic Design System II (GDSII) Stream Layers and Design Kit Metallization
Options for BEOL mask information.
2. Select only one category within the feature group.
3. Mask reduction is possible if eLow-Vt device is not required. Please contact GLOBALFOUNDRIES representative
for more information.
4. This device must be consistent with the oxide option selected. Either medium-oxide (EG) or thick-oxide (ZG) may
be used, but using both options in a single design is prohibited.
5. ESD modeling support is not available for 28LPSe at present.
6. Please contact your GLOBALFOUNDRIES technical representative if eLVT device is required.
7. EG overdrive is currently not supported for 28LPSe. Please contact your GLOBALFOUNDRIES technical
representative if this capability is required.
8. Please contact your GLOBALFOUNDRIES technical representative if ZG device is required.
9. Presently, the 28LPSe offered SRAM models in the BCK are at version 0.5.
10. Large VV is defined as VV, VVBar, VVLRG with width >= 3.4μm.
11. PDK not enabled for these metallization options. Please contact your GLOBALFOUNDRIES technical representative
if these BEOL metallization options are required.
12. Please contact your GLOBALFOUNDRIES technical representative if large VV option or thin LB option is required.
13. Please contact your GLOBALFOUNDRIES technical representative if ALVT device is required.
1.3 Ordering Information (Node 2)
Designers can use the following table to compile the list of optional features required by GLOBALFOUNDRIES
Manufacturing (contact your GLOBALFOUNDRIES technical representative for more information). Feature availability
and use restrictions are for reference only and might change. Requested features will be evaluated on current information
as part of the ordering process.
Table 2: Optional Features
Feature Group Notes Feature Description Additional Masks
RX, NW, 3BF, ZP, ZN, PC, CT, TJ, BN, BP,
CA
Always included 1 Base features for 28LPSe
2 N-Well and P-Well in Substrate (Dual Well) -
Well options
2 N-Well and Isolated P-Well (Triple Well) N3
3 Standard-Vt NFET 4IN, BH, 4BH
Core FET
3 Standard-Vt PFET PH, 4PH
3, 15 Low-Vt NFET 4IN, XW, 4BH
3, 15 Low-Vt PFET LW, 4PH
3 High-Vt NFET 4IN, 9BH, HG
3 High-Vt PFET 9PH, HG
3 Standard-Vt Horizontal NFET 4IN, BH, 4BH
3 Standard-Vt Horizontal PFET PH, 4PH
3, 6 eLow-Vt NFET 4IN, 4BH
3, 6 eLow-Vt PFET 4PH
Feature Group Notes Feature Description Additional Masks
13 ALVT NFET GN
13 ALVT PFET GP
4 1.8 V EG NFET ZG, GN
I/O FET
4 1.8 V EG PFET ZG, GP
4 1.5 V Underdrive EG NFET ZG, GN
4 1.5 V Underdrive EG PFET ZG, GP
4 1.2 V Underdrive EG NFET ZG, GN
4 1.2 V Underdrive EG PFET ZG, GP
4, 7 2.1 V Overdrive EG NFET ZG, GN
4, 7 2.1 V Overdrive EG PFET ZG, GP
4, 8 2.5 V ZG NFET ZG, GN
4, 8 2.5 V ZG PFET IP, ZG, GP
4, 8 1.8 V Underdrive ZG NFET ZG, GN
4, 8 1.8 V Underdrive ZG PFET IP, ZG, GP
4, 8 3.3 V Overdrive ZG NFET ZG, GN
4, 8 3.3 V Overdrive ZG PFET IP, ZG, GP
- Zero-Vt NFET XH
Additional Options 4 EG Zero-Vt NFET ZG, XH
4, 8 ZG Zero-Vt NFET ZG, GN
Dense SRAM cell P127HD NFET (pass gate) 3NV, HN
9
SRAM
Dense SRAM cell P127HD NFET (pull down) 3NV, HN
Dense SRAM cell P127HD PFET (pull up) HP
Performance SRAM cell P155HC NFET (pass gate) 3NV, HN
9
Performance SRAM cell P155HC NFET (pull 3NV, HN
down)
Performance SRAM cell P155HC PFET (pull up) PV, HP
LV Two-port SRAM cell TPP240LV NFET (pass 3NV, HN
gate)
9
LV Two-port SRAM cell TPP240LV NFET (pull 3NV, HN
down)
LV Two-port SRAM cell TPP240LV PFET (pull PV, HP
up)
LV Two-port SRAM cell TPP240LV NFET (read 4IN, BH, 4BH
stack pass down)
Feature Group Notes Feature Description Additional Masks
LV Two-port SRAM cell TPP240LV NFET (read 4IN, BH, 4BH
stack pass gate)
SRAM cell P240HP NFET (pass gate) 3NV, HN
9 SRAM cell P240HP NFET (pull down) 3NV, HN
SRAM cell P240HP PFET (pull up) PV, HP
SRAM cell TPP240MX NFET (pass gate) 3NV, HN
9
SRAM cell TPP240MX NFET (pull down) 3NV, HN
SRAM cell TPP240MX PFET (pull up) PV, HP
SRAM cell TPP240MX NFET (read stack pass 4IN, BH, 4BH
down)
SRAM cell TPP240MX NFET (read stack pass 4IN, BH, 4BH
gate)
SRAM cell DPD315 NFET (pass gate) 3NV, HN
9 SRAM cell DPD315 NFET (pull down) 3NV, HN
SRAM cell DPD315 PFET (pull up) PV, HP
- NW/psub Diode -
Diode
- N+/PW tie down Diode 4IN
- EG N+/PW tie down Diode ZG, GN
8 ZG N+/PW tie down Diode ZG, GN
- P+/NW tie down Diode -
- EG P+/NW tie down Diode ZG, GP
8 ZG P+/NW tie down Diode IP, ZG, GP
- N-band to pwell Diode 4IN, N3
- N-band to psub Diode 4IN, N3
- OP P+ Poly Resistor OP
Resistor
- OP N+ Poly Resistor OP
- OP P+ Diff Resistor OP
- OP N+ Diff Resistor OP, 4IN
- Silicided P+ Poly Resistor -
- Silicided N+ Poly Resistor -
- Silicided P+ Diff Resistor -
- Silicided N+ Diff Resistor -
- NW Resistor under STI -
- NW Resistor in Active OP
Capacitor - NCAP -
Feature Group Notes Feature Description Additional Masks
- EG NCAP ZG
8 ZG NCAP IP, ZG
- PCAP N3, 4IN
- EG PCAP N3, ZG
8 ZG PCAP N3, ZG
- 2.5V APMOM -
- 3.3V APMOM -
- 5V APMOM -
5 ESD NFET OP
ESD
5 ESD NFET (ED) ED, OP
5 ESD PFET OP
5 ESD NFET Triple-Well N3, OP
5 ESD NFET Triple-Well (ED) N3, ED, OP
5 ESD N+/P-Well Diode -
5 ESD Vertical PNP -
5 ESD Vertical NPN (T3) N3
5 ESD SCR (Silicon-Controlled Rectifier) - P+/NW -
5 ESD SCR (Silicon-Controlled Rectifier) - P+/PW -
5 ESD SCR (Silicon-Controlled Rectifier) - N+/NW -
5 ESD SCR (Silicon-Controlled Rectifier) - N+/PW -
ESD SCR T3 (Silicon-Controlled Rectifier) - N3
P+/NW
5
ESD SCR T3 (Silicon-Controlled Rectifier) - N3
P+/PW
5
ESD SCR T3 (Silicon-Controlled Rectifier) - N3
N+/NW
5
ESD SCR T3 (Silicon-Controlled Rectifier) - N3
N+/PW
5
5 ESD EG N+/PW Poly-Bound Diode 4IN, ZG
5 ESD EG Vertical PNP Poly-Bound Diode ZG
5 ESD EG Vertical NPN Poly-Bound Diode N3, 4IN, ZG
5, 8 ESD ZG N+/PW Poly-Bound Diode 4IN, ZG
5, 8 ESD ZG Vertical PNP Poly-Bound Diode IP, ZG
5, 8 ESD ZG Vertical NPN Poly-Bound Diode N3, 4IN, ZG
- Vertical PNP Bipolar Transistor OP, 4IN
Bipolar
Vertical NPN Bipolar Transistor N3, OP, 4IN
Feature Group Notes Feature Description Additional Masks
Fuse - eFUSE -
Inductor - Inductor -
M1, V1, M2, V2, M3, V3, M4, V4, M5, YX,
IA, VV, LB
2, 11 1. 5U1x_1T8x_LB (LB option: thick only)
Metal Options
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, YX, IA, VV, LB
2, 11, 12 2. 6U1x_1T8x_LB (LB option: thick and thin)
M1, V1, M2, V2, M3, V3, M4, V4, M5, JQ,
OI, VV, LB
2, 11 3. 5U1x_1T30x_LB (LB option: thick only)
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, JQ, OI, VV, LB
2, 11 4. 6U1x_1T30x_LB (LB option: thick only)
M1, V1, M2, V2, M3, V3, M4, V4, M5, YX,
IA, JQ, OI, VV, LB
2, 11 5. 5U1x_1T8x_1T30x_LB (LB option: thick only)
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, 2WT, 2BA, YZ, IA, VV, LB
18. 6U1x_1L2x_1T8x_LB (LB option: thick and
thin)
2, 12
M1, V1, M2, V2, M3, V3, M4, V4, M5, 2WT,
2BA, YZ, IA, XA, IB, VV, LB
19. 5U1x_1L2x_2T8x_LB (LB option: thick and
thin)
2, 11, 12
M1, V1, M2, V2, M3, V3, M4, JQ, OI, VV,
LB
2, 11 10. 4U1x_1T30x_LB (LB option: thick only)
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, YX, IA, XA, IB, VV, LB
2 11. 6U1x_2T8x_LB (LB option: thick only)
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, 2YS, JA, XD, JB, VV, LB
2, 12 12. 6U1x_2T10x_LB (LB option: thick and thin)
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, 2WT, 2BA, YR, JA, VV, LB
2, 11, 12 20. 6U1x_1L2x_1T10x_LB (LB option: thin only)
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, 2YS, JA, VV, LB
2, 12 14. 6U1x_1T10x_LB (LB option: thick and thin)
M1, V1, M2, V2, M3, V3, M4, V4, M5, V5,
M6, YX, IA, JQ, OI, VV, LB
2, 11 15. 6U1x_1T8x_1T30x_LB (LB option: thick only)
M1, V1, M2, V2, M3, 2WT, 2BA, YZ, IA,
XA, IB, VV, LB
2, 11 16. 3U1x_1L2x_2T8x_LB (LB option: thick only)
M1, V1, M2, V2, M3, V3, M4, V4, M5, 2WT,
2BA, YZ, IA, VV, LB
17. 5U1x_1L2x_1T8x_LB (LB option: thick and
thin)
2, 12
10, 12 Large VV option -
2 C4 plated Lead-free solder bump (flip-chip) RS, LV, 2NB
Packaging
2 Wire bond RS, DV
2 Copper pillar RS, LV, 2NB
Round with PSPI
2 Copper pillar RS, LV, 2NB
Non-round with PSPI
14 3.3 V EG LDNFET IP, ZG, GN, OP
LDFET
Feature Group Notes Feature Description Additional Masks
14 3.3 V EG LDPFET IP, ZG, GP, OP, N3
14 5.0 V EG LDNFET IP, ZG, GN
14 5.0 V EG LDPFET IP, ZG, GP, N3
Notes:
1. These are base feature masks required for 28LPSe. The additional masks required beyond base feature masks are
listed out in the table for each devices.. Back-end-of-line (BEOL) masks depend on the metal stack selected. Refer
to Mask Levels, Design Levels, Graphic Design System II (GDSII) Stream Layers and Design Kit Metallization
Options for BEOL mask information.
2. Select only one category within the feature group.
3. Mask reduction is possible if device is not required. Please contact GLOBALFOUNDRIES representative for more
information.
4. This device must be consistent with the oxide option selected. Either medium-oxide (EG) or thick-oxide (ZG) may
be used, but using both options in a single design is prohibited.
5. ESD modeling support is not available for 28LPSe at present.
6. Please contact your GLOBALFOUNDRIES technical representative if eLVT device is required.
7. EG overdrive is currently not supported for 28LPSe. Please contact your GLOBALFOUNDRIES technical
representative if this capability is required.
8. Please contact your GLOBALFOUNDRIES technical representative if ZG device is required.
9. Presently, the 28LPSe offered SRAM models in the BCK are at version 0.5.
10. Large VV is defined as VV, VVBar, VVLRG with width >= 3.4μm.
11. PDK not enabled for these metallization options. Please contact your GLOBALFOUNDRIES technical representative
if these BEOL metallization options are required.
12. Please contact your GLOBALFOUNDRIES technical representative if large VV option or thin LB option is required.
13. Please contact your GLOBALFOUNDRIES technical representative if ALVT device is required.
14. Device is not finally qualified, qualification is pending. Please contact your GLOBALFOUNDRIES technical
representative.
15. XW is needed if both LVT NFET & eLVT NFET are co-exists whereas LW is needed if both LVT PFET & eLVT
PFET are co-exists.
1.4 Chip Design Checklist and Design Hierarchy Guidelines
Complete this checklist before submitting design data.
1. The design passes design rule checking (DRC).
2. The design passes layout versus schematic (LVS) checking.
3. Simulation results for all circuits are satisfactory across the entire operating range and process variation range and
across modeled wearout mechanisms, including burn-in and total use conditions through the product lifetime:
• No hot carrier or negative bias temperature instability (NBTI) shifts result in loss of circuit function due to changes
in timing, skew, performance, or standby current.
• No contacts or metal lines carry more than their rated currents.
• All circuits operate at the reliability screen conditions and/or at burn-in conditions.
4. Electrostatic discharge (ESD) and latchup layout and design requirements are met.
5. No “floating” wells are present.
6. Internal power bus networks minimize local power supply drops and deviations.
7. Power supply network test probe and package lead impedances match those expected to ensure functionality and
testability.
Note: A technology design kit is available through your GLOBALFOUNDRIES technical representative.
1.4.1 Design Hierarchy Guidelines
The following general guidelines significantly improve hierarchical verification run time and debugging. Ignoring these
guidelines can adversely impact mask process and data preparation turnaround.
1. Reuse as many circuits as possible in your design. For example, if a two-way NAND gate is needed, reuse one that
is already designed, if possible.
2. Place all the shapes that comprise a circuit in the same cell. For example, do not create transistors by bumping
polysilicon (PC) from over RX in one cell to over RX in another cell. Place the NW and BP shapes in the cell where
the transistors are formed.
3. Confirm that the design rules are followed correctly in each cell. For example, do not place contacts in a cell without
metal covering them.
4. When necessary, intrude on a lower cell (as low in the hierarchy as possible). For example, do not use the top (prime)
cell to program decoders. Place programmed decoders in the next highest level of hierarchy.
5. Strive for rectangular-shaped circuits. L-shaped circuits have multiple intrusions that slow down the checker.
6. Do not make any changes in the prime cell that impact transistor width, length, or connectivity in the bottom cell.
7. Build large hollow structures, like substrate rings that intrude on the entire chip, by placing four cells (for example,
top, left, right, and bottom) in the prime cell. In this structure, there is no interference from any shapes other than
those nearby.
8. Avoid using special characters in cell names. Use alphanumeric (a-z and 0-9) cell names, level names, and port
names. Always begin the name with an alphabetic character.
9. Make wiring connections as low in the hierarchy as possible. The closer a connection is to the prime cell, the more
difficult it is to debug.
10. Avoid hierarchy “holding levels,” where only transformations but no actual shapes occur. Some design tools will
spend time trying to resolve shapes where none exist.
11. Avoid too much hierarchy. For example, do not design a circuit with each shape residing in its own cell.
12. Output only one prime cell. Some design tools, such as the GLOBALFOUNDRIES integrated graphic system, can
output multiple prime cells.
13. Nest each large discrete design component, such as a cache or floating-point unit, as an individually named model,
especially if the structure occupies a large fraction (20% or more) of the chip. Also nest repeated subunits of large
discrete design components as individually named models.
14. Avoid overlapping large models. For example, do not use overlapping registration marks to align models.
15. For large chips (> 200 mm2), provide preliminary design data for mask processing a soon as it is available.

Chapter
2
Physical Design Information
Topics:
• Mask and Design Levels
• Non-Design Mask Levels (Node 1)
• Non-Design Mask Levels (Node 2)
• Design and Utility Levels
• Data Preparation Levels
• Kerf Design Levels
• Reference Levels
• Mask Alignment Sequence and Metallization Options
• Design Preparation
• Truth Tables
• Shrink Flow Overview
Physical designs consist of a defined combination of required and optional designer-drawn mask and design levels,
automatically-generated mask and design levels, and GLOBALFOUNDRIES-reserved levels.
Designs must be laid out on a 0.001 μm grid (see Rule S1 in Geometry Restriction Design Rules).
2.1 Mask and Design Levels
Every 28LPSe design must contain design levels RX, NW, PC, BP, and CA. The appropriate metal and via levels
Note: To prevent mask- and/or design-level name conflicts during design, data preparation, and kerf merge
Table 3: Mask Levels, Design Levels, Graphic Design System II (GDSII) Stream Layers
Minimum
On Wafer1 Aligns to2
Mask Level Design Level GDSII Shape Description
Data Line (μm) Space(μm)
Type
Layer
No.
Blocked - 0.040 0.060
Gate oxide, n+ and p+ diffused
regions.
RX RX 2 0
NW NW 4 0 N-well region. Open RX 0.260 0.260
Blocked RX 0.400 0.400
EG 12 43 Medium gate-oxide area.
ZG
ZG 212 74 Thick gate-oxide area.
Open RX 0.252 0.216
Vt adjustment for p-well implant
for the access NFET.
AD AD 12 100
Blocked RX 0.030 0.096
Polysilicon conductor over either
active or shallow trench isolation
(STI) regions.3 PC PC 7 0
Open PC 0.080 0.090
Cut mask for printing select
CT PC_E2 7 236
spaces. Used as the second mask
in a two-mask (PC / CT)
polysilicon gate lithographic
strategy.
BP NPLUS 1008 0 N+ source or drain implant area. Open RX 0.126 0.126
BN PPLUS 780 47 P+ source or drain implant area. Open RX 0.126 0.126
Open RX 0.500 0.500
Region receiving a special
ED ED 12 35 electrostatic discharge (ESD)
implant.
Blocked PC 0.200 0.200
Region blocked from silicide
formation.
OP OP 37 0
PC4 0.0405 0.0865
Open
Square stud contact; CA connects
either RX or PC to M1.
CA 14 0
CA Rectangular stud contact;
CABAR 14 1
CABAR is used only in the chip
guard ring (touching
GUARDRNG), moisture barrier
Minimum
On Wafer1 Aligns to2
Mask Level Design Level GDSII Shape Description
Data Line (μm) Space(μm)
Type
Layer
No.
(touching MOB), or part number
/ label field (touching
LOGOBND).
CAREC 14 88 SRAM-only contact.
Open CA 0.050 0.050
First-level 1x metal line (for a
trench in low-k dielectric).
M1 M1 15 0
0.076
0.050
M16
Open
Square via for connecting M1 to
M2
V1 16 0
V1
0.050
(0.100)
Redundant via for connecting M1
to M2 in optional copper line and
via support (CLVS) structures.
V1RV 16 5
0.050
Rectangular via for connecting
M1 to M2.
V1BAR 16 1
0.100
Square via for connecting M1 to
M2.
V1LRG 16 15
0.050 0.050
M16
Open
Second-level 1x metal line (for a
trench in ultralow-k dielectric).
M2 M2 17 0
0.076
0.050
M36
Open
Square via for connecting M2 to
M3.
V2 18 0
V2
0.050
(0.100)
Redundant via for connecting M2
to M3 in optional CLVS
structures
V2RV 18 5
0.050
Rectangular via for connecting
M2 to M3.
V2BAR 18 1
0.100
Square via for connecting M2 to
M3.
V2LRG 18 15
0.050 0.050
M26
Open
Third-level 1x metal line (for a
trench in ultralow-k dielectric).
M3 M3 19 0
Minimum
On Wafer1 Aligns to2
Mask Level Design Level GDSII Shape Description
Data Line (μm) Space(μm)
Type
Layer
No.
0.076
0.050
M46
Open
Square via for connecting M3 to
M4.
V3 20 0
V3
0.050
(0.100)
Redundant via for connecting M3
to M4 in optional CLVS
structures
V3RV 20 5
0.050
Rectangular via for connecting
M3 to M4
V3BAR 20 1
0.100
Square via for connecting M3 to
M4.
V3LRG 20 15
0.050 0.050
M36
Open
Fourth-level 1x metal line (for a
trench in ultralow-k dielectric).
M4 M4 21 0
0.076
0.050
M56
Open
Square via for connecting M4 to
M5.
V4 22 0
V4
0.050
(0.100)
Redundant via for connecting M4
to M5 in optional CLVS
structures.
V4RV 22 5
0.050
Rectangular via for connecting
M4 to M5.
V4BAR 22 1
0.100
Square via for connecting M4 to
M5.
V4LRG 22 15
0.050 0.050
M46
Open
Fifth-level 1x metal line (for a
trench in ultralow-k dielectric).
M5 M5 31 0
0.076
0.050
M66
Open
Square via for connecting M5 to
M6.
V5 32 0
V5
0.050
(0.100)
Redundant via for connecting M5
to M6 in optional CLVS
structures.
V5RV 32 5
0.050
Rectangular via for connecting
M5 to M6.
V5BAR 32 1
Minimum
On Wafer1 Aligns to2
Mask Level Design Level GDSII Shape Description
Data Line (μm) Space(μm)
Type
Layer
No.
0.100
Square via for connecting M5 to
M6.
V5LRG 32 15
0.050 0.050
M56
Open
Sixth-level 1x metal line (for a
trench in ultralow-k dielectric).
M6 M6 44 0
0.100 0.100
MLAST1X7
Open
Square via for connecting
MLAST1X to BA (in Low-k).
WT 88 0
2WT
Redundant via for connecting
WTRV 88 5 MLAST1X to BA in optional
CLVS structures.
Rectangular via for connecting
MLAST1X to BA.
WTBAR 88 1
0.100 0.100
MLAST1X7
Open
First-level 2x metal line (in
Low-k).
2BA BA 89 0
0.360 0.440
MLAST1X7
Open
Square via for connecting
MLAST1X to IA
YX 237 0
YX
Rectangular via for connecting
MLAST1X to IA
YXBAR 237 1
0.360 0.440
BLAST2X7
Open
Square via for connecting
BLAST2X to IA
YZ 238 0
YZ
Rectangular via for connecting
BLAST2X to IA
YZBAR 238 1
Open YX or YZ 0.400 0.400
First-level 8x metal line (in
oxide).
IA IA 136 0
Open IA 0.360 0.440
Square via for connecting IA to
IB.
XA 135 0
XA
Rectangular via for connecting
IA to IB.
XABAR 135 1
Minimum
On Wafer1 Aligns to2
Mask Level Design Level GDSII Shape Description
Data Line (μm) Space(μm)
Type
Layer
No.
Open XA 0.400 0.400
Second-level 8x metal line (in
oxide).
IB IB 137 0
0.46 0.44
MLAST1X7
Open
Square via for connecting
MLAST1X to JA.
YS 33 0
2YS
Rectangular via for connecting
MLAST1X to JA.
YSBAR 33 1
0.46 0.44
BLAST2X7
Open
Square via for connecting
BLAST2X to JA.
YR 196 0
YR
Rectangular via for connecting
BLAST2X to JA.
YRBAR 196 1
Open YS or YR 0.5 0.5
First-level 10x metal line (in
oxide).
JA JA 179 0
Open JA 0.46 0.54
Square via for connecting JA to
JB.
XD 191 0
XD
Rectangular via for connecting
JA to JB.
XDBAR 191 1
Open XD 0.5 0.5
Second-level 10x metal line (in
oxide).
JB JB 180 0
0.34
0.36
MLAST1x
Open
Square via for connecting
MLAST1x or ILAST8x to OI.
JQ 58 0
JQ or
ILAST8X
1.2
Rectangular via for connecting
MLAST1x or ILAST8x to OI.
JQBAR 58 1
Open JQ 2.0 1.0
Wire level for 30x thick copper
inductor (in oxide).
OI OI 59 0
3.0 2.0
ILAST8x
or OI
Open
Tapered via for connecting the
last copper metal to LB.
VV 70 0
VV
VVLRG 70 15
Minimum
On Wafer1 Aligns to2
Mask Level Design Level GDSII Shape Description
Data Line (μm) Space(μm)
Type
Layer
No.
Rectangular via for connecting
the last copper metal to LB.
VVBAR 70 1
Blocked VV 4.0 2.0
Aluminum wire level with oxide
LB LB 69 0 dielectric; uppermost wiring level
stack option
Open LB - -
Opening in the final polyimide
passivation.
LV LV 28 0 Required for C4 terminals and
fuses.
Open LB - -
Opening in the final polyimide
passivation.
LV LV_ROUND 780 233
Required for round copper pillar.
Open LB - -
Opening in the oxide/nitride film
covering LB and LBDUMMY
RS RS_ROUND 780 234
Required for round copper pillar.
Open LB - -
Under Bump Metallization
(UBM).
2NB 2NB_ROUND 780 235
Required for round copper pillar.
Open LB - -
Opening in the final polyimide
passivation.
LV LV_OBLONG 780 164 Required for non-round copper
pillar.
Open LB - -
Opening in the oxide/nitride film
covering LB and LBDUMMY
RS RS_OBLONG 780 162 Required for non-round copper
pillar.
Open LB - -
Under Bump Metallization
(UBM).
2NB 2NB_OBLONG 780 163
Required for round copper pillar.
Open LB 14.0 6.0
Opening in the final polyimide
DV DV 29 0
passivation; required for designs
that use wire-bond pads. Opening
for fuses when present.
Notes:
1. Blocked = after exposure, resist covers the regions where the level is drawn/generated. “On wafer” is a combination
of resist and mask tone.
2. For additional information on level alignment and overlay dimensions, consult the front-end-of-line (FEOL) and
back-end-of-line (BEOL) process assumption documents available through your GLOBALFOUNDRIES technical
representative.
3. The lithographic strategy for the PC level is a PC (attenuated) + CT (cut) dual-mask strategy.
4. Alignment must be measured to the primary level.
5. Applies to the CA design level only, not CABAR or CAREC.
6. For the Mx levels, where Mx = M1-M6, alignment is controlled to the Mx-1 level below; for thr Vx levels, where
Vx = V1-V5, alignment is controlled to the Mx+1 level.
8. The minimum values do not represent the minimum values for runlength > 0 μm in any case. Please carefully check
the design rules.
2.2 Non-Design Mask Levels (Node 1)
The following table presents the generated mask levels. Designers do not draw these levels. Any designer-drawn shapes
on these mask levels are discarded and replaced by generated shapes during data preparation.
Table 4: Non-Design Mask Levels (Node 1)
Associated with CAD Level
Minimum Space
(μm)
Minimum Line
(μm)
Mask Level Shape Description On Wafer1 Aligns to2
Complement of the Blocked RX 0.24 0.24 NW
p-well implant
BF
I/O PFET well Open RX 0.24 0.24 EG
adjustment implant
IP
Deep n-type implant for Open RX 1.45 3.5 DNW
isolation of p-well
N3
regions for triple-well
NFETs
I/O NFET well Open RX 0.24 0.24 EG
adjustment implant
IN
SRAM NFET Vt Open RX 0.24 0.216 CELLSNR
adjustment implant
NV
SRAM PFET Vt Open RX 0.216 0.24 CELLSNR
adjustment implant
PV
Medium or thick Blocked RX 0.4 0.32 EG
gate-oxide area
ZG
NFET n+ polysilicon Blocked RX 0.16 0.16 BP
predoping
ZP
PFET p+ polysilicon Open RX 0.16 0.16 BP
predoping
ZN
Low Vt NFET Open RX 0.16 0.16 LVTN
halo/extension implant
XW
Low Vt PFET Open RX 0.16 0.16 LVTP
halo/extension implant
LW
NFET halo/extension Blocked RX 0.16 0.16 NFET
Base Implant
4BH
Associated with CAD Level
Minimum Space
(μm)
Minimum Line
(μm)
Mask Level Shape Description On Wafer1 Aligns to2
PFET halo/extension Open RX 0.16 0.16 PFET
Base Implant
4PH
Embedded PFET SiGe Open RX 0.16 0.16 PFET
source/drain recess etch
TJ
and SiGe epitaxial
growth
I/O NFET Open RX 0.16 0.16 EG NFET
halo/extension implant
GN
I/O PFET halo/extension Open RX 0.16 0.16 EG PFET
implant
GP
Thin-oxide NFET Blocked RX 0.16 0.16 NFET
halo/extension top-up
implant
BH
Thin-oxide PFET Open RX 0.16 0.16 PFET
halo/extension top-up
implant
PH
RDSTK_8TLV and
CELLSNR
SRAM NFET top-up Open RX 0.16 0.16
implant
2HN
SRAM NFET Open RX 0.16 0.16 CELLSNR
halo/extension implant
HN
SRAM PFET Open RX 0.16 0.16 CELLSNR
halo/extension implant
HP
Zero-Vt NFET Open RX 0.16 0.16 ZVT
halo/extension implant.
XH
P+ source or drain Open RX 0.16 0.16 BP
implant
BN
N+ source or drain Open RX 0.16 0.16 NPLUS
implant
BP
Passivation opening, Open RX 30 10 LV/DV
generated from LV or
DV.
RS
Via for connecting Open MLAST1X 0.46 0.44 YS OR YSBAR
MLAST1X to JA
2YS
Notes:
1. Blocked = after exposure, resist covers the regions where the level is drawn / generated. “On wafer” is a combination
of resist and mask tone.
2. For additional information on level alignment and overlay dimensions, consult the FEOL and BEOL process
assumption documents available from your GLOBALFOUNDRIES technical representative.
3. The minimum values do not represent the minimum values for runlength >0 μm in any case. Please carefully check
the design rules.
2.3 Non-Design Mask Levels (Node 2)
The following table presents the generated mask levels. Designers do not draw these levels. Any designer-drawn shapes
on these mask levels are discarded and replaced by generated shapes during data preparation.
Table 5: Non-Design Mask Levels (Node 2)
Associated with CAD Level
Minimum Space
(μm)
Minimum Line
(μm)
Mask Level Shape Description On Wafer1 Aligns to2
Complement of the Blocked RX 0.24 0.24 NW
p-well implant including
I/O NFET well.
3BF
I/O PFET well Open RX 0.24 0.24 EG
adjustment implant
IP
Deep n-type implant for Open RX 1.45 3.5 DNW
isolation of p-well
N3
regions for triple-well
NFETs
SG logic NFET Vt Open RX 0.24 0.24 EG
adjustment implant
4IN
SRAM NFET Vt Open RX 0.24 0.216 CELLSNR
adjustment implant
3NV
SRAM PFET Vt Open RX 0.216 0.24 CELLSNR
adjustment implant
PV
Medium or thick Blocked RX 0.4 0.32 EG
gate-oxide area
ZG
NFET n+ polysilicon Blocked RX 0.16 0.16 BP
predoping
ZP
PFET p+ polysilicon Open RX 0.16 0.16 BP
predoping
ZN
Low Vt NFET Open RX 0.16 0.16 LVTN
halo/extension implant
XW
Low Vt PFET Open RX 0.16 0.16 LVTP
halo/extension implant
LW
NFET halo/extension Blocked RX 0.16 0.16 NFET
Base Implant
4BH
(Thin-oxide + 3Å) Open RX 0.16 0.16 HVTN
NFET extension / halo
implant
9BH
(Thin-oxide + 3Å) PFET Open RX 0.16 0.16 HVTP
extension / halo implant.
9PH
HG (Thin-oxide + 3Å) Open RX 0.26 0.26 HVTP, HVTN
PFET halo/extension Open RX 0.16 0.16 PFET
Base Implant
4PH
Associated with CAD Level
Minimum Space
(μm)
Minimum Line
(μm)
Mask Level Shape Description On Wafer1 Aligns to2
Embedded PFET SiGe Open RX 0.16 0.16 PFET
source/drain recess etch
TJ
and SiGe epitaxial
growth
I/O NFET Open RX 0.16 0.16 EG NFET
halo/extension implant
GN
I/O PFET halo/extension Open RX 0.16 0.16 EG PFET
implant
GP
Thin-oxide NFET Blocked RX 0.16 0.16 NFET
halo/extension top-up
implant
BH
Thin-oxide PFET Open RX 0.16 0.16 PFET
halo/extension top-up
implant
PH
RDSTK_8TLV and
CELLSNR
SRAM NFET top-up Open RX 0.16 0.16
implant
2HN
SRAM NFET Open RX 0.16 0.16 CELLSNR
halo/extension implant
HN
SRAM PFET Open RX 0.16 0.16 CELLSNR
halo/extension implant
HP
Zero-Vt NFET Open RX 0.16 0.16 ZVT
halo/extension implant.
XH
P+ source or drain Open RX 0.16 0.16 BP
implant
BN
N+ source or drain Open RX 0.16 0.16 NPLUS
implant
BP
Passivation opening, Open RX 30 10 LV/DV
generated from LV or
DV.
RS
Via for connecting Open MLAST1X 0.46 0.44 YS OR YSBAR
MLAST1X to JA
2YS
Notes:
1. Blocked = after exposure, resist covers the regions where the level is drawn / generated. “On wafer” is a combination
of resist and mask tone.
2. For additional information on level alignment and overlay dimensions, consult the FEOL and BEOL process
assumption documents available from your GLOBALFOUNDRIES technical representative.
3. The minimum values do not represent the minimum values for runlength >0 μm in any case. Please carefully check
the design rules.
2.4 Design and Utility Levels
The following tables present the design levels drawn by designers. All designs require the GUARDEDG level.
2.4.1 Back-End-of-Line (BEOL) Design and Utility Levels
Table 6: Back-End-of-Line (BEOL) Design and Utility Levels
Description Associated with
GDSII
Design Level
Layer No. Data Type
Optional level used in wire-bond Wire-bond pads
pad design to identify the area
CLVS 12 144
between staggered pads as
CLVS-like structures during
checking.
Used to specify the area for C4 ball C4 pads
placement, but not open to level LV.
LVDUMMY 28 6
Used to specify the area for bump Copper Pillar Pads
placement, but not connected to LM
LBDUMMY 69 6
with VV. Aluminum pad for floating
dummy bumps.
Place & Route
Blockage layer for Place & Route
purpose.
Mx_BLOCKAGE: - -
61
Mx = M1 15
Mx = M2 17
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
MxFILL exclusion for copper wiring
levels
Optional level placed over specific
areas of the chip at the customer’s
MxEXCLUD: - -
2
Mx = M1 15
discretion to prevent the generation
of MxFILL shapes.
Mx = M2 17
Mx = M3 19
Mx = M4 21
Description Associated with
GDSII
Design Level
Layer No. Data Type
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
MxFILL exclusion
Optional level placed over specific
metal wires of the chip at the
MxCRITEXCL: - -
64051
Mx = M1 15
customer’s discretion to increase
Mx = M2 17
exclusion distance from wire to
FILL shapes.
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
MxFILL layer
Used to fill empty space on Mx to
meet the manufacturing process
pattern density requirements.
MxFILL: - -
35
Mx = M1 15
Mx = M2 17
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Description Associated with
GDSII
Design Level
Layer No. Data Type
Mx = OI 59
MxFILL layer
Used to fill empty space on Mx to
meet the manufacturing process
MxZFILL: - -
700
Mx = M1 15
pattern density requirements.
Mx = M2 17
(Optional level added to design by
customer.)
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
Mx rectangular dummy (Reserved). MxFILL layer
MxOPCFILL: - -
55
Mx = M1 15
Mx = M2 17
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
Reserved level used to mark final Probe pads
polyimide passivation probe pad
openings.
PROBE 12 62
VxFILL exclusion for copper wiring
levels
Optional level placed over specific
areas of the chip at the customer’s
VxEXCLUD: - -
2
Vx = V1 16
discretion to prevent the generation
of VxFILL shapes.
Vx = V2 18
Vx = V3 20
Description Associated with
GDSII
Design Level
Layer No. Data Type
Vx = V4 22
Vx = V5 32
Vx = WT 88
Vx = YX 237
Vx = YZ 238
Vx = XA 135
Vx = YS 33
Vx = YR 196
Vx = XD 191
Vx = JQ 58
VxFILL layer
Used to connect MxFILL and
M(x+1)FILL to provide mechanical
rigidity to manufactured chip.
VxFILL: - -
35
Vx = V1 16
Vx = V2 18
Vx = V3 20
Vx = V4 22
Vx = V5 32
Vx = WT 88
Vx = YX 237
Vx = YZ 238
Vx = XA 135
Vx = YS 33
Vx = YR 196
Vx = XD 191
Vx = JQ 58
VxFILL layer
Used to improve the CPI
performance of a chip. (Optional
level added to design by customer.)
VxZFILL: - -
700
Vx = V1 16
Vx = V2 18
Vx = V3 20
Vx = V4 22
Vx = V5 32
Vx = WT 88
VxFILL layer
Used to improve the CPI
performance of a chip. (Optional
level added to design by customer.)
VxZFILLLRG: - -
Vx = V1 16 708
Description Associated with
GDSII
Design Level
Layer No. Data Type
Vx = V2 18
Vx = V3 20
Vx = V4 22
Vx = V5 32
2.4.2 Device Design and Utility Levels
Table 7: Device Design and Utility Levels
Description Associated with
GDSII
Design Level
Layer No. Data Type
Used to block p-well implants from BFMOAT devices
BFMOAT regions that isolate
regions to create a resistive path.
BFMOAT 5 17
Placed over bipolar transistors. It is PNP & NPN structures
used to generate level PH and
eliminate halos.
BIPOLAR 12 54
Marking layer for rectangular fuse Fuses
contacts.
CAFUSE 14 4
DEVICE_MATCH 212 85 Marking layer for device matching. Matching FETs
DIODE 62 4 Marking layer for diodes. Diodes
DRES 12 222 Marking layer for diffusion resistors. Diffusion resistors
EFUSE 12 98 Marking layer for an electrical fuse. eFUSE
Marking layer for 1.5V I/O devices
medium-oxide (EG) I/O devices
EGV 12 44
Marking layer for eLVT NFET eLVT devices
devices.
ELVTN 780 57
Marking layer for eLVT PFET eLVT devices
devices.
ELVTP 780 58
Marking layer for fuse anode PC Fuses
shape.
FUSEANODE 212 133
Marking layer for blocking -
halo/extension implants.
HALO_BLK 1020 0
Marking layer for -
horizontally-oriented transistor
gates.
HOR_GATE 1016 0
IND 12 38 Marking layer for inductors. Inductor design rules
Marking layer for low-Vt NFET Low-Vt devices
devices.
LVTN 780 11
Description Associated with
GDSII
Design Level
Layer No. Data Type
Marking layer for Low-Vt PFET Low-Vt devices
devices.
LVTP 200 14
Marking layer for High-Vt NFET High-Vt devices
Devices.
HVTN 780 248
Marking layer for High-Vt PFET High-Vt devices
Devices.
HVTP 200 17
Analog Low-Vt devices
Marking layer for Analog Low-Vt
FET.
ALVT 780 78
Wiring nets
Marking layer for copper wire nets
with a maximum VDD of 1.0V.
MxVDD1V0: - -
100
Mx = M1 15
Mx = M2 17
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
Wiring nets
Marking layer for copper wire nets
with a maximum VDD of 1.2V.
MxVDD1V2: - -
702
Mx = M1 15
Mx = M2 17
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Description Associated with
GDSII
Design Level
Layer No. Data Type
Mx = OI 59
Wiring nets
Marking layer for copper wire nets
with a maximum VDD of 1.5V.
MxVDD1V5: - -
101
Mx = M1 15
Mx = M2 17
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
Wiring nets
Marking layer for copper wire nets
with a maximum VDD of 1.8V.
MxVDD1V8: - -
102
Mx = M1 15
Mx = M2 17
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
Wiring nets
Marking layer for copper wire nets
with a maximum VDD of 2.1V.
MxVDD2V1: - -
Mx = M1 15 720
Mx = M2 17
Description Associated with
GDSII
Design Level
Layer No. Data Type
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
Wiring nets
Marking layer for copper wire nets
with a maximum VDD of 2.5V.
MxVDD2V5: - -
103
Mx = M1 15
Mx = M2 17
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
Wiring nets
Marking layer for copper wire nets
with a maximum VDD of 3.3V.
MxVDD3V3: - -
104
Mx = M1 15
Mx = M2 17
Mx = M3 19
Description Associated with
GDSII
Design Level
Layer No. Data Type
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
Wiring nets
Marking layer for copper wire nets
with a maximum VDD of 5.0V.
MxVDD5V0: - -
105
Mx = M1 15
Mx = M2 17
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
Reserved marking layer for NFET NCAP rules
in n-well capacitors.
NCAP 12 47
NWRES 4 21 Marking layer for n-well resistors. N-well resistors
OUTLINE_RF 62 65 Marking layer for RF devices. RF devices
Marking layer for 1.8V Thick-oxide devices
medium-oxide (EG) device, or 3.3V
thick-oxide (ZG) device.
OVERDRIVE 12 163
Marker layer used for identifying Silicided resistor
the body of the silicided resistor.
RES_BODY 780 140
Marking layer for PFET in p-well PCAP rules
capacitor.
PCAP 12 86
Marking layer for the rectangular Fuses
PC shape connecting the cathode
end and anode end.
PCFUSE 7 4
Description Associated with
GDSII
Design Level
Layer No. Data Type
Marker shape placed over a gate that Selective Timing Bias
receives - 4 nm per shape
compensation.
PCSTN4 7 213
Marker shape placed over a gate that Off current reduction
receives + 4 nm per shape
compensation.
PCSTP4 7 221
Marking layer for polysilicon Polysilicon resistors
resistors.
PRES 12 201
Marking layer for Super-Low-Vt Super-Low-Vt devices
NFET devices
SLVTN 212 52
Marking layer for Super-Low-Vt Super-Low-Vt devices
PFET devices
SLVTP 212 53
Deep n-type implant for isolation of Triple well
p-well regions for triple-well
NFETs.
T3 3 0
Shape used to identify transmission RF devices
lines for LVS.
TRANSMIS 212 7
Marking layer for 1.2V I/O devices.
medium-oxide (EG) device, or 1.8V
thick-oxide (ZG) device.
UNDERDRIVE 1007 0
Marking layer for 110% scale up UPSIZE
region.
UPSIZE 12 249
Marker on BEOL Capacitor for RF LVS
LVS
VNCAP2 780 141
VNCAPHV 62 110 Marking layer for APMOM. APMOM capacitor rules
Marking layer for APMOM with 3.3V capable APMOM capacitor.
70nm finger width and 70nm space.
APMOM77 780 160
Marking layer for APMOM with 5V capable APMOM capacitor.
110nm finger width and 110nm
space.
APMOM11 780 179
Marking layer for the vertical APMOM capacitor rules
natural capacitor. It is used in design
VNCAP_COUNT 62 41
checking to indicate the number of
metal levels in the capacitor design.
Marking layer for the vertical APMOM capacitor rules
natural capacitor. It is used in design
VNCAP_Mx: - -
Mx = M1 15 80
checking to validate correct
Mx = M2 17 capacitor construction.
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Description Associated with
GDSII
Design Level
Layer No. Data Type
Marking layer for the vertical APMOM capacitor rules
natural capacitor. It is used in design
VNCAP_PARM 62 40
checking to indicate the capacitor
starting metal level.
Used to block tailored-surface Zero-Vt devices
implants from Zero-Vt devices.
ZVT 12 105
Marking layer for Core Zero-Vt Core Zero-Vt devices
devices
ZVT_CORE 12 107
Marking layer for NW resistor under NW resistor under STI devices
STI
LVS0 200 200
RPO_DIODE 780 237 Marking layer for RPO_DIODE. RPO_DIODE
LDFET 212 164 Marking layer for LDFET transistor LDFET
PW2V 780 70 enforces Pwell under 5.0V LDMOS 5.0V LDFET
LDFET3P3V 780 246 Marking layer for 3.3V LDFET 3.3V LDFET
LDFET5P0V 780 247 Marking layer for 5.0V LDFET 5.0V LDFET
MOM_excludem1 1015 1082 MOM Exclude M1 MOM
MOM_excludem2 1015 1083 MOM Exclude M2 MOM
MOM_excludem3 1015 1084 MOM Exclude M3 MOM
MOM_excludem4 1015 1085 MOM Exclude M4 MOM
MOM_excludem5 1015 1086 MOM Exclude M5 MOM
MOM_excludem6 1015 1088 MOM Exclude M6 MOM
2.4.3 ESD Design and Utility Levels
Table 8: ESD Design and Utility Levels
Description Associated with
GDSII
Design Level
Layer No. Data Type
ESD rules
Placed over ESD charged-device
model (CDM) structures connected
to a pad and used for checking.
ESD_CDM 12 88
Placed over ESD resistance- and
capacitance-triggered power clamp
ESD_CLAMP 12 227
structures connected to a power
supply pad and used for checking.
Placed over ESD Human Body
Model (HBM) structures connected
to a pad and used for checking.
ESD_HBM 12 94
Description Associated with
GDSII
Design Level
Layer No. Data Type
Placed over self-protecting ESD
HBM NFET structures connected to
a pad and used for checking.
ESD_HBMSP 12 97
Marking layer for the poly-bound
ESD diode.
ESD_POLYB 212 122
Placed over the stacked devices
(separate diffusions) required for
meeting ESD design rules.
ESD_STACK 12 219
Placed over ESD HBM
silicon-controlled rectifier (SCR)
ESDSCR_HBM 212 16
structures connected to a pad and
used for checking.
LBESD 69 60 Placed over ESD-specific pads.
Marking layer used to identify metal
levels in ESD/antenna DRC decks.
MxESD: - -
60
Mx = M1 15
Mx = M2 17
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
2.4.4 Front-End-of-Line (FEOL) Design and Utility Levels
Table 9: Front-End-of-Line (FEOL) Design and Utility Levels
Description Associated with
GDSII
Design Level
Layer No. Data Type
Used to fill empty space on CT to CT FILL layer
meet the manufacturing process
pattern density requirements.
CTFILL 247 35
CT FILL shape reserved for HiP fill synthesis
GLOBALFOUNDRIES 3-stage HiP
fill.
CTGFILL 247 704
Description Associated with
GDSII
Design Level
Layer No. Data Type
Used to fill empty space on CT to CT FILL layer
meet the manufacturing process
CTZFILL 247 700
pattern density requirements.
(Optional level added to design by
customer.)
Fill marking layer reserved for HiP fill synthesis
GLOBALFOUNDRIES 3-stage HiP
fill (HIP.A.cell).
HIP_EQUALIZER 780 63
Fill marking layer reserved for HiP fill synthesis
GLOBALFOUNDRIES 3-stage HiP
fill (HIP.B.cell).
HIP_EQUALIZER1 780 64
Fill marking layer reserved for HiP fill synthesis
GLOBALFOUNDRIES 3-stage HiP
fill (HIP.A.CTcell2).
HIP_EQUALIZER2 780 65
Fill marking layer reserved for HiP fill synthesis
GLOBALFOUNDRIES 3-stage HiP
fill (HIP.B.CTcell2).
HIP_EQUALIZER3 780 66
Drawn marking layer that must ACLV rules
cover all ACLV critical gates.
PCCRIT 7 29
Customer-specific exclusion marker PCFILL exclusion
layer to prevent an automatic fill
PCCRITEXCL 7 64051
synthesis tool from generating
PCFILL shapes.
Optional level placed over specific PCFILL exclusion
areas of the chip at the customer’s
PCEXCLUD 7 2
discretion to prevent the generation
of PCFILL shapes.
Used to fill empty space on PC to PC FILL layer
meet the manufacturing process
pattern density requirements.
PCFILL 7 35
PCGFILL 7 704 non-OPC PC FILL shape reserved HiP fill synthesis
for GLOBALFOUNDRIES 3-stage
HiP fill.
PCGFILLOPC 7 705 PC FILL shape reserved for HiP fill synthesis
GLOBALFOUNDRIES 3-stage HiP
fill. This shape will receive OPC.
Used to fill empty space on PC to PC FILL layer
meet the manufacturing process
PCZFILL 7 700
pattern density requirements.
(Optional level added to design by
customer.)
Customer-specific exclusion marker RXFILL exclusion
layer to prevent an automatic fill
RXCRITEXCL 2 64051
Description Associated with
GDSII
Design Level
Layer No. Data Type
synthesis tool from generating
RXFILL shapes.
Optional level placed over specific RXFILL exclusion
areas of the chip at the customer’s
RXEXCLUD 2 2
discretion to prevent the generation
of RXFILL shapes.
Used to fill empty space on RX to RX FILL layer
meet the manufacturing process
pattern density requirements.
RXFILL 2 35
RXGFILL 2 704 RX FILL shape reserved for HiP fill synthesis
GLOBALFOUNDRIES 3-stage HiP
fill.
RXGFILLOPC 2 705 RX FILL shape reserved for HiP fill synthesis
GLOBALFOUNDRIES 3-stage HiP
fill. This shape will receive OPC.
Used to fill empty space on RX to RX FILL layer
meet the manufacturing process
RXZFILL 2 700
pattern density requirements.
(Optional level added to design by
customer.).
TJGFILL 212 704 TJ FILL shape reserved for HiP fill synthesis
GLOBALFOUNDRIES 3-stage HiP
fill.
Customer-specific exclusion marker NWFILL exclusion
layer to prevent an automatic fill
NWCRITEXCL 4 64051
synthesis tool from generating
NWFILL shapes.
Optional level placed over specific NWFILL exclusion
areas of the chip at the customer’s
NWEXCLUD 4 2
discretion to prevent the generation
of NWFILL shapes.
Used to fill empty space on NW to NW FILL layer
meet the manufacturing process
pattern density requirements.
NWFILL 4 35
Used to fill empty space on NW to NW FILL layer
meet the manufacturing process
NWZFILL 4 700
pattern density requirements.
(Optional level added to design by
customer.)
2.4.5 General Design and Utility Levels
Table 10: General Design and Utility Levels
Description Associated with
GDSII
Design Level
Layer No. Data Type
A rectangular shape that includes all Chip guard ring, chamfer, kerf
design shapes and the crack_stop.
CHIPEDGE 62 1
Chip guard ring
A rectangular shape with chamfered
corners enclosing all chip design
shapes.
GUARDEDG 12 36
Marking layer for the chip guard
ring drawn to exactly cover the
widest metal in the chip guard ring.
GUARDRNG 12 71
Placed over product labels to assist Labels
with DRC.
LOGOBND 62 5
Sealring marking layer from MOB
customer
MOB 62 13
Marking level used to check if the LVS
PC level is in the preferred
orientation for LVS.
PCORIENT 7 106
Reserved marking layer for the Design waivers
waived design rule values verified
during DRC.
WVR 62 0
2.4.6 Kerf Design and Utility Levels
Table 11: Kerf Design and Utility Levels
Description Associated with
GDSII
Design Level
Layer No. Data Type
Used during the automatic kerf Kerf design and mask merge
merge process during mask
PROTECT 102 18
assembly of correct positive (CP)
masks; associated with preventing
mask background overwrite.
2.4.7 PCI Design and Utility Levels
Table 12: PCI Design and Utility Levels
Description Associated with
GDSII
Design Level
Layer No. Data Type
Mask manufacturing
Marker layer used to identify PCI
structure after swap cell
xxPCI: - -
712
xx = RX 2
xx = PC 7
xx = CA 14
xx = M1 15
xx = M2 17
xx = M3 19
xx = M4 21
xx = M5 31
xx = M6 44
TCDMRK_FH 780 84 Marker for TCDDMY_FH cell PCD
TCDMRK_FV 780 85 Marker for TCDDMY_FV cell PCD
TCDMRK_FM 780 86 Marker for TCDDMY_FMall cell PCD
INDIEOVL1 780 229 Marker for GFOVL1 cell PCD
2.4.8 Reserved Design and Utility Levels
Table 13: Reserved Design and Utility Levels
Description Associated with
GDSII
Design Level
Layer No. Data Type
Reserved Reserved levels
PAHVFET 780 241
5VHVFET 780 87
33VHVFET 780 88
ADM 212 3
DIFFNCAP 212 6
HAVAR 212 5
HVOLFET 212 57
JFET 212 58
KERFEXCL 101 250
OUTLINE 62 21
Description Associated with
GDSII
Design Level
Layer No. Data Type
SCHKY 212 59
TEXT 63 0
2.4.9 ROM Design and Utility Levels
Table 14: ROM Design and Utility Levels
Description Associated with
GDSII
Design Level
Layer No. Data Type
STD_ROM 1023 0 ROM ID marker. Reserved levels
STD_ROM_GF 1023 64050 ROM Cell marker. ROM
ROM_SD_S 780 10 SD ROM marker. Reserved levels
ROM_SD_GF 1010 64050 SD ROM marker. ROM
2.4.10 SRAM Design and Utility Levels
Table 15: SRAM Design and Utility Levels
Description Associated with
GDSII
Design Level
Layer No. Data Type
SRAM
Split CA contact on one of the two
CA masks.
CA_E1 14 235
Split CA contact on one of the two
CA masks.
CA_E2 14 236
CAREC_E1 14 237 Rectangular CA.
CAREC_E2 14 238 Rectangular CA.
CA NODECOMPOSITION marker
layer.
CA_NODECOMP 14 63
Marking level for core bit cell only; SRAM bit cell kit only
not used for dummy cell. Used for
CELLACTIVE 12 96
SRAM DRC, and optical proximity
correction (OPC), if applicable.
Marking layer for SRAM DRC, SRAM bit cell kit only
LVS checking, and optical
CELLSNR 62 6
proximity correction (OPC), if
applicable.
SRAM
SRAM_SA 780 1 HD cell marker.
SRAM_SB 780 2 HC cell marker.
SRAM_SC 780 3 DP cell marker.
Description Associated with
GDSII
Design Level
Layer No. Data Type
SRAM_SD 780 4 8T-LV cell marker.
SRAM_SE 780 5 8T-LR cell marker.
SRAM_SG 780 7 8T-MX cell marker.
SRAM_SH 780 8 HP cell marker.
SRAM_SJ 780 9 DPP cell marker.
SRAM_SK 780 73 DPD cell marker.
RDSTK_8TLV 1028 1082 8T-LV Read-Stack marker.
RDSTK_8TLR 1028 1080 8T-LR Read-Stack marker.
2.5 Data Preparation Levels
The following table presents the levels generated during data preparation. Designers must not use these levels.
Table 16: Design Services and Data Preparation Levels
Description Associated with
GDSII
Design Level
Layer No. Data Type
Reserved. Used to designate regions for mask inspection. Mask merge
64259 0
DIR
Reserved. Used to exclude xx regions from mask inspection. Mask merge
DNIRxx1 - -
Optical rule
checking
Reserved. Used to prevent optical rule checking.
62 3
DNORC
Boolean data
preparation
Reserved. Custom level removed during Boolean data
preparation.
NIXxx1 - -
Description Associated with
GDSII
Design Level
Layer No. Data Type
Data preparation
Reserved. Prevents data preparation on xx shapes touching
NONIAGxx.
NONIAGxx1 - -
Reserved. For PC sizing. OPC
- -
PC_CUSLM_SIZE
Reserved. For PC sizing. OPC
- -
PC_GFSLM_SIZE
Reserved. Via fill shapes are used in kerf structures only. Kerf structures
- -
VxFILL, where Vx =
V1–V5, YX, YZ, XA, JQ or
VV
Reserved. OPC
xxANCHOR1 - -
Boolean data
preparation
Reserved. Custom level added during Boolean data
preparation.
xxCUS1 - -
Pattern density
Reserved. Used to fill empty space on xx to meet the
manufacturing process pattern density requirements.
xxFILL, where xx = RX, PC,
CT or any metal level
Reserved. OPC
xxNOTCH1 - -
xxOPC1 - -
xxOPCHOLE1 - -
Metal pattern
density
Reserved. Used by GLOBALFOUNDRIES Design Services
to identify very wide copper lines.
MxPLANE - -
89
Mx = M1 15
Mx = M2 17
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
Reserved Pattern density
xxHOLE - -
37
Mx = RX 2
Mx = PC 7
Description Associated with
GDSII
Design Level
Layer No. Data Type
Mx = M1 15
Mx = M2 17
Mx = M3 19
Mx = M4 21
Mx = M5 31
Mx = M6 44
Mx = BA 89
Mx = IA 136
Mx = IB 137
Mx = JA 179
Mx = JB 180
Mx = OI 59
Notes:
1. “xx” can be any 28LPSe-defined alphanumeric character combination unless otherwise noted.
2.6 Kerf Design Levels
The following table presents design levels that designers must not use.
Table 17: Kerf Design Levels
Description Associated with
GDSII
Design Level
Layer No. Data Type
Kerf design and
mask merge
Reserved. Used during the CP mask assembly automatic kerf merge
process associated with shutter blade positioning.
FRAME 102 10
Kerf design
Reserved. Used to inhibit pattern fill generation inside certain optical
and alignment structures.
KERFEXCL 101 250
Reserved. Used in the kerf design and merged during mask assembly.
- -
KERFxx1
71
xx = RX 2
xx = PC 7
Description Associated with
GDSII
Design Level
Layer No. Data Type
xx = M1 15
xx = M2 17
xx = M3 19
xx = M4 21
xx = M5 31
xx = M6 44
KV - - Reserved. Used to open kerf alignment marks.
Kerf design and
mask merge
Reserved. Used during the correct negative (CN) mask assembly
automatic kerf merge process associated with data extremes.
NEGMKS 102 4
PJBERG - - Reserved. Lithography
Mask process
control images
PJING - - Reserved.
Kerf design and
mask merge
Reserved. Used during the CP mask assembly automatic kerf merge
process associated with data extremes.
POSMKS 102 5
TJBERG - - Reserved. Lithography
Mask process
control images
TJING - - Reserved.
Alignment
reference
ZL 12 92 Zero level alignment / calibration.
Notes:
1. Can be any technology-defined alphanumeric character combination.
2.7 Reference Levels
The following table presents the levels used to reference specific metal and via levels within the various technology
metallization options. Designers must not use these levels for drawing design elements.
Table 18: Reference Levels
Reference Level Description
LM Last copper metal level.
Defines a 1x (thin) metal level (M3-M6) beyond M2.
M(x + 1)
Last 1x (thin) metal level (M5-M6) in the selected metallization option.
MLAST1X
Defines a 1x (thin) metal level (M2-M6) beyond M1.
Mx
Defines the via level (V2-V5) between M(x + 1) and M(x + 2).
V(x + 1)
Defines the via level (V2BAR-V5BAR) between M(x + 1) and M(x + 2).
V(x + 1)BAR
Last 1x (thin) via level (V4-V5) in the selected metallization option.
VLAST1X
Defines the via level (V1-V5) between Mx and M(x + 1).
Vx
Defines the via level (V1BAR-V5BAR) between Mx and M(x + 1).
VxBAR
Defines the via level (V1LRG-V5LRG) between Mx and M(x + 1).
VxLRG
BLAST2X Last 2x metal level in the selected metallization option.
ILAST8X Last 8x metal level in the selected metallization option.
2.8 Mask Alignment Sequence and Metallization Options
2.8.1 FEOL Sequence
This section is under construction.
2.8.2 Metal Stack Naming Convention
Compared to predecessor technologies, the metal stack designation scheme uses additional characters to denote the wire
thickness and dielectric type (low-k, ultralow-k, and so forth) present in the stack. The metal stack designation scheme
is:
xBa_yDc_..._LB,
where:
number of metal levels in dielectric type B of wire thickness a
=
x
number of metal levels in dielectric type D of wire thickness c
=
y
= final metal level
LB
Dielectric types are represented by a single uppercase character (that is, L = low-k, T = TEOS/FTEOS, U = ultralow-k).
Wire thicknesses are designated as 1x (thin), 2x (thick), and so forth. Additional designations will be created as needed.
2.8.3 BEOL Metallization Options
The following table presents the existing back-end-of-line (BEOL) metallization options. Contact your
GLOBALFOUNDRIES technical representative if another option is required.
Please contact your GLOBALFOUNDRIES technical representative if large VV option or thin LB option is required.
Not all BEOL stacks are supported having PDK enabled. Please contact your GLOBALFOUNDRIES technical
representative to enable a stack currently not enabled in the PDK.
Table 19: Allowed metal options and packaging options
Option Stack Name Node 1 Node 2
PDK Not Enabled PDK Not Enabled
5U1x_1T8x_LB (LB option: thick
only)
1
PDK Enabled PDK Not Enabled
6U1x_1T8x_LB (LB option: thick
and thin)
2
PDK Not Enabled PDK Not Enabled
5U1x_1T30x_LB (LB option:
thick only)
3
PDK Enabled PDK Not Enabled
6U1x_1T30x_LB (LB option:
thick only)
4
PDK Not Enabled PDK Not Enabled
5U1x_1T8x_1T30x_LB (LB
option: thick only)
5
PDK Not Enabled PDK Not Enabled
4U1x_1T30x_LB (LB option:
thick only)
10
PDK Not Enabled PDK Enabled
6U1x_2T8x_LB (LB option: thick
only)
11
PDK Not Enabled PDK Enabled
6U1x_2T10x_LB (LB option:
thick and thin)
12
Option Stack Name Node 1 Node 2
PDK Not Enabled PDK Enabled
6U1x_1T10x_LB (LB option:
thick and thin)
14
PDK Enabled PDK Not Enabled
6U1x_1T8x_1T30x_LB (LB
option: thick only)
15
PDK Not Enabled PDK Not Enabled
3U1x_1L2x_2T8x_LB (LB
option: thick only)
16
PDK Not Enabled PDK Enabled
5U1x_1L2x_1T8x_LB (LB
option: thick and thin)
17
PDK Not Enabled PDK Enabled
6U1x_1L2x_1T8x_LB (LB
option: thick and thin)
18
PDK Not Enabled PDK Not Enabled
5U1x_1L2x_2T8x_LB (LB
option: thick and thin)
19
PDK Not Enabled PDK Not Enabled
6U1x_1L2x_1T10x_LB (LB
option: thin only)
20
Notes:
2. 2NB layer is generated from LV layer.
3. PSPI for wirebond is optional. DV design layer needs to be drawn in order to generate RS.
4. RS layer is generated from DV (Wire-bond option) or LV (SnAG FC option).
2.8.4 Packaging Options
Table 20: Packaging Options Offered
LB Packaging Options
Option2
Metal Stack Options
Bump Option 4
(Non-round Copper
Pillar Bump with
PSPI)
Bump Option
3
(Round
Copper Pillar
Bump
without
PSPI)4
Bump Option 2
(Round Copper Pillar
Bump with PSPI)
Bump
Option 1
(Lead-Free
SnAg Bump)
Wire-bond3
Not Allowed1
supported
Option 1: 5U1x_1T8x_LB Thick Allowed Allowed Allowed1
Not Allowed1
supported
Thick Allowed Allowed Allowed1
Option 2: 6U1x_1T8x_LB
Not Not Allowed
supported
Thin Allowed Not Allowed Not Allowed
Not Allowed1
supported
Option 3: 5U1x_1T30x_LB Thick Allowed Allowed Allowed1
Not Allowed1
supported
Option 4: 6U1x_1T30x_LB Thick Allowed Allowed Allowed1
Not Allowed1
supported
Option 5: Thick Allowed Allowed Allowed1
5U1x_1T8x_1T30x_LB
Not Allowed1
supported
Option 10: 4U1x_1T30x_LB Thick Allowed Allowed Allowed1
Not Allowed1
supported
Option 11: 6U1x_2T8x_LB Thick Allowed Allowed Allowed1
Not Allowed1
supported
Thick Allowed Allowed Allowed1
Option 12: 6U1x_2T10x_LB
Not Not Allowed
supported
Thin Allowed Not Allowed Not Allowed
Not Allowed1
supported
Thick Allowed Allowed Allowed1
Option 14: 6U1x_1T10x_LB
Not Not Allowed
supported
Thin Allowed Not Allowed Not Allowed
Not Allowed1
supported
Option 15: Thick Allowed Allowed Allowed1
6U1x_1T8x_1T30x_LB
Contact
Globalfoundries
Not
supported
Contact
Globalfoundries
Option 16: Thick Allowed Not Allowed
3U1x_1L2x_2T8x_LB
Not Not Allowed
supported
Option 17: Thick Allowed Allowed Not Allowed
5U1x_1L2x_1T8x_LB
Not Not Allowed
supported
Thin Allowed Not Allowed Not Allowed
LB Packaging Options
Option2
Metal Stack Options
Bump Option 4
(Non-round Copper
Pillar Bump with
PSPI)
Bump Option
3
(Round
Copper Pillar
Bump
without
PSPI)4
Bump Option 2
(Round Copper Pillar
Bump with PSPI)
Bump
Option 1
(Lead-Free
SnAg Bump)
Wire-bond3
Not Not Allowed
supported
Option 18: Thick Allowed Allowed Not Allowed
6U1x_1L2x_1T8x_LB
Not Not Allowed
supported
Thin Allowed Not Allowed Not Allowed
Not Allowed1
supported
Option 19: Thick Allowed Allowed Allowed1
5U1x_1L2x_2T8x_LB
Not Not Allowed
supported
Thin Allowed Not Allowed Not Allowed
Not Not Allowed
supported
Option 20: Thin Allowed Not Allowed Not Allowed
6U1x_1L2x_1T10x_LB
Note:
1. Bump option 2 and 4 are allowed after finalizing packaging and assembly option. Contacting GLOBALFOUNDRIES
representative is required.
2. Thick and thin LB option refers to a final aluminum (LB) thickness of 2.8 μm, respectively 1.45 μm.
3. Customer must ensure manufacturability with OSAT for wire-bonding using the pad opening, pad pitch and wire
diameter.
4. Not supported in current design manual revision. Please contact your GLOBALFOUDRIES representative for further
information.
2.9 Design Preparation
PC device compensation, block implant level generation, gap fill, and sliver removal occur during the
GLOBALFOUNDRIES data preparation operation required for mask build. This information is provided for reference
only; contact your GLOBALFOUNDRIES technical representative for data preparation and biasing application details.
In the block implant (Boolean) level generation table, the sliver and gap values are given in μm per edge. Refer to Calibre
2.9.1 PC Device Compensation
This section is under construction.
2.9.2 Block Implant Level Generation (Node 1)
In the block implant (Boolean) level generation table, the sliver and gap values are given in μm per edge. Refer to Calibre
Keywords for Mentor Graphics Calibre chip design and verification tool syntax.
Table 21: Block Implant Level Generation (Node 1)
NW CN - (NW not ZG) or [(DRES and (EG or ZG)) and NW] 0.160 0.160 Yes
[NW or (BFMOAT or (ZVT or (EG or ZG)))] not 0.160 0.160 Yes
[(DRES and (EG or ZG)) not NW]
BF CP -
N3 CN - T3 0.555 0.555 Yes
IP CN - (ZG not DRES) and NW 0.160 0.160 Yes
IN CN - [(EG or ZG) not (ZVT or DRES)] not NW 0.160 0.160 Yes
(CELLSNR not NW) not [SRAM_SE or (RDSTK_8TLV 0.160 0.160 Yes
or RDSTK_8TLR)]
NV CN -
PV CN - CELLSNR and NW 0.160 0.160 Yes
(CELLSNR not SRAM_SA) and NW
ZG CP - ZG or EG 0.160 0.160 Yes
[PPLUS or (BIPOLAR or (EFUSE or DRES))] or 0.160 0.160 Yes
[{[((CELLSNR and (PPLUS and NW)) and SRAM_SA)
ZP CP 1
sized by $SF 0.1 μm] or [((CELLSNR and (PPLUS and
NW)) not SRAM_SA) sized by $SF 0.150 μm]} and
CELLSNR] not {[(PPLUS not NW) and (CELLSNR
and SRAM_SA)] not interact PC}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.077 μm2
[PPLUS not (DRES or (BIPOLAR or (EFUSE or 0.160 0.160 Yes
CELLACTIVE)))] or [(PPLUS and CELLACTIVE)
sized by $SF -0.020 μm]
ZN CN 1
{([LVTN sized by $SF 0.036 μm] or (SRAM_SE not 0.160 0.160 Yes
RDSTK_8TLR)) not (NW or ZVT or EG or ZG or
XW CN 1, 2, 3
BIPOLAR or PRES or DRES or NWRES or EFUSE or
NCAP or PCAP or DIODE or ESD_POLYB or
ESDSCR_HBM)} not {[( (NW and NPLUS) not (NCAP
or NWRES or BIPOLAR or ESDSCR_HBM or
ESD_POLYB)) or ( (PPLUS not NW) not (PCAP or
BIPOLAR or ESDSCR_HBM or ESD_POLYB) ) ]
interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
{[(LVTP sized by $SF 0.036 μm) and NW] not (ZVT 0.160 0.160 Yes
or EG or ZG or BIPOLAR or PRES or DRES or NWRES
LW CN 1, 2, 3
or EFUSE or NCAP or PCAP or DIODE or
ESD_POLYB or ESDSCR_HBM)} not {[( (NW and
NPLUS) not (NCAP or NWRES or BIPOLAR or
ESDSCR_HBM or ESD_POLYB)) or ( (PPLUS not
NW) not (PCAP or BIPOLAR or ESDSCR_HBM or
ESD_POLYB) ) ] interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
NW or ZVT or EG or ZG or BIPOLAR or PRES or 0.160 0.160 Yes
DRES or NWRES or EFUSE or NCAP or PCAP or
4BH CP 1, 2
DIODE or ESD_POLYB or ESDSCR_HBM or [(((RX
interact NPLUS) not interact PC) interact (ESD_HBM
or ESD_CDM)) sized by $SF 0.0560] or [CELLSNR
not (RDSTK_8TLV or SRAM_SE)] or TJGFILL or {[(
(NW and NPLUS) not (NCAP or NWRES or BIPOLAR
or ESDSCR_HBM or ESD_POLYB)) or ( (PPLUS not
NW) not (PCAP or BIPOLAR or ESDSCR_HBM or
ESD_POLYB) ) ] interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
(NW not {ZVT or CELLSNR or EG or ZG or BIPOLAR 0.160 0.160 Yes
or PRES or DRES or NWRES or EFUSE or NCAP or
4PH CN 1, 2
PCAP or DIODE or ESD_POLYB or ESDSCR_HBM
or [(((RX interact PPLUS) not interact PC) interact
(ESD_HBM or ESD_CDM)) sized by $SF 0.0560 μm]}
or TJGFILL) not {[( (NW and NPLUS) not (NCAP or
NWRES or BIPOLAR or ESDSCR_HBM or
ESD_POLYB)) or ( (PPLUS not NW) not (PCAP or
BIPOLAR or ESDSCR_HBM or ESD_POLYB) ) ]
interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
{ (NW and PPLUS) not [EG or ZG or NCAP or DRES 0.160 0.160 Yes
or PRES or BIPOLAR or ESD_POLYB or
TJ CN 1
ESDSCR_HBM or {[((RX interact PPLUS) not interact
PC) interact (ESD_HBM or ESD_CDM)] sized by
$SF*0.056 μm} or [((RX and NW) not PPLUS) sized
by $SF*0.038 μm]] or ((RX interact DIODE) sized by
$SF*0.056 μm) or ([(((RX and NW) and PPLUS) not
interact pc) TOUCH ((RX and NW) and NPLUS)] sized
by $SF*0.038 μm)}or TJGFILL
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.077 μm2
([EG or ZG] not {NW or PRES or DRES or EFUSE or 0.160 0.160 Yes
(ZVT not ZG) or PCAP or ESD_POLYB or [{holes
GN CN 1, 2
([NW and (EG or ZG)] interact LDFET) inner} interact
LDFET]}) not {[( (NW and NPLUS) not (NCAP or
NWRES or BIPOLAR or ESDSCR_HBM or
ESD_POLYB)) or ( (PPLUS not NW) not (PCAP or
BIPOLAR or ESDSCR_HBM or ESD_POLYB) ) ]
interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
( [(EG or ZG) and NW] not {PRES or DRES or EFUSE 0.160 0.160 Yes
or NCAP or ESD_POLYB or BIPOLAR or [[NW and
GP CN 1, 2
(EG or ZG)] interact LDFET]} ) not {[( (NW and
NPLUS) not (NCAP or NWRES or BIPOLAR or
ESDSCR_HBM or ESD_POLYB)) or ( (PPLUS not
NW) not (PCAP or BIPOLAR or ESDSCR_HBM or
ESD_POLYB) ) ] interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
NW or ZVT or EG or ZG or BIPOLAR or PRES or 0.160 0.160 Yes
DRES or NWRES or EFUSE or NCAP or PCAP or
BH CP 1, 2, 4
DIODE or ESD_POLYB or ESDSCR_HBM or [(((RX
interact NPLUS) not interact PC) interact (ESD_HBM
or ESD_CDM)) sized by $SF 0.0560 μm] or [(LVTN or
LVTP or ELVTN or ELVTP) sized by $SF -0.036 μm]
or [CELLSNR not RDSTK_8TLV] or TJGFILL or {[(
(NW and NPLUS) not (NCAP or NWRES or BIPOLAR
or ESDSCR_HBM or ESD_POLYB)) or ( (PPLUS not
NW) not (PCAP or BIPOLAR or ESDSCR_HBM or
ESD_POLYB) ) ] interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
[NW not {ZVT or EG or ZG or BIPOLAR or PRES or 0.160 0.160 Yes
DRES or NWRES or EFUSE or NCAP or PCAP or
PH CN 1, 2, 3
DIODE or ESD_POLYB or ESDSCR_HBM or [(((RX
interact PPLUS) not interact PC) interact (ESD_HBM
or ESD_CDM)) sized by $SF 0.0560 μm] or [(LVTN or
LVTP or ELVTN or ELVTP) sized by $SF -0.036
μm]}or TJGFILL] not {[( (NW and NPLUS) not (NCAP
or NWRES or BIPOLAR or ESDSCR_HBM or
ESD_POLYB)) or ( (PPLUS not NW) not (PCAP or
BIPOLAR or ESDSCR_HBM or ESD_POLYB) ) ]
interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
{[CELLSNR not (SRAM_SE or (RDSTK_8TLV OR 0.160 0.160 Yes
RDSTK_8TLR))] not NW} not {[(NW and NPLUS) or
(PPLUS not NW)] interact all_ca }
HN CN 1, 2
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
{[CELLSNR not (RDSTK_8TLV or RDSTK_8TLR)] 0.160 0.160 Yes
and NW} not {[(NW and NPLUS) or (PPLUS not NW)]
interact all_ca }
HP CN 1, 2
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
(ZVT not ZG) not NW not DRES not {[( (NW and 0.160 0.160 Yes
NPLUS) not (NCAP or NWRES or BIPOLAR or
XH CN 2
ESDSCR_HBM or ESD_POLYB)) or ( (PPLUS not
NW) not (PCAP or BIPOLAR or ESDSCR_HBM or
ESD_POLYB) ) ] interact all_ca}
BN CN - (PPLUS not EFUSE)or TJGFILL 0.160 0.160 Yes
BP CN - NPLUSnot TJGFILL 0.160 0.160 Yes
ED CN - ED 0.333 0.333 Yes
OP CP - OP 0.160 0.160 Yes
Notes:
1. 1. $SF is the Shrink Factor for this Technology. When dealing with drawn layout dimension, such as for DRC coding
purposes, the variable $SF must be set to “1.0”. Only after the shrink is applied, such as when doing the Boolean
data preparation, does the $SF need to be set to the shrink factor value of “0.9”.
2. 2. all_ca = or (CA CABAR CAFUSE CA_E1 CA_E2 CAREC_E1 CAREC_E2 CAREC)
3. 3. Sizing only when gate side minimum within Vt marker is < $SF*0.161 μm.
4. 4. Sizing only when gate side minimum space to Vt marker is < $SF*0.161 μm.
2.9.3 Block Implant Level Generation (Node 2)
In the block implant (Boolean) level generation table, the sliver and gap values are given in μm per edge. Refer to Calibre
Keywords for Mentor Graphics Calibre chip design and verification tool syntax.
Table 22: Block Implant Level Generation (Node 2)
NW CN - (NW not ZG) or [(DRES and (EG or ZG)) and NW] 0.160 0.160 Yes
(NW or BFMOAT or ZVT) NOT ((DRES and (EG or 0.21 0.21 Yes
ZG)) not NW)
3BF CP -
N3 CN - T3 0.555 0.555 Yes
IP CN - (ZG not DRES) and NW 0.160 0.160 Yes
ZVT or (BFMOAT and IND) or NW or ALVT or 0.21 0.21 Yes
[CELLSNR not (SRAM_SE or RDSTK_8TLV or
4IN CP -
RDSTK_8TLR)] or [(EG or ZG) not (DRES and ((EG
or ZG) not NW))]
(CELLSNR not NW) not [SRAM_SE or (RDSTK_8TLV 0.160 0.160 Yes
or RDSTK_8TLR)]
3NV CN -
PV CN - CELLSNR and NW 0.160 0.160 Yes
(CELLSNR not SRAM_SA) and NW
ZG CP - ZG or EG 0.160 0.160 Yes
[PPLUS or (BIPOLAR or (EFUSE or DRES))] or 0.160 0.160 Yes
[{[((CELLSNR and (PPLUS and NW)) and SRAM_SA)
ZP CP 1
sized by $SF 0.1 μm] or [((CELLSNR and (PPLUS and
NW)) not SRAM_SA) sized by $SF 0.150 μm]} and
CELLSNR] not {[(PPLUS not NW) and (CELLSNR
and SRAM_SA)] not interact PC}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.077 μm2
[PPLUS not (DRES or (BIPOLAR or (EFUSE or 0.160 0.160 Yes
CELLACTIVE)))] or [(PPLUS and CELLACTIVE)
sized by $SF -0.020 μm]
ZN CN 1
{([LVTN sized by $SF 0.036 μm] or (SRAM_SE not 0.160 0.160 Yes
RDSTK_8TLR)) not (NW or ZVT or EG or ZG or
XW CN 1, 2, 3
BIPOLAR or PRES or DRES or NWRES or EFUSE or
NCAP or PCAP or DIODE or ESD_POLYB or
ESDSCR_HBM)} not {[( (NW and NPLUS) not (NCAP
or NWRES or BIPOLAR or ESDSCR_HBM or
ESD_POLYB)) or ( (PPLUS not NW) not (PCAP or
BIPOLAR or ESDSCR_HBM or ESD_POLYB) ) ]
interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
{[(LVTP sized by $SF 0.036 μm) and NW] not (ZVT 0.160 0.160 Yes
or EG or ZG or BIPOLAR or PRES or DRES or NWRES
LW CN 1, 2, 3
or EFUSE or NCAP or PCAP or DIODE or
ESD_POLYB or ESDSCR_HBM)} not {[( (NW and
NPLUS) not (NCAP or NWRES or BIPOLAR or
ESDSCR_HBM or ESD_POLYB)) or ( (PPLUS not
NW) not (PCAP or BIPOLAR or ESDSCR_HBM or
ESD_POLYB) ) ] interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
NW or ZVT or EG or ZG or BIPOLAR or PRES or 0.160 0.160 Yes
DRES or NWRES or EFUSE or NCAP or PCAP or
4BH CP 1, 2
DIODE or ESD_POLYB or ESDSCR_HBM or [(((RX
interact NPLUS) not interact PC) interact (ESD_HBM
or ESD_CDM)) sized by $SF 0.0560] or [CELLSNR
not (RDSTK_8TLV or SRAM_SE)] or TJGFILL or {[(
(NW and NPLUS) not (NCAP or NWRES or BIPOLAR
or ESDSCR_HBM or ESD_POLYB)) or ( (PPLUS not
NW) not (PCAP or BIPOLAR or ESDSCR_HBM or
ESD_POLYB) ) ] interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
(NW not {ZVT or CELLSNR or EG or ZG or BIPOLAR 0.160 0.160 Yes
or PRES or DRES or NWRES or EFUSE or NCAP or
4PH CN 1, 2
PCAP or DIODE or ESD_POLYB or ESDSCR_HBM
or [(((RX interact PPLUS) not interact PC) interact
(ESD_HBM or ESD_CDM)) sized by $SF 0.0560 μm]}
or TJGFILL) not {[( (NW and NPLUS) not (NCAP or
NWRES or BIPOLAR or ESDSCR_HBM or
ESD_POLYB)) or ( (PPLUS not NW) not (PCAP or
BIPOLAR or ESDSCR_HBM or ESD_POLYB) ) ]
interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
{ (NW and PPLUS) not [EG or ZG or NCAP or DRES 0.160 0.160 Yes
or PRES or BIPOLAR or ESD_POLYB or
TJ CN 1
ESDSCR_HBM or {[((RX interact PPLUS) not interact
PC) interact (ESD_HBM or ESD_CDM)] sized by
$SF*0.056 μm} or [((RX and NW) not PPLUS) sized
by $SF*0.038 μm]] or ((RX interact DIODE) sized by
$SF*0.056 μm) or ([(((RX and NW) and PPLUS) not
interact pc) TOUCH ((RX and NW) and NPLUS)] sized
by $SF*0.038 μm)}or TJGFILL
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.077 μm2
([EG or ZG] not {NW or PRES or DRES or EFUSE or 0.160 0.160 Yes
(ZVT not ZG) or PCAP or ESD_POLYB or [{holes
GN CN 1, 2
([NW and (EG or ZG)] interact LDFET) inner} interact
LDFET]}) not {[( (NW and NPLUS) not (NCAP or
NWRES or BIPOLAR or ESDSCR_HBM or
ESD_POLYB)) or ( (PPLUS not NW) not (PCAP or
BIPOLAR or ESDSCR_HBM or ESD_POLYB) ) ]
interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
( [(EG or ZG) and NW] not {PRES or DRES or EFUSE 0.160 0.160 Yes
or NCAP or ESD_POLYB or BIPOLAR or [[NW and
GP CN 1, 2
(EG or ZG)] interact LDFET]} ) not {[( (NW and
NPLUS) not (NCAP or NWRES or BIPOLAR or
ESDSCR_HBM or ESD_POLYB)) or ( (PPLUS not
NW) not (PCAP or BIPOLAR or ESDSCR_HBM or
ESD_POLYB) ) ] interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
NW or ZVT or EG or ZG or BIPOLAR or PRES or 0.160 0.160 Yes
DRES or NWRES or EFUSE or NCAP or PCAP or
BH CP 1, 2, 4
DIODE or ESD_POLYB or ESDSCR_HBM or [(((RX
interact NPLUS) not interact PC) interact (ESD_HBM
or ESD_CDM)) sized by $SF 0.0560 μm] or [(LVTN or
LVTP or ELVTN or ELVTP) sized by $SF -0.036 μm]
or [CELLSNR not RDSTK_8TLV] or TJGFILL or {[(
(NW and NPLUS) not (NCAP or NWRES or BIPOLAR
or ESDSCR_HBM or ESD_POLYB)) or ( (PPLUS not
NW) not (PCAP or BIPOLAR or ESDSCR_HBM or
ESD_POLYB) ) ] interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
[NW not {ZVT or EG or ZG or BIPOLAR or PRES or 0.160 0.160 Yes
DRES or NWRES or EFUSE or NCAP or PCAP or
PH CN 1, 2, 3
DIODE or ESD_POLYB or ESDSCR_HBM or [(((RX
interact PPLUS) not interact PC) interact (ESD_HBM
or ESD_CDM)) sized by $SF 0.0560 μm] or [(LVTN or
LVTP or ELVTN or ELVTP) sized by $SF -0.036
μm]}or TJGFILL] not {[( (NW and NPLUS) not (NCAP
or NWRES or BIPOLAR or ESDSCR_HBM or
ESD_POLYB)) or ( (PPLUS not NW) not (PCAP or
BIPOLAR or ESDSCR_HBM or ESD_POLYB) ) ]
interact all_ca}
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
{[CELLSNR not (SRAM_SE or (RDSTK_8TLV OR 0.160 0.160 Yes
RDSTK_8TLR))] not NW} not {[(NW and NPLUS) or
(PPLUS not NW)] interact all_ca }
HN CN 1, 2
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
{[CELLSNR not (RDSTK_8TLV or RDSTK_8TLR)] 0.160 0.160 Yes
and NW} not {[(NW and NPLUS) or (PPLUS not NW)]
interact all_ca }
HP CN 1, 2
Area and enclosed area cleanup (regions not interact with
RX): $SF 0.094 μm2
(ZVT not ZG) not NW not DRES not {[( (NW and 0.160 0.160 Yes
NPLUS) not (NCAP or NWRES or BIPOLAR or
XH CN 2
ESDSCR_HBM or ESD_POLYB)) or ( (PPLUS not
NW) not (PCAP or BIPOLAR or ESDSCR_HBM or
ESD_POLYB) ) ] interact all_ca}
BN CN - (PPLUS not EFUSE)or TJGFILL 0.160 0.160 Yes
BP CN - NPLUSnot TJGFILL 0.160 0.160 Yes
ED CN - ED 0.333 0.333 Yes
OP CP - OP 0.160 0.160 Yes
Notes:
1. 1. $SF is the Shrink Factor for this Technology. When dealing with drawn layout dimension, such as for DRC coding
purposes, the variable $SF must be set to “1.0”. Only after the shrink is applied, such as when doing the Boolean
data preparation, does the $SF need to be set to the shrink factor value of “0.9”.
2. 2. all_ca = or (CA CABAR CAFUSE CA_E1 CA_E2 CAREC_E1 CAREC_E2 CAREC)
3. 3. Sizing only when gate side minimum within Vt marker is < $SF*0.161 μm.
4. 4. Sizing only when gate side minimum space to Vt marker is < $SF*0.161 μm.
2.10 Truth Tables
The truth values presented here are provided as a physical design aid for the listed structures. The listed structures are
the only structures permitted in this technology. Use of other structures requires written approval from the Technology
Device and Characterization Department before design submission. Contact your GLOBALFOUNDRIES technical
representative to request approval.
2.10.1 Design Truth Table (Node 1)
The design truth table values are defined as follows:
0 The design level must not touch the structure.
1 The design level must cover or match the structure.
X The design level does not affect the structure.
Notes:
1. Please contact your GLOBALFOUNDRIES technical representative if eLVT device is required.
2. EG overdrive is currently not supported for 28LPSe. Please contact your GLOBALFOUNDRIES technical
representative if this capability is required.
3. Please contact your GLOBALFOUNDRIES technical representative if ZG device is required.
4. Presently, the 28LPSe offered SRAM models in the BCK are at version 0.5.
5. Please contact your GLOBALFOUNDRIES technical representative if ALVT device is required.
2.10.2 Design Truth Table (Node 2)
The design truth table values are defined as follows:
0 The design level must not touch the structure.
1 The design level must cover or match the structure.
X The design level does not affect the structure.
Notes:
1. Please contact your GLOBALFOUNDRIES technical representative if eLVT device is required.
2. EG overdrive is currently not supported for 28LPSe. Please contact your GLOBALFOUNDRIES technical
representative if this capability is required.
3. Please contact your GLOBALFOUNDRIES technical representative if ZG device is required.
4. Presently, the 28LPSe offered SRAM models in the BCK are at version 0.5.
5. Please contact your GLOBALFOUNDRIES technical representative if ALVT device is required.
2.10.3 Data Preparation Truth Table (Node 1)
The data preparation truth table values are defined as follows
0 The generated level must not touch the structure.
1 The generated level must cover or match the structure.
X The generated level might not be present depending on the design levels.
Notes:
1. Please contact your GLOBALFOUNDRIES technical representative if eLVT device is required.
2. EG overdrive is currently not supported for 28LPSe. Please contact your GLOBALFOUNDRIES technical
representative if this capability is required.
3. Please contact your GLOBALFOUNDRIES technical representative if ZG device is required.
4. Presently, the 28LPSe offered SRAM models in the BCK are at version 0.5.
5. The masks required in addition to RX, NW, BF, ZP, ZN, PC, CT, TJ, BN, BP and CA are listed for each device.
6. Please contact your GLOBALFOUNDRIES technical representative if ALVT device is required.
2.10.4 Data Preparation Truth Table (Node 2)
The data preparation truth table values are defined as follows
0 The generated level must not touch the structure.
1 The generated level must cover or match the structure.
X The generated level might not be present depending on the design levels.
Notes:
1. Please contact your GLOBALFOUNDRIES technical representative if eLVT device is required.
2. EG overdrive is currently not supported for 28LPSe. Please contact your GLOBALFOUNDRIES technical
representative if this capability is required.
3. Please contact your GLOBALFOUNDRIES technical representative if ZG device is required.
4. Presently, the 28LPSe offered SRAM models in the BCK are at version 0.5.
5. The masks required in addition to RX, NW, 3BF, ZP, ZN, PC, CT, TJ, BN, BP and CA are listed for each device.
6. Please contact your GLOBALFOUNDRIES technical representative if ALVT device is required.
7. XW is needed if both LVT NFET & eLVT NFET are co-exists whereas LW is needed if both LVT PFET & eLVT
PFET are co-exists.
2.11 Shrink Flow Overview
Designing for the 28nm technology means laying out using the 32nm design rules and scaling the complete chip layout
to 90% during data preparation. Effectively the linear shrink is 10% and the area shrink 19% (1 –0.90^2).
2.11.1 Data Preparation Flow for 10% Shrink
In data preparation, chip design grid is changed to 0.1 nm and everything is scaled to 90% first. Then the various
compensations (PC), CA/via size adjustments, Boolean equation application and OPC are done before data fracture and
tapeout to the mask shop.
Chapter
3
Physical Design Rules
Topics:
• Design Rule Table Conventions
• Design Rule Syntax
• Glossary of Design Rule Terminology
• Geometry Restriction Design Rules
• Polysilicon and Isolation Design Rules
• Short Edge Design Rules
• Antenna Design
• Thick-Oxide (ZG) Device Design Rules
• High-speed I/O Device Design Rules
• N-Well and Latchup Design Rules
• Triple-Well and Latchup Design Rules
• Moat Design Rules
• Zero-Vt NFET Design Rules
• eLVT Device Design Rules
• Low-Vt Device Design Rules
• High-Vt Device Design Rules
• ALVT Device Design Rules
• Selective Timing Bias Design Rules
• EG LDFET Device Design Rules
• P+, N+, Source, and Drain Implant Design Rules
• Poly-bounded ESD Diode Design Rules
• Butted-junction Design Rules
• Bipolar Transistor Design Rules
• NFET in N-Well Capacitor Design Rules
• PFET in P-Well Capacitor Design Rules
• Silicide-blocked OP Resistor Design Rules
• N-Well Resistor Design Rules
• Latchup Design Rules
• ESD Design Rules
• SCR Design Rules
• Contact Design Rules
• 1x Metal and Via Design Rules
• 1x to 8x Transitional Via Design Rules
• 1x to 10x Transitional Via Design Rules
• 2x Metal and Via Design Rules for Low-K
• VxZFILL and WTZFILL Design Rules
• 2x to 8x Transitional Via Design Rules
• 2x to 10x Transitional Via Design Rules
• 8x Metal and Via Design Rules
• 10x Metal and Via Design Rules
• UTM30x Metal and Via Design Rule (Copper Inductor Design Rule)
• LB and VV Design Rules
• Alternative Polarity MoM Capacitor (APMOM) Design Rules
• Inductor Design Rules
• Fuse Design Rules
• DV Passivation Opening Design Rules
• Flip Chip Design Rules
• Wire-bond Design rules
• Chip Guard Ring Design Rules
• Permissible Chip Size Design Rules
• Crack Stop Design
• Mask and Wafer Process Control Drop-in (PCD) Design Rules
• Product Label Design Rules
• UPSIZE Design Rules
The physical design rules describe the parameters designers must use to create designs that pass design rule checking (DRC).
As they begin their designs, designers should review the general conventions for using the design rule tables, the syntax used
in the design rule descriptions, and the glossary of unique terms used in the design rule descriptions.
3.1 Design Rule Table Conventions
The following notes describe the general conventions used to document the physical design rules presented in this topic.
1. All design rule values are given in microns (μm) unless otherwise specified.
2. GLOBALFOUNDRIES-recommended design rules end with the letter “R” (for example, Rule 52R designers are
strongly encouraged to follow the recommended rules. In addition, designers should use design dimensions greater
than the stated minimum when possible, unless they result in increased chip size or decreased performance. Note
that recommended design rules can be verified in default design rule checking (DRC) using the appropriate switch
for the GLOBALFOUNDRIES or the ALLIANCE-recommended design rules.
3. Design rules ending with “_or” (for example, Rule 111_or) are a set of rules in which only one of the rules must be
followed.
4. In the design rule descriptions that follow, “RX” denotes the active silicon region (that is, source, drain, field-effect
transistor [FET] channel, capacitor, and so forth), also known as the diffusion region.
3.2 Design Rule Syntax
The technology physical design rules conform to a common syntax used across all 300 mm semiconductor technologies.
In general, the single-letter abbreviation denoted in boldfaced type represents a shape on the corresponding design level.
For example, A refers to a shape on design level “A.”
The following design rule description structure is used when possible: first level or levels (condition A, B, and so forth),
measurement, second level or levels (condition A, B, and so forth). Mandatory elements are in boldfaced type.
Note: The terms exact, exempt, intersect, permitted, prohibited, abutting, parallel edges, and opposite or remaining
sides are presumed to be understood through common use and are not defined.
3.2.1 Multiple Levels per Rule
Assigns level A to every level B: (A operator B1), (A operator B2), (A operator
B3).
A operator (B1, B2, B3)
Assigns every level A to level B: (A1 operator B), (A2 operator B), (A3 operator
B).
(A1, A2, A3) operator B
Assigns the rule on a one-to-one basis: (A1 operator B1), (A2 operator B2),
[(A1, A2, A3)
operator(B1, B2, B3)] or
[(A1-A3)operator (A3 operator B3).
(B1-B3)]
3.2.2 Electrical Selection Functions
Electrically based connectivity using all conducting layers (unless otherwise
noted), including diffusion, polysilicon, and all back-end-of-line (BEOL) metal
Different or same net
and via levels in the stack (M1 through last metal). It also includes connectivity
through the substrate, through n-wells and p-wells and between n-wells through
the deep n-band (for triple-well designs).
3.2.3 Unary Operators
The unary operators include syntax definitions for dimension, area, density, and geometry and orientation.
3.2.3.1 Dimension
The distance between the inside edges of an individual shape. Length is the longer
side of the shape measured between parallel edges or edges that form an angle
of less than 90°.
A length
The distance between the inside edges of an individual shape. Width is the shorter
side of the shape measured between parallel edges or edges that form an angle
of less than 90°.
Awidth
The distance between two inside edges running in parallel; used for measuring
the width between two parallel edges. This syntax applies to one or two shapes
Awidth with run length
Distance between the inside edges of an individual shape, when the space on
both sides of the shape is constrained to value x and spaces have run lengths
A minimum width (when
space on both sides is ≤
x) and spaces have run
lengths ≥ y
constrained to value y (see Illustration of Design Rule Syntax Dimension
• PC minimum width (when space on both sides is ≤ 0.125 μm) and spaces
have run lengths > 0 μm.
• M1 minimum width (when space to M1_end on both sides is ≤ 0.07 μm) and
spaces have run lengths > 0 μm.
Shape A is a square with equal length and width.
A length and width
The distance from (PC edge to PC edge) over RX (see Illustration of Design Rule
A gate length
The distance from (RX edge to RX edge) over PC (see Illustration of Design
A gate width
The internal distance x from the inside of an edge segment B to the inside of the
opposite edge (see Illustration of Design Rule Syntax Dimension Definitions on
page 87).
B edge with span x
The edge of level C that touches two inner vertices (see Illustration of Design
C notch
The edge of level C that shares an inner vertex with a C notch (see Illustration
C notch edge
The distance between all outside edges of all shapes on level C (see Illustration
C space
The distance between all outside edges of all shapes on level C (see Illustration
C space and notch
3.2.3.2 Area
The area of each individual shape.
A area
The space between the outside edges of one or more individual shapes (see white
B enclosed area
3.2.3.3 Density
The ratio of the area of all shapes on level A within a window divided by the area of the window.
A density
Pattern density checks use the following tiling components:
A density with tiling within B
• Box size. The dimensions of the tile.
• Step increment. Tiles are stepped in increments equal to half the tile dimension.
• Step-back requirement. For (least-enclosing rectangle B) width ≥ box size, incomplete tiles
at the edge of B must be stepped back within the least-enclosing rectangle B. For
(least-enclosing rectangle B) width < box size, the density must be calculated as the ratio
of the total area of A within the intersection of the checking box and B divided by the area
of the intersection of the checking box and B.
• Irregular edges. For checking boxes not completely covered by B that meet the step-back
requirement, the density must be calculated as the ratio of the total area of A within the
intersection of the checking box and B divided by the area of the intersection of the checking
box and B.
3.2.3.4 Geometry and Orientation
The center point of a shape; most commonly used in the center of a circle or
octagon.
A must be centered
All edges of shapes on level A must be parallel to the x and y axes.
A must be orthogonal
Shape A is a rectangle with all edges parallel to the x and y axes.
A must be an orthogonal
rectangle
The direction perpendicular to (PC edges over RX).
Gate length direction
The direction parallel to (PC edges over RX).
Gate width direction
3.2.4 Binary Operators
The binary operators include syntax definitions for spacing, overlap, containment, shift, and condition.
3.2.4.1 Spacing
Used to measure the distance between shapes A and B, where edges of A project
onto any part of B (corners, edges).
A minimum space to B,
run length > 0 ≥ y
Used to measure the distance between shapes A and B, where edges of A and B
run in parallel for length x. This run length measurement applies, even when
A minimum space to B,
run length > x ≥ y
edges “jog”, as long as the overall distance between A and B is less than y. (See
Note: Applies when x > 0.
Used to measure the distance between shapes A and B, where the edges of shapes
A and B run in parallel for length x. This run length measurement applies around
A minimum space to B,
common run length > x
≥ y corners as long as the overall distance between A and B is less than y. (See
Note: Applies when x > 0.
A must have at least one B within distance x1. The rule can be met by a single 1
× 2 A-B array isolated from any other A or B.
A to B maximum space
≤ x1
The distance from any portion of C to the nearest edge or corner of D. (See
C distance to D
The distance from any portion of C to the farthest edge or corner of D. (See
C maximum distance to
D
See “P space to Q”; zero spacing is permitted. Abutting of outside edges is
permitted if the run length is greater than or equal to n μm.
C space to D with
abutting permitted when
run length is ≥ n μm
Distance between all outside edges of shape P and outside edges of shape Q;
abutting is prohibited. If P or Q is specified as an edge (for example, gate side)
P space to Q
instead of a shape, distance is checked with run length > 0 unless otherwise
specified.
Note: “Space to” does not prevent shapes P and Q from intersecting;
“prohibited over” prevents this.
Checked in the same manner as “P space to Q”, however, the space between two
edges is checked only if the two edges are completely over R; abutting is
(P space to Q) checked
over R
92.)
Checked in the same manner as “P space to Q”, however, the space between two
edges is not checked if the two edges are completely over R. (See Illustration of
(P space to Q) not
checked over R
This is the distance between all outside edges of shapes on level P and outside
edges of shapes on level Q. This distance is only checked between nonintersecting
P space to adjacent Q
shapes on levels P and Q. If P or Q is specified as an edge (for example, gate
side) instead of a shape, distance is checked with run length > 0 unless otherwise
specified.
R and S are polygons or edges. Space is measured between parallel edges only.
Failing edges (that is, those that are closer than the minimum spacing) are
R space to S with run
length > rl, where rl is a
number > 0
combined if they are on the same shape separated by a simple jog or a 45° jog
(not including the length of the jog). Failing edges are not combined if they go
around a corner. Spaces between nonparallel edges (for example, a 90° edge
opposite a 45° edge) are not covered. Depending on the relation of run length to
space, these spaces are not likely to fail. (See Illustration of Design Rule Syntax
R and S are polygons. Space is measured between all outside edges of R to all
outside edges of S when the perpendicular extension of the edge of one shape
R space to S with run
length > 0
intersects an outside edge of the other shape. Corner distance is not measured.
R space to S (square
space check)
3.2.4.2 Overlap
The spacing of all inside edges of shapes on level J to the outside edges of shapes on level K if the
J overlap past K
shapes intersect (run length > 0); coinciding of inside and outside edges is prohibited. If J or K is
specified as an edge (for example, gate side) instead of a shape, distance is checked with run length
> 0 unless otherwise specified.
See “J overlap past K”; zero spacing (coinciding of inside and outside edges) is also permitted. (See
J overlap past K with coinciding permitted
The distance from the inside edges of shapes on level J to the outside edges of shapes on level K.
J maximum overlap past K
Applies only to cases where shapes J and K intersect. If J or K is specified as an edge (for example,
gate side) instead of a shape, distance is checked with run length > 0 unless otherwise specified. If
level J has multiple inside edges (for example, a notch), the distance is measured to the farthest edge
of level J unless otherwise specified.
The distance from all inside edges of shape L to the inside edges of M when L intersects M. If L or
L overlap of M
M is specified as an edge (for example, gate side) instead of a shape, distance is checked with run
length > 0 unless otherwise specified.
3.2.4.3 Containment
B does not touch A, but the enclosed area formed by B covers A.
B must surround A
All shapes on level G must be completely covered by shapes on level H. In
addition, all outside facing edges of shapes on level G must have a minimum
G must be within H
spacing greater than zero (unless the checked value is zero) to all inside facing
edges of shapes on level H (see Illustration of Design Rule Syntax Containment
edge (for example, gate side) instead of a shape, distance is checked with run
length > 0 unless otherwise specified.
Same as “G must be within H”, if G can exist outside of H with straddling
prohibited. If G is specified as an edge (for example, gate side) instead of a shape,
distance is checked with run length > 0 unless otherwise specified.
G within H
See “G within H”; zero spacing (coinciding of inside and outside edges) is also
permitted.
G within H with
coinciding permitted
G minimum within H
(rectangular enclosure)
3.2.4.4 Shift
Translates all edges of a polygon according to a right-handed Cartesian grid. This
can be achieved by a series of directional sizings.
Shift A by (x = x1, y = y1)
3.2.4.5 Condition
Shapes on level C must abut shapes on level D. Abutting is defined as sharing
the same edges without having a common area greater than zero (see Illustration
C must abut D
Shapes on level C must intersect or abut shapes on level D. Shapes on level D
are not required to touch shapes on level C.
C must touch D
Data on level C must be completely inside or completely outside data on level
D. Coincident edges are permitted. Data can be shapes (polygons) or edges. Edges
C must not straddle D
are evaluated individually. For edge checking, the edge description must be
explicitly stated in the design rule description.
Edges of shapes on level C can only intersect edges of shapes on level D at a 90°
angle.
C can only straddle D at
90°
Shapes on level C must not intersect shapes on level D. Abutting is permitted.
C prohibited over D
Coincident edges of shapes on level A that abut shapes on Level B (see Illustration
is one-dimensional with zero width.
Edge of A abutting B
All vertices of shape L must be completely contained within the inside edges of
shape M, and every shape M must contain every shape L.
M must cover L
3.2.5 Design Rule Conditions
The design rule conditions include syntax definitions for logical and sizing functions.
3.2.5.1 Logical Function
The geometrical Boolean-logic “NOT” intersection of shapes on level C with
the complement of shapes on level D. Same as difference (C, D) or C not over
D.
C not D
The geometrical Boolean-logic “AND” intersection of shapes on level C and
shapes on level D. Same as intersection (C, D), D under C, or (C and D).
C over D
The geometrical Boolean-logic “OR” union of shapes on level E and shapes on
level F. Same as (E or F) or (E, F). (see Illustration of Design Rule Syntax Logical
E union F
3.2.5.2 Sizing Function
All shapes on level C sized by n μm per edge, where n is either positive
(expanded) or negative (shrunk) (see Illustration of Design Rule Syntax Sizing
C sized by n μm
The ends of edge A are sized by x (see Illustration of Design Rule Syntax Sizing
Size the ends of edge A
by x
Edge A, which is a defined edge of shape Y, is sized by x (see Illustration of
Size edge A by x
Edge A, which is a defined edge of shape Y, is sized either inside by x1 or outside
97).
Size edge A (inside by
x1) (outside by x2)
Shape A is sized in the horizontal direction by x (see Illustration of Design Rule
on rectangles.
Size A horizontally by x
Shape A is sized in the vertical direction by y (see Illustration of Design Rule
on rectangles.
Size A vertically by y
3.2.5.3 Relational Selection Function
Shape C having inside or outside edges in common with shape D.
C coinciding with D
All shapes on level C that have a common area with any shapes on level D.
C incurring D
Shape C crossing the border of shape D. For example, “C straddling D” means
that part of shape C overlaps D and part of shape C extends beyond the edge of
D.
C straddling D
Shapes on level C that have any kind of interaction, such as overlap or common
area, coinciding edges, touching vertices, and so forth, with shapes on level D.
C touching D
Shapes on level C that do not have any kind of interaction, such as overlap or
common area, coinciding edges, touching vertices, and so forth, with shapes on
level D.
C not touching D
Points where either two inside or two outside corners touch.
C touching vertex
3.2.5.4 Geometrical Selection Function
A with width = n μm, A All shapes on level A that have widths in the valid range.
with width > n μm, A
with width > n μm and
≤ m μm
The point at which shape edges on level C form an angle.
C vertex
All vertices that have angles greater than 180° when measured from inside the
shape (concave). Same as inner corner.
C inner vertex
All vertices that have angles less than 180° when measured from inside the shape
(convex). Same as outer corner.
C outer vertex
All shapes on level C that have edges at a 45° angle with respect to the x or y
axis.
C at 45°
3.3 Glossary of Design Rule Terminology
Table 23: Design Rule Checking Abbreviations
CA CA_input1 with width = 0.04 μm and length = 0.04 μm
CABAR (CA_input1 NOT CA) OR CABAR_input1
DV_probe_pad DV over PROBE.
DV_wire_bond_pad DV not over PROBE.
LM_lower LM_lower is the second last copper metal level in the stack selected.
FUSE cathode contact CAFUSE not touching FUSEANODE
Gate (((PC NOT PC_E2) touching [Union(CA, CA_E2, CAREC_E2)]) over RX) not touching CAREC_E2.
Gate side The edge of the gate that is abutting (RX not over PC).
Gate end The edge of the gate that is abutting (PC not over RX).
LDFETGATE (PC over RX) touching LDFET.
LDFETSOURCE [(RX n+ diffusion or RX p+ diffusion) touching LDFETGATE] not touching LDFET.
OP_LDFET OP_input1 touching LDFET.
LDNFET3P3V_DRAIN ((RX not over PPLUS) over (NW touching (LDFET3P3V not touching LDPFET3P3V_GATE))) not over PC.
LDNFET3P3V_GATE [(PC over RX) touching NPLUS] touching LDFET3P3V.
LDPFET3P3V_BODY [(RX over NPLUS) over LDFET3P3V] over T3.
LDPFET3P3V_GATE [(PC over RX) touching PPLUS] touching LDFET3P3V.
LDPFET3P3V_SOURCE (RX p+ diffusion touching LDPFET3P3V_GATE) not touching LDFET.
LDNFET5P0V_DRAIN ((RX not over PPLUS) over (NW touching (LDFET5P0V not touching LDPFET5P0V_GATE))) not over PC.
LDNFET5P0V_GATE [(PC over RX) touching NPLUS] touching LDFET5P0V.
LDPFET5P0V_BODY [(RX over NPLUS) over LDFET5P0V] over T3 .
LDPFET5P0V_GATE [(PC over RX) touching PPLUS] touching LDFET5P0V.
LDPFET5P0V_SOURCE (RX p+ diffusion touching LDPFET5P0V_GATE) not touching LDFET.
JQBAR [Union (JQ width ≡ 0.396μm, JQ width ≡ 0.36μm)] and length ≥ 1.2 μm.
{(EG or ZG) over [(NW touching (Gate not touching (EG or ZG))) touching (Gate touching (EG or ZG))]} sized by
0.001um.
LOWVOLT
NW_EG {NW over [(EG not EGV) not UNDERDRIVE]} touching gate.
NW_EGV (NW over EGV) touching gate.
NW_EG_UNDERDRIVE [NW over (EG over UNDERDRIVE)] touching gate.
NFET gate (Gate over NPLUS) not over NW.
PFET gate (Gate over PPLUS) over NW.
Isolated P-well (T3 not NW) completely surrounded by NW.
OP OP_input1 not SBLK.
RX butted n+ junction (RX n+ junction) abutting (RX p-well contact).
RX butted n-well contact (RX n-well contact) butting (RX over PPLUS).
RX butted p+ junction (RX p+ junction) abutting (RX n-well contact).
RX butted p-well contact (RX p-well contact) butting (RX over NPLUS).
RX n+ diffusion RX n+ junction not over PC.
RX n+ junction ((RX over NPLUS) not over NW) touching Union(CA, CABAR, CA_E1, CAREC_E2).
RX n-well contact (RX over NPLUS) over NW.
RX p+ diffusion RX p+ junction not over PC.
RX p+ junction ((RX over PPLUS) over NW) touching Union(CA, CABAR, CA_E1, CAREC_E2).
RX p-well contact (RX substrate contact) or (RX triple-well contact).
RX substrate contact (RX over PPLUS) not over (NW or Isolated P-well).
RX triple-well contact (RX over PPLUS) over (Isolated P-well).
Same Net Vias are electrically connected across the entire net.
SBLK OP_input1 not touching (PRES or DRES or NWRES or LDFET).
Vx Vx_input1 with width = 0.05 μm and length = 0.05 μm, where x = 1-5.
VxBAR [Vx_input1 NOT (Vx OR VxLRG)] OR VxBAR_input1, where x = 1-5.
VxLRG (Vx_input1 with width = 0.1 μm and length = 0.1μm) OR VxLRG_input1, where x = 1-5.
ALL_HIP_EQUALIZER HIP_EQUALIZER or HIP_EQUALIZER1 or HIP_EQUALIZER2 or HIP_EQUALIZER3
Mx_finger Mx over VNCAP_Mx
Mx_strap_APMOM Mx over {VNCAPHV NOT VNCAP_Mx}
Notes:
1. CA_input, CABAR_input, Vx_input, VxBAR_input, VxLRG_input and OP_input refer to the original drawn layers.
3.4 Geometry Restriction Design Rules
Table 24: Geometry Restriction Design Rules
S1 - The design grid must be an integer multiple 0.001 μm. ≡ -
S2 4 Shapes with acute angles are prohibited. ≠ -
≠ -
Shapes that intersect and overlap themselves are prohibited, but
shapes that abut themselves are permitted.
S3 -
≠ -
Shapes that cross over themselves (known as bow ties and reentrant
shapes) are prohibited.
S4 -
S5 - Shapes with zero area are prohibited. ≠ -
≡ -
Only orthogonal shapes or shapes on a 45° angle are permitted,
4 except in alphanumeric labels. S6
≠ -
Shapes formed with two non intersecting lines (known as
inside/outside shapes) are prohibited.
S7 1
- -
Shapes formed with line or path operation codes must not have 45°
bends.
S8 2, 3
> 0.5
Line end segments formed with line or path operation codes must
have a length-to-width ratio.
S9 3
Notes:
1. These shapes will not occur in the GDS layout format.
2. These shapes do not occur during GDS conversions.
3. This rule is not checkable in all DRC code systems.
4. Shapes under EFUSE are exempt from this check.
3.5 Polysilicon and Isolation Design Rules
The polysilicon and isolation design rules consist of RX design rules and PC design rules.
3.5.1 RX Design Rules
Table 25: RX Design Rules
1 - NFET gate minimum gate length. ≥ 0.030
1a - NFET gate maximum gate length. ≤ 6
2 - PFET gate minimum gate length. ≥ 0.030
2a - PFET gate maximum gate length. ≤ 6
10 - NFET gate minimum gate width. ≥ 0.100
11 - PFET gate minimum gate width. ≥ 0.100
12 - (NFET gate not touching (EG, ZG)) maximum gate width. ≤ 25
13 - (PFET gate not touching (EG, ZG)) maximum gate width. ≤ 25
50 - RX minimum width. ≥ 0.05
≥ 0.078
[(RX n+ junction, RX p+ junction) touching CA] minimum width
for run length (> 0 μm and < 0.125 μm), (RX with exact two outer
50a - vertices) and [(at least one edge perpendicular to the width direction,
this edge need to be connected one inner vertex) < 0.06μm] is exempt
from this rule.
50b - RX maximum width. ≤ 35
≥ 0.017
RX minimum area (μm2). Note: rectangle area with length ≥ 0.174
μm is exempt from this rule.
51 -
51a - RX minimum area (with all edge length < 0.14 μm) (μm2). ≥ 0.027
51b - RX minimum enclosed area (μm2). ≥ 0.025
51c - RX minimum enclosed area (with all edge length < 0.14 μm) (μm2). ≥ 0.038
52 - RX minimum space. ≥ 0.060
52c - RX minimum space (for run length > 0 μm). ≥ 0.070
52aR 1 (RX with span > 0.090 μm) minimum space to RX. ≥ 0.08
≥ 0.142
[p+ junction inner vertex not over (EG or OP or NCAP or
BIPOLAR)] minimum space to p+ junction outer vertex.
52bR 1, 2
52d 3 RXend minimum space to RX, checked projecting from RXend. ≥ 0.070
52faa - (RX edge with span > 0.086 μm) minimum space to RX. ≥ 0.070
52g - (RX edge with span < 0.050 μm) minimum space to RX. ≥ 0.090
52h - (RX edge with ≥ 0.050 span < 0.060 μm) minimum space to RX. ≥ 0.080
52i - (RX edge with ≥ 0.060 span < 0.070 μm) minimum space to RX. ≥ 0.070
52m - RX minimum notch. ≥ 0.100
52mR 1 RX minimum notch. ≥ 0.130
≤ 200
[RX p+ diffusion not touching (ESD_HBM, ESD_CDM,
53t 4 ESDSCR_HBM, EG, ZG, DIODE, NCAP, DRES, PRES, BIPOLAR,
ESD_POLYB, HAVAR, HVOLFET, DIFFNCAP, JFET, SCHKY,
ADM) with width > 0.6 um] maximum area (um2).
55 - RX with width < 0.4 μm must be orthogonal. - -
57 - (RX touching PC) must be orthogonal. - -
≥ 0.400
[RX not at (90° or 0°)] minimum width (measured orthogonal to the
edge).
58 -
≥ 0.400 [RX not at (90° or 0°)] minimum space to RX (measured orthogonal
to the edge).
59 -
60 - Minimum length of 45º RX edge. ≥ 0.300
RXend_def1 - RXend is an RX edge with 2 outside corners and length < 0.210 μm. ≡ -
- -
{[(RX n+ diffusion, RX p+ diffusion) not over (EG, ZG)] touching
PC} is prohibited from having an electrical connection to
(Mx_NVDD2V5, Mx_NVDD3V3, Mx_NVDD5V0).
RX.HV 5, 6
Notes:
1. This is a GLOBALFOUNDRIES recommended rule. All of the GLOBALFOUNDRIES recommended rules can be
turned on by a single switch within the DRC rule file.
2. It is waived in the case where PC is placed between RX inner vertex and RX outer vertex.
3. RXend is an RX edge with 2 outside corners and length < 0.21000 μm.
4. The layers in this rule are those layers in the TJ Boolean definition, and Reserved Design and Utility Levels in Design
Levels, Utility Levels and GDS Stream Layers.
5. This rule prohibits high voltage nets from a connection to a junction touching thin-oxide gate.
6. See Net Definitions for 1x Metal and Via Levels for high-voltage net definitions.
3.5.2 Illustrations of RX Design Rules
3.5.3 PC Design Rules
Table 26: PC Design Rules
100 - PC minimum width. ≥ 0.030
≥ 0.05 [(((PC not PC_E2) touching CA) not over EFUSE) oriented along
the X-Direction] minimum width
100a -
101a - PC minimum area (μm2). ≥ 0.00915
101b - PC minimum enclosed area (μm2). ≥ 0.024
102b 4, 5, 6 PC minimum space and notch. ≥ 0.080
102c 4, 5 PC minimum space to PC_landing_pad_123_edge. ≥ 0.075
102R 2 PC minimum space and notch. ≥ 0.100
≥ 0.100
(PC with span ≥ 0.03 μm) minimum space to PC (summed run length
> 0.100 μm).
102a -
≥ 0.120
(PC with span > 0.09 μm) minimum space to PC (summed run length
> 0.100 μm).
102d -
≥ 1.000
[(PC not PC_E2) with area > 630 μm² touching (PC density > 70%
with 30 μm tiling)] minimum space to (Gate with gate length ≤ 0.050
μm).
102i -
103 - (PC not over EFUSE) must be orthogonal. - -
≥ 0.070 [((PC or PCZFILL) inner vertex) over PC_E2] minimum space to
Gate when PC touching gate.
103b -
104a - NFET gate minimum space (run length > 0.000 μm) over RX. ≥ 0.100
104b - PFET gate minimum space (run length > 0.000 μm) over RX. ≥ 0.100
≡ 0.100
{[(gate not touching (ZG or EG or ESD_HBM or ESD_CDM or
104aR 2 ESD_POLYB)) with gate length ≤ 0.09 μm] extended by 0.020 μm
in gate width direction} gate side exact space to (PC or PCZFILL)
along the entire extended gate side.
≡ 0.120
{[(gate not touching (ZG or EG or ESD_HBM or ESD_CDM or
ESD_POLYB)) with gate length > 0.09 μm and < 0.2 μm] extended
104bR 2
by 0.020 μm in gate width direction} gate side exact space to (PC
or PCZFILL) along the entire extended gate side.
- -
(Gate with gate length < 0.035μm) must have a second supporting
PC along each side of (90% of the gate side) with space to the gate
side ≥ 0.23 μm and ≤ 0.26 μm.
104c 1
(Gate with gate length ≤ 0.050 μm extended by 0.020 μm in gate - -
width direction) must have two supporting (PC or PCZFILL) at each
104cR 1, 2
side. The first and second supporting PC with exact space ≡ 0.1 μm
with width ≤ 0.09 μm.
- -
(Gate with gate length ≥ 0.035 μm and ≤ 0.04 μm) must have a
second supporting PC along each side of (90% of the gate side) with
space to the gate side ≥ 0.23 μm and ≤ 0.28 μm.
104d 1
≠ -
{[(NFET, PFET gate side) not touching (ZG or EG or EGV or
ESD_HBM or ESD_CDM)] not touching CELLSNR} with (0.030
104e - μm ≤ gate length < 0.09 μm) space to (PC or PCZFILL or
PCGFILLOPC) > 0.110 μm is prohibited.
[Gate not over (EG or ZG or NCAP or PCAP or ALVT or - -
HOR_GATE)] must be oriented along the Y-Direction.
107 -
≥ 0.090 [Gate orientated along X-direction over (HOR_GATE or ALVT)]
minimum gate length.
107a -
110 - RX minimum overlap past ((PC NOT PC_E2) touching CA). ≥ 0.075
≡ 0.075
[((RX not PC) touching exactly one PC) not touching PCZFILL]
exact overlap past PC when [(gate not touching (EG or ESD_HBM
110R 2
or ESD_CDM or ESD_POLYB)) with gate length ≤ 0.09 μm], for
run length > 0.
≡ 0.095
[((RX not PC) touching exactly one PC) not touching PCZFILL]
exact overlap past PC when [(gate not touching (ZG or EG or
110aR 2 ESD_HBM or ESD_CDM or ESD_POLYB)) with gate length >
0.09 μm], for run length > 0.
111 - PC minimum overlap past RX. ≥ 0.080
≥ 0.095
(PC not PC end) minimum overlap past RX when (PC to RX inner
vertex space ≤ 0.050 μm).
111c -
113 - (PC not PC_E2) minimum space to RX. ≥ 0.025
≥ 0.035
[(PC not PC_E2) connected to (Mx_NVDD1V2, Mx_NVDD1V5,
Mx_NVDD1V8)] minimum space to [RX not over (EG or ZG)] for
different nets.
113b1R 3
≥ 0.035
[(PC not PC_E2) connected to (Mx_NVDD1V2, Mx_NVDD1V5,
Mx_NVDD1V8)] minimum space to (RX n-well contact, RX p-well
contact) for different nets.
113b2R 3
≥ 0.040
[(PC not PC_E2) connected to (Mx_NVDD1V2, Mx_NVDD1V5,
Mx_NVDD1V8)] inner vertex minimum space to [RX over (EG or
ZG)].
113b3R 3
≥ 0.035 [(PC not PC_E2) connected to (Mx_NVDD1V2, Mx_NVDD1V5,
Mx_NVDD1V8)] minimum space to [RX over (EG or ZG)].
113b4R 3
≥ 0.035
{[(RX n+ diffusion, RX n-well contact, RX p+ diffusion, RX
113c1R 3 triple-well contact) not over (EG or ZG)] connected to
(Mx_NVDD1V2, Mx_NVDD1V5, Mx_NVDD1V8)} minimum
space to (PC not PC_E2) for different nets.
≥ 0.035
{[(RX n-well contact, RX triple-well contact) over (EG or ZG)]
113c2R 3 connected to (Mx_NVDD1V2, Mx_NVDD1V5, Mx_NVDD1V8)}
minimum space to [(PC not PC_E2) touching (CA, RX)] for different
nets.
≥ 0.035
{[(RX n+ diffusion, RX p+ diffusion) over (EG or ZG)] connected
to (Mx_NVDD1V2, Mx_NVDD1V5, Mx_NVDD1V8)} minimum
space to [(PC not PC_E2) touching (CA, RX)].
113c3R 3
≥ 0.045 [(PC not PC_E2) touching CA] connected to Mx_NVDD2V5
minimum space to RX.
113d 3
≥ 0.050 [(PC not PC_E2) touching CA] connected to Mx_NVDD3V3
minimum space to RX.
113d1 3
≥ 0.045
[(RX n+ diffusion, RX n-well contact, RX p+ diffusion, RX triple
well contact) connected to Mx_NVDD2V5] minimum space to [(PC
not PC_E2) touching CA].
113e 3
≥ 0.050
[(RX n+ diffusion, RX n-well contact, RX p+ diffusion, RX triple
well contact) connected to Mx_NVDD3V3] minimum space to {[(PC
not PC_E2) touching CA] not touching LDFET}.
113e1 3
≥ 0.115 {[(PC not PC_E2) touching CA] connected to Mx_NVDD5V0}
minimum space to RX.
113f -
≥ 0.115
[(RX n+ diffusion, RX n-well contact, RX p+ diffusion, RX
triple-well contact) connected to Mx_NVDD5V0] minimum space
to{[ (PC not PC_E2) touching CA] not touching LDFET}.
113g -
≥ 0.035
PC inner vertex minimum space to RX (PC and gate on the same
4, 7 FET). 115
(PC inner vertex with both edge lengths ≥ 0.100 μm) minimum space ≥ 0.070
to gate.
115b -
[{(PC not PC_E2) not touching LDFET} touching CA] over RX - -
vertex is prohibited.
119a -
[(PC not PC_E2) touching Union(CA, CABAR, CA_E2, - -
CAREC_E2, CAFUSE)] vertex over RX is prohibited.
120 -
121 - PC can straddle RX only at 90°. - -
- -
({(PC NOT PC_E2) not touching LDFET} touching CA) over RX
must divide RX into two or more diffusion regions.
125 -
132 - (Gate not touching NCAP) maximum area (μm2). ≤ 64
132a - (Gate touching NCAP) maximum area (μm2). ≤ 100
≡ - [(PC over RX) over HOR_GATE] must be oriented along
X-Direction.
140 -
141 - (Gate over HOR_GATE) gate width must be ≥ 0.3 μm, and ≤ 3 μm. - -
142 - (Gate over HOR_GATE) gate length must be ≥ 0.1 μm, and ≤ 6 μm. - -
143 - (HOR_GATE touching PC) minimum width. ≥ 0.4
144 - (PC touching HOR_GATE) minimum space to PC. ≥ 0.12
145 - HOR_GATE minimum space to (gate outside HOR_GATE). ≥ 0.08
≥ 0.16 (PC touching HOR_GATE) inner vertex minimum space to RX
when PC and RX are in the same MOSFET.
146 -
147 15 RX minimum within HOR_GATE. ≥ 0.02
148 - Gate minimum within HOR_GATE. ≥ 0.08
149 - [(RX touching PC) over HOR_GATE] must be orthogonal. ≡ -
≠ -
[HOR_GATE over (LVTN, LVTP, HVTN, HVTP, ZVT, EG, ZG,
EFUSE, BIPOLAR, LOGOBND)] is prohibited.
150 -
PDPCa - (Summed PC area across full chip)/(GUARDEDG area) (%). ≤ 35
PCE2.W.1a - PC_E2 vertical exact width. ≡ 0.08
PCE2.W.1b - PC_E2 horizontal minimum length. ≥ 0.13
PCE2.W.1c - ((PC or PCZFILL) touching PC_E2) maximum width. ≤ 0.5
PCE2.S.1 - PC_E2 minimum space. ≥ 0.09
PCE2.S.PC.1 - PC_E2 minimum space to (PC or PCZFILL). ≥ 0.02
PCE2.S.PC.2 - PC_E2 minimum horizontal space to PC. ≥ 0.04
4, 7, 8, 9, PC_E2 minimum space to horizontal PC. ≥ 0.04
10, 11
PCE2.S.PC.3
PCE2.S.PC.3a 11 PC_E2 minimum space to H_Bar_PC. ≥ 0.03
≥ 0.035 PC_E2 minimum space to [RX over (PC or PCZFILL)] along gate
width direction.
PCE2.S.RX.1 -
≥ 0.035
PC_E2 minimum space to (RXZFILL touching PCZFILL) checked
over PCZFILL. (With touching prohibited)
PCE2.S.RX.1b -
≥ 0.05
PC_E2 minimum space to {gate edge coincident with [RX edge
touching (RX inner vertex)]} when gate to RX inner vertex space ≤
0.050 μm.
PCE2.S.RX.2 -
PCE2.S.CA.1 - PC_E2 minimum space to CA with touching prohibited. ≥ 0.02
PC.EX.PCE2.1 - (PC or PCZFILL) minimum overlap past PC_E2. ≥ 0.1
PCE2.OL.PC.1 - (PC or PCZFILL) minimum overlap of PC_E2. ≥ 0.04
PCE2.EX.PC.1 - PC_E2 minimum horizontal overlap past PC. ≥ 0.05
PCE2.EX.PC.1a 12 PC_E2 minimum overlap past (PC or PCZFILL). ≥ 0.03
PCE2.EX.A.1 - (PC not PC_E2) minimum area (μm2). ≥ 0.0069
PCE2.C.2 - [PC_E2 touching (EG or ZG)] is prohibited. - -
PCE2.C.3 - PC_E2 must be orthogonal rectangle. - -
PCE2.C.4 - PC_E2 must touch (PC or PCZFILL). - -
PCE2.C.5 - PC_E2 vertex is prohibited over (PC or PCZFILL). - -
PCE2.C.6 13 PC_E2 touching (PC over RX) is prohibited. - -
PCE2.C.7 - PC_E2 straddling CELLSNR is prohibited. - -
PCE2.ZFILL - CTZFILL is prohibited. - -
Notes:
1. Supporting PC can be PC or PCZFILL.
2. This is a GLOBALFOUNDRIES recommended rule. All of the GLOBALFOUNDRIES recommended rules can be
turned on by a single switch within the DRC rule file.
3. See Net Definitions for 1x Metal and Via Levels for high-voltage net definitions.
4. PC_landing_pad_123 is (PC_landing_pad_1) or (PC_landing_pad_2) or (PC_landing_pad_3):
• PC_landing_pad_1 is (PC with width = 0.060 μm and length = 0.080 μm) touching (PC with width = 0.040 μm).
The jog formed by the PC_landing_pad_1 must be 0.020 μm high and 0.080 μm long.
• PC_landing_pad_2 is (PC with width = 0.060 μm and length = 0.080 μm) touching (PC with width = 0.035 μm).
The jog formed by the PC_landing_pad_1 must be 0.025 μm high and 0.080 μm long.
• PC_landing_pad_3 is (PC with width = 0.060 μm and length = 0.080 μm) touching (PC with width = 0.030 μm).
The jog formed by the PC_landing_pad_1 must be 0.030 μm high and 0.080 μm long
5. PC_landing_pad_123_edge is PC edge coinciding with (PC_landing_pad_123 edge with length = 0.080).
6. PC_landing_pad_123_edge is exempt from this check.
7. PC_landing_pad_123 is exempt from this check.
8. PCend is exempt from this check
9. PCend is PC edge < 0.048 μm bounded by 2 outside corners and adjacent edges ≥ 0.068 μm
10. H_Bar_PC is exempt from this check.
11. H_Bar_PC is a horizontal bar with dimension of 0.11 μm by 0.06 μm, abutting two PCs with width = 0.03 μm at
12. PC edge with length ≤ 0.003um is exempt from this check
13. This rule is not checked on CELLSNR
14. PC_orig refer to the original PC drawing layer (17; 0).
15. RX n-well contact or p-well contact are exempt from this rule check.
3.5.4 Illustrations of PC Design Rules
3.5.5 RXZFILL Design Rules
Table 27: RXZFILL Design Rules
D50 - RXZFILL minimum width. ≥ 0.050
D50b - RXZFILL maximum width. ≤ 5.000
D51 - RXZFILL minimum area (μm2). ≥ 0.018
D52 - RXZFILL minimum space to (RX or RXZFILL). ≥ 0.070
D52a - (RXZFILL with span > 0.090 μm) minimum space to (RX or RXZFILL). ≥ 0.080
D52m - RXZFILL must be orthogonal rectangle. ≡ -
D57 - RXZFILL must not touch (RX or PC). ≡ -
3.5.6 PCZFILL Design Rules
Table 28: PCZFILL Design Rules
D100 - PCZFILL minimum width. ≥ 0.030
D101a - PCZFILL minimum area (μm2). ≥ 0.0105
D102 - PCZFILL minimum space to (PC or PCZFILL). ≥ 0.080
≥ 0.100
(PCZFILL with span ≥ 0.03 μm) minimum space to (PC or PCZFILL) (summed
run length > 0.100 μm).
D102a -
≥ 0.120
(PCZFILL incurring ZG) minimum space to (PC or PCZFILL) for run length
> 0.100 μm
D102b -
≥ 0.120
(PCZFILL with span ≥ 0.09 μm) minimum space to (PC or PCZFILL) (summed
run length > 0.100 μm).
D102d -
≥ 1.000
[PCZFILL with area ≥ 630 μm2 touching (PC density > 70% with 30 μm tiling)]
minimum space to (Gate with gate length ≤ 0.050 μm).
D102i -
D103 - PCZFILL must be orthogonal rectangle. ≡ -
D110 - (RX or RXZFILL) overlap past PCZFILL. ≥ 0.030
D111 - PCZFILL minimum overlap past (RX or RXZFILL). ≥ 0.080
≥ 0.095
(PCZFILL not PCZFILL end) minimum overlap past RX when (PCZFILL to
RX inner vertex space ≤ 0.050 μm).
D111c 1
D113 - PCZFILL minimum space to (RX or RXZFILL). ≥ 0.025
D119a - PCZFILL over RX vertex is prohibited. ≠ -
D120 - PCZFILL vertex over RX is prohibited. ≠ -
D121 - PCZFILL can straddle (RX or RXZFILL) only at 90o. ≡ -
D126 - PCZFILL must not touch (PC not PC_E2). ≡ -
Note:
1. PCZFILL end is a PCZFILL edge with edge length < 0.048 μm touching two outer vertices.
3.6 Short Edge Design Rules
Table 29: Short Edge Design Rules
- -
RX vertex must not be connected to two short edges with length <
0.049 μm.
SE1 -
- -
PC vertex must not be connected to two short edges with length <
0.028 μm.
SE2 -
- -
PC edge with length < 0.040 μm must have at least one neighboring
edge with length ≥ 0.040 μm.
SE2a 2, 3
SE2_orR 1, 4 One of the following rules must be met SE2aR or SE2bR. - -
- -
[(PC inner vertex outside EFUSE) outside PC_E2] must not be
connected to edges with length < 0.100 μm.
SE2aR 1, 4
- -
[(PC inner vertex outside EFUSE) inside PC_E2] must be connected
to x-direction edge with length ≤ 0.005 μm.
SE2bR 1, 4
- -
(PPLUS or NPLUS) vertex must not be connected to two short edges
with length < 0.098 μm.
SE3 -
- -
M1 vertex must not be connected to two short edges with length <
0.049 μm.
SE4 -
- -
Mx vertex must not be connected to two short edges with lengths <
0.050 μm, where x = 2-6.
SE5 -
- -
BA vertex must not be connect to two short edges with lengths <
0.100 μm.
SE7 -
Notes:
1. This is a GLOBALFOUNDRIES recommended rule. All GLOBALFOUNDRIES recommended rules can be turned
on by a single switch within the DRC rule file.
2. PC_landing_pad_123 is (PC_landing_pad_1) or (PC_landing_pad_2) or (PC_landing_pad_3).
• PC_landing_pad_1 is (PC with width = 0.060 μm and length = 0.080 μm) touching (PC with width = 0.040 μm).
The jog formed by the PC_landing_pad_1 must be 0.020 μm high and 0.080 μm long
• PC_landing_pad_2 is (PC with width = 0.060 μm and length = 0.080 μm) touching (PC with width = 0.035 μm).
The jog formed by the PC_landing_pad_1 must be 0.025 μm high and 0.080 μm long.
• PC_landing_pad_3 is (PC with width = 0.060 μm and length = 0.080 μm) touching (PC with width = 0.030 μm).
The jog formed by the PC_landing_pad_1 must be 0.030 μm high and 0.080 μm long.
3. PC_landing_pad_123 is exempt from this check.
4. This rule is not checked over CELLSNR.
3.7 Antenna Design
As designers use the antenna design rules, they should become familiar with the charging mechanism and definitions
related to antenna design.
3.7.1 Charging Mechanism
Charging is a process caused by reactive ion etching and other plasma-assisted manufacturing steps. While inside the
plasma chamber, the wafer is exposed to electron and ion currents from the plasma to the surface. In a well-behaved
uniform plasma, the electron and ion currents are balanced through the radio-frequency cycle and no net charge buildup
takes place. When irregularities, such as surface topography, sporadic plasma collapse, or lateral plasma nonuniformity
are introduced, the electron and ion currents are no longer balanced and currents can flow from the wafer surface to the
bulk silicon and then back to the plasma. The direction of current flow and the amount of charge depends on the plasma
composition and temperature and potential distributions. The direction of current might be different depending on the
position on the wafer.
When the current flows through the gate oxide, it causes irreversible damage and, thus, early reliability failures, threshold
voltage (Vt) shifts, and gamma/sub-Vt swing degradation as well as increased distributions. Because even small Vt shifts
differential pairs and other circuits in excess of 15mV have been observed when antenna ratios are unbalanced. It has
also been observed that nested features experience more charging than isolated features.
In the following figure, the gate is exposed to any charging induced by the right CA, the right M1, the right two V1 vias,
and M2. For every metal and via above M2, this gate is tied to the substrate through the left CA/M1/V1/M2 network,
and charging restrictions do not apply. The diode carries the current that would otherwise pass through the gate and
must be large enough to adequately conduct the current.
The diode is often reverse-biased. High temperatures during the plasma-assisted manufacturing steps change the electrical
behavior of the diode to that of a resistor. When the diode area is larger, the resistance is smaller and more current can
be carried. In normal circuit operation, the diode is reverse-biased and, therefore, does not short.
The antenna for a given gate is the sum of the areas, Ax, of all shapes on a specific level, x, that are electrically connected
to the gate. For example, an M2 antenna for a gate is defined as all shapes connected to that gate through the PC/CA/M1/V1
network.
3.7.2 Definitions Relating to Antenna Design
Any device where PC (polysilicon) touches RX (diffusion) but is not electrically
connected to RX.
Floating-gate device
Defined at each metal level as the ratio of the metal area to the connected
gate-oxide area at which the gate has not yet been electrically connected to RX.
Metal antenna ratio
For example, the ratio for an M1 region would be the M1 area divided by the
gate oxide area of the gate to which M1 is connected.
The ratio of the total PC area to the gate oxide area in each PC that intersects
RX.
Polysilicon antenna ratio
RX not (PC not PC_E2)
RX_ant
3.7.3 Antenna Design Rules
Table 30: Antenna Design Rules
130a - PC - gate antenna: Maximum ratio of (PC area) / (gate area). < 2500
≤ 25
PC - thick gate antenna: For gate touching EG or ZG, the maximum
ratio of (PC area) / (gate area).
130b -
≤ 10000
Metal (Mx) – gate antenna (general rule): For nets connected to Gate,
the ratio of [metal area] / [(Gate area) + (2 x RX_ant area)], where
131_1 1, 2 the metal area is the noncumulative level-specific metal area
electrically connected to any Gate and, optionally, to the RX_ant
area. Where Mx = M1-M6, IA, IB, OI, LB.
≤ 2000
Metal (Mx) – gate antenna (general rule): For nets connected to Gate,
the ratio of [metal area] / [(Gate area) + (2 x RX_ant area)], where
131_2 1, 2 the metal area is the noncumulative level-specific metal area
electrically connected to any Gate and, optionally, to the RX_ant
area. Where Mx = BA, JA, JB.
≤ 1
Via - medium/thick gate antenna: For nets connected to (Gate over
EG or ZG), the ratio of [via area] / [(Gate area) + (5 x RX_ant area)],
131a 1, 2, 7 where the via area is the noncumulative level-specific via area
electrically connected to any Gate and, optionally, to the RX_ant
area.
≤ 200
Via (Vx) – gate antenna (general rule): For nets connected to (Gate
with a Gate area > 0 μm2), the ratio of [via area] / [(Gate area) + (5
131b1 1, 2, 7 x RX_ant area)], where the via area is the noncumulative
level-specific via area electrically connected to any Gate and,
optionally, to the RX_ant area. Where Vx = V1-V5, YX, XA, JQ
≤ 40
Via (Vx) – gate antenna (general rule): For nets connected to (Gate
with a Gate area > 0 μm2), the ratio of [via area] / [(Gate area) + (5
131b2 1, 2, 7 x RX_ant area)], where the via area is the noncumulative
level-specific via area electrically connected to any Gate and,
optionally, to the RX_ant area. Whre Vx = WT, YZ, YS, YR, XD.
131c 1 CA - gate antenna: Ratio of (CA area) / (Gate area). ≤ 20
≤ 600
Metal - medium gate antenna: For nets connected to (gate over EG
or ZG), the ratio of [metal area] / [(gate area) + (2 x RX_ant area)],
131f - where the metal area is the noncumulative level-specific metal area
electrically connected to any gate and, optionally, to the RX_ant
area.
≤ 500
VV - gate antenna (general rule): For nets electrically connected to
(gate and VV), the ratio of (VV area) / (2 x RX_ant area).
131h -
< 1
PFET gate connected to [LB touching (DV, LV, LV_ROUND or
LV_OBLONG) labeled with ("TEST_PAD_NOESD" on LBESD)]
131i - must be connected to (RX_ant in the same electrical n-well as the
gate) with a ratio of (DV, LV, LV_ROUND or LV_OBLONG area)
/ (20 x RX_ant area).
< 1
(NFET gate over isolated p-well) connected to [LB touching (DV,
LV, LV_ROUND or LV_OBLONG) labeled with
131j - ("TEST_PAD_NOSED" on LBESD)] must be connected to (RX_ant
in the same electrical triple-well as the gate) with a ratio of (DV,
LV, LV_ROUND or LV_OBLONG area) / (20 x RX_ant area).
< 1
[NFET gate not over (isolated p-well, or NW)] connected to [LB
touching (DV, LV, LV_ROUND or LV_OBLONG) labeled with
131k - ("TEST_PAD_NOSED" on LBESD)] must be connected to {RX_ant
not over [(T3 not over NW), or NW]} with ratio of (DV, LV,
LV_ROUND or LV_OBLONG area) / (20 x RX_ant area).
≤ 500
[PFET gate touching (ZG, EG)] must be electrically connected to
[RX_ant over (any NW that is electrically connected to the NW
131x -
touching the PFET gate)] with a ratio of (VV area) / (2 x RX_ant
area).
≡ -
For any [(NFET gate over NCAP) touching (ZG, EG)] one of the
following rules must be met {131xb, 131xc, 131xd}.
131xa_or -
≤ 500
[(NFET gate over NCAP) touching (ZG, EG)] must be electrically
connected to [RX_ant over (any NW that is electrically connected
131xb -
to the NW touching the NFET gate)] with a ratio of [VV area / (2 x
RX_ant area)].
≤ 0.2
[(NFET gate over NCAP) touching (ZG, EG)] must be electrically
connected to RX_ant with a ratio of [VV area / (2 x RX_ant area)].
131xc -
≤ 500
[(NFET gate over NCAP) touching (ZG, EG)] must be electrically
connected to {(RX_ant not over NW) or [RX substrate contact]}
with a ratio of [VV area / (2 x RX_ant area)].
131xd 3
≡ -
For any [(PFET gate over PCAP) touching (ZG, EG)] one of the
following rules must be met {131xb_1, 131xc_1, 131xd_1}.
131xa_or_1 -
≤ 500
{[(PFET gate over PCAP) over isolated p-well] touching (ZG, EG)}
131xb_1 - must be electrically connected to [RX_ant not over (NW,T3) that is
electrically connected to PFET gate] with a ratio of [VV area / (2 x
RX_ant area)].
≤ 0.2
[(PFET gate over PCAP) touching (ZG, EG)] must be electrically
connected to RX_ant with a ratio of [VV area / (2 x RX_ant area)].
131xc_1 -
≤ 500
[(PFET gate over PCAP) touching (ZG, EG)] must be electrically
connected to {(RX_ant over NW) or [RX substrate contact]} with
a ratio of [VV area / (2 x RX_ant area)].
131xd_1 -
≤ 500
{[NFET gate not over NCAP touching (ZG, EG)] over isolated
P-well} must be electrically connected to RX_ant over (any triple
131y -
well that is electrically connected to the triple well touching the
NFET gate) with a ratio of [VV area / (2 x RX_ant area)].
≤ 500
{[NFET gate not over (NCAP, isolated P-well)] touching (ZG, EG)}
must be electrically connected to [RX_ant not over (NW, T3)] with
a ratio of (VV area) / (2 x RX_ant area).
131z -
< 8
{Area of Mx electrically connected to NW electrically connected
by Mx to NW touching ([Gate electrically connected by Mx to
134a 4, 5
(RX_ant not over NW)] or (isolated p-well touching gate))}/{NW
area + (T3 not NW) area + 2*perimeter of union (NW, isolated
p-well) + [1400*(RX_ant not over NW) area which is electrically
connected by Mx to NW]}. where Mx = M1-M6, BA, IA, IB, JA,
JB,OI, LB.
- -
Triple-well tie-down rule: (Isolated p-well touching Gate) must touch
RX_ant, which is electrically connected to (RX_ant over NW)
through M1.
135a 6
Notes:
1. Nets tied to an RX substrate contact, RX n-well contact, or RX triple-well contact satisfy this rule.
2. The Gate area is the sum of all connected Gate types.
3. The NFET gate must touch the NW that is electrically connected to substrate.
4. When RX p+ diffusion is connected to RX substrate contact, then that node should be connected to the chip ground
bus wiring directly and not just through the substrate. This will avoid false softcheck errors in LVS.
5. For this rule, "electrically connected" means that any RX (i.e. diodes and well contacts) are considered equally to
short the well.
6. [(NFET gate over ESD_POLYB) connected to RX p-well contact] is exempt from this rule because the well and
gate are tied to the same potential and, therefore, are safe from plasma charging.
7. VV via is not checked by this rule.
3.8 Thick-Oxide (ZG) Device Design Rules
Table 31: Thick-Oxide (ZG) Device Design Rules
ZG0 - ZG is mutually exclusive with EG on the same wafer. ≡ -
≥ 0.27
[(NFET gate over ZG) not over (UNDERDRIVE or OVERDRIVE)]
minimum gate length.
ZG1 -
≥ 0.22
[(NFET gate over ZG) over UNDERDRIVE] minimum gate length
for 1.800 V normal supply voltage operation.
ZG1a -
≥ 0.55
[(NFET gate over ZG) over OVERDRIVE] minimum gate length
for 3.300 V normal supply voltage operation.
ZG1b -
≥ 0.27
[(PFET gate over ZG) not over (UNDERDRIVE or OVERDRIVE)]
minimum gate length.
ZG2 -
≥ 0.22
[(PFET gate over ZG) over UNDERDRIVE] minimum gate length
for 1.800 V normal supply voltage operation.
ZG2a -
≥ 0.44
[(PFET gate over ZG) over OVERDRIVE] minimum gate length
for 3.300 V normal supply voltage operation.
ZG2b -
ZG10 - (Gate over ZG) minimum gate width for device Weff. ≥ 0.27
ZG15 - Gate minimum within (UNDERDRIVE touching ZG). ≥ 0
ZG17 - (UNDERDRIVE touching ZG) must be within ZG. ≥ 0
ZG20 1 ZG must be orthogonal or 45o. - -
ZG21 - ZG minimum width. ≥ 0.32
ZG22 - ZG minimum space and notch. ≥ 0.32
≥ 0.285
[(Gate side extended by 0.13μm) not touching NCAP] minimum
within ZG for run length > 0μm in gate length direction.
ZG24a -
≥ 0.13
(Gate not touching NCAP) minimum within ZG in gate width
direction. (Rectangular enclosure).
ZG24b -
≥ 0.24
[(Gate side extended by 0.13μm) not touching NCAP] minimum
space to ZG for run length > 0μm in gate length direction.
ZG25a -
≥ 0.165
(Gate not touching NCAP) minimum space to ZG in gate width
direction.
ZG25b -
≥ 0.24
ZG minimum overlap past NW with abutting permitted (for TE
derivation).
ZG30 -
ZG32 - ZG over (EG, LVTN, LVTP, HVTN, HVTP) is prohibited. - -
≥ 0.24
ZG minimum overlap of NW with abutting permitted (for TF
derivation).
ZG34 -
≥ 0.15
[(RX n+ junction, RX p+ junction) touching ZG] minimum space
to adjacent (RX n+ junction, RX p+ junction).
ZG52a -
ZG102 - PC minimum space to adjacent [PC touching (gate over ZG)]. ≥ 0.141
ZG102b - PC minimum space to adjacent (PC over ZG). ≥ 0.15
ZG110 - (RX over ZG) minimum overlap past PC. ≥ 0.14
ZG207 - (CA over RX over ZG) minimum space to gate. ≥ 0.06
ZG207a - (CA over RX over ZG) minimum space to PCZFILL. ≥ 0.04
≥ 0.6
[NW touching (ZG not over LOWVOLT)] minimum space to NW
for different net.
ZG252 -
≥ 1.273
[NW touching (ZG not over LOWVOLT)] inside vertex minimum
space to outer vertex for different net.
ZG252b -
≥ 0.2
[(RX p+ junction) touching (ZG not over LOWVOLT)] minimum
within NW.
ZG260 -
≥ 0.2
[(RX n+ junction) touching (ZG not over LOWVOLT)] minimum
space to NW.
ZG265a -
≥ 0.2
RX n+ junction minimum space to [NW over (ZG not over
LOWVOLT)].
ZG265b -
≤ 30
[(RX p+ junction touching ZG) maximum distance to a (RX n-well
contact touching CA)] over NW for preventing latchup.
ZG268a -
≤ 30
{[(RX n+ junction not covered by ESD_HBM or ESD_CDM or
ESDSCR_HBM) touching ZG] maximum distance to an (RX p-well
ZG268b -
contact touching CA)} not over (NW or BFMOAT) for preventing
latchup.
Notes:
1. +/-0.1º tolerance is allowed for 45º angle
3.8.1 Illustrations of Thick-Oxide (ZG) Device Design Rules
3.9 High-speed I/O Device Design Rules
Table 32: High-speed I/O Device Design Rules
EG0 - EG is mutually exclusive with ZG on the same wafer. - -
≥ 0.150
[(NFET gate over EG) not over (EGV or UNDERDRIVE or
OVERDRIVE)] minimum gate length for 1.800V device channel
length.
EG1 -
≥ 0.110
[(NFET gate over EG) over (EGV or UNDERDRIVE)] minimum
gate length for 1.500V or 1.200V normal supply voltage operation.
EG1a -
≥ 0.32
[(NFET gate over EG) over OVERDRIVE] minimum gate length
for 2.100V normal supply voltage operation.
EG1c -
≥ 0.150
[(PFET gate over EG) not over (EGV or UNDERDRIVE or
OVERDRIVE)] minimum gate length for 1.800V device channel
length.
EG2 -
≥ 0.110
[(PFET gate over EG) over (EGV or UNDERDRIVE)] minimum
gate length for 1.500V or 1.200V normal supply voltage operation.
EG2a -
≥ 0.15
[(PFET gate over EG) over OVERDRIVE] minimum gate length
- for 2.100V normal supply voltage operation. EG2c
EG3 - [(Gate over EG) not over NCAP] maximum gate length. ≤ 6
EG10 - (Gate over EG) minimum gate width for device Weff. ≥ 0.270
EG11a - EG minimum area (μm2). ≥ 0.400
EG11b - EG minimum enclosed area (μm2). ≥ 0.400
EG15 - Gate minimum within (EGV or UNDERDRIVE). ≥ 0
EG17 - (EGV or UNDERDRIVE) must be within (EG or ZG). ≥ 0
EG18 - EGV must not touch UNDERDRIVE. ≠ -
EG20 1 EG must be orthogonal or 45º. ≡ -
EG21 - EG minimum width. ≥ 0.320
EG22 - EG minimum space and notch. ≥ 0.320
EG24 - Gate minimum within EG in gate length direction. ≥ 0.240
EG25 - Gate minimum space to EG in gate length direction. ≥ 0.240
EG25a - (RX n+ junction or RX p+ junction) minimum space to EG. ≥ 0.130
EG26 - (RX n+ junction or RX p+ junction) minimum within EG. ≥ 0.130
≥ 0.240
EG minimum overlap past NW with abutting permitted (for GN
derivation).
EG30 -
EG31 - NW minimum overlap past EG with abutting permitted. ≥ 0.240
EG32 - EG over (ZG, LVTN, LVTP, HVTN, HVTP) is prohibited. ≠ -
≥ 0.240
EG minimum overlap of NW with abutting permitted (for GP
derivation).
EG34 -
EG52 - (RX over EG) minimum space. ≥ 0.150
≥ 0.150
[(RX n+ junction, RX p+ junction) touching EG] minimum space
to adjacent (RX n+ junction, RX p+ junction).
EG52a -
- - {[(PC not PC_E2) touching CA] touching EG} must meet either
EG102a or EG102b.
EG102_or -
≥ 0.140
((((PC not PC_E2) touching CA) not touching UNDERDRIVE)
touching EG) minimum space to (PC not PC_E2).
EG102a -
EG102b 2 EG_Pcend minimum space, for run length ≥ 0.105 μm ≥ 0.120
EG110 - (RX over EG) minimum overlap past PC. ≥ 0.120
≥ 0.040
[(CA over RX) over EG] minimum space to [(PC not PC_E2)
touching CA].
EG207 -
≥ 0.6
[NW touching (EG not over LOWVOLT)] minimum space to NW
for different net.
EG252 -
≥ 0.180
[(RX p+ junction touching CA) touching (EG not over LOWVOLT)]
3 minimum within NW. EG260
≥ 0.180
[(RX n+ junction touching CA) touching (EG not over LOWVOLT)]
3 minimum space to NW. EG265a
≥ 0.180
RX n+ junction minimum space to {NW touching [(gate over EG)
3 not over UNION (LOWVOLT, UNDERDRIVE, EGV)]}. EG265b
≤ 40
{[(RX p+ junction touching EG) not over DRES] maximum distance
to a (RX n-well contact touching CA)} over NW for preventing
latchup.
EG268a -
≤ 40
{[(RX n+ junction not covered by ESD_HBM or ESD_CDM or
ESDSCR_HBM) touching EG] maximum distance to an (RX p-well
contact touching CA)} not over NW for preventing latchup.
EG268b -
Notes:
1. +/-0.1º tolerance is allowed for 45º angle.
2. EG_PCend is a (((PC not PC_E2) touching CA) edge touching ((PC not PC_E2) touching EG)) with length ≥ 0.105
μm, ≤ 0.300 μm bounded by 2 outside corners and adjacent edges ≥ 0.068 μm.
3. (RX p+ junction, RX n+ junction) touching (33VHVFET, 5VHVFET, LDFET3P3V, LDFET5P0V, PAHVFET) are
exempt from this check.
3.9.1 Illustrations of High-Speed I/O Device Design Rules
3.10 N-Well and Latchup Design Rules
Table 33: N-Well and Latchup Design Rules
250 - NW minimum width. ≥ 0.240
250a 1 NW must be orthogonal or 45º. - -
251a - NW minimum area (μm2). ≥ 0.400
251b - NW minimum enclosed area (μm2). ≥ 0.400
252a - NW minimum space and notch. ≥ 0.240
252b - NW minimum space to NW for different nets. ≥ 0.350
252c 2 NW inner vertex minimum space to outer vertex for different net. ≥ 0.710
260 3 RX p+ junction minimum within NW. ≥ 0.065
≥ 0.100
RX p+ junction minimum within NW with at least one edge at each
NW outer vertex.
260a -
261 3 RX n-well contact minimum within NW. ≥ 0.065
265 3 RX n+ junction minimum space to NW. ≥ 0.065
≥ 0.105
RX n+ junction minimum space to NW with at least one edge at
each NW inner vertex.
265a -
≥ 0.065
((RX p-well contact) not touching CELLSNR) minimum space to
3 NW. 266
≤ 40
(RX p+ junction maximum distance to (RX n-well contact touching
Union(CA, CABAR, CA_E1, CAREC_E2))) over NW for preventing
latchup.
268a -
≤ 40
{[RX n+ junction not over (ESD_HBM or ESD_CDM or MOB)]
maximum distance to (RX p-well contact touching Union(CA,
268b -
CABAR, CA_E1, CAREC_E2))} not over NW for preventing
latchup.
270 - NW minimum overlap past (Gate side extended by 0.056 μm). ≥ 0.140
271 - NW minimum space to (Gate side extended by 0.035 μm). ≥ 0.120
272 - RXZFILL minimum within NW. ≥ 0.065
273 - RXZFILL minimum space to NW. ≥ 0.065
LWV01 1 LOWVOLT shapes must be orthogonal or 45o. - -
LWV02 - [RX touching (PC not over PC_E2)] minimum within LOWVOLT. ≥ 0
NW.ZFILL - NWZFILL is prohibited. - -
Notes:
1. +/-0.1º tolerance is allowed for 45º angle.
2. [(NW inner vertex or NW outer vertex) over CELLSNR] is exempt from this check.
3. (RX p+ junction, RX n+ junction, RX p-well contact, RX n-well contact) touching (33VHVFET, 5VHVFET,
LDFET3P3V, LDFET5P0V, PAHVFET) are exempt from this check.
3.10.1 Illustrations of N-Well and Latchup Design Rules
3.11 Triple-Well and Latchup Design Rules
The triple-well option offers a separate p-well (marked by level T3) totally or partially isolated from the substrate by a
buried n-band implant. The p-well can be surrounded by NW to isolate it laterally from the substrate.
3.11.1 T3 Design Approach
The following table presents a set of design rules for triple-well designs that use the T3 level instead of the N3 level
offered in predecessor technologies. These rules offer a path for migrating an existing twin-well design to a triple-well
design by adding an NW ring and a T3 shape around the layout.
All n-wells within an NW ring or T3 triple wells are shorted by the buried n-band implant and are all at the same potential.
Table 34: Alternative Triple Well and Latchup Design Rules
3T01 1 T3 must be orthogonal or 45º. - -
3T02 - T3 minimum width. ≥ 3
3T03 - T3 minimum space and notch. ≥ 3.5
3T05 - T3 overlap of NW. ≥ 0.4
3T06 2, 3 T3 minimum space to NW. ≥ 2.5
3T07R - NW minimum overlap past T3. ≥ 1
3T13 - BFMOAT over T3 is prohibited. - -
3T17 - T3 minimum space to RX n+ junction with straddling prohibited. ≥ 1.65
≥ 0.8
Isolated p-well minimum space to p-well (isolated or substrate) for
different nets.
3T18 -
≥ 1.0
[Isolated p-well touching (EG or ZG)] minimum space to p-well
(isolated or substrate) for different nets.
3T18b -
3T21 - RX n+ junction minimum within T3. ≥ 0.465
Notes:
1. A +/-0.1º tolerance is allowed for 45º angle.
3. For DRC checking purposes, T3 edges inside of NW layer should be considered in the spacing check (see Figure
35:Triple-Well and Latchup Design Rules Using T3).
3.12 Moat Design Rules
The BFMOAT level can be used to design a resistive substrate ring to reducing substrate noise coupling between regions
on the same chip.
Table 35: BFMOAT Design Rules
790 - BFMOAT minimum width. ≥ 3.5
791 - BFMOAT must be orthogonal. ≡ -
792 - BFMOAT minimum space and notch. ≥ 3.5
793 1 BFMOAT minimum space to NW. ≥ 0.7
795 - BFMOAT minimum space to RX. ≥ 0.35
796 1 BFMOAT minimum space to ZVT. ≥ 0.7
- -
(RX, RXZFILL, NW, PPLUS, PC, PCZFILL, BIPOLAR, LVTN,
LVTP, HVTN, HVTP, ELVTN, ELVTP, NCAP, T3, ZVT) over
BFMOAT is prohibited.
799a -
Notes:
1. This rule is for BF derivation
3.13 Zero-Vt NFET Design Rules
This technology offers one zero-Vt NFET device per oxide thickness. The ZVT marking layer is used to designate
zero-Vt NFET devices.
Table 36: Zero-Vt NFET Design Rules
ZVT1 - ZVT minimum width. ≥ 0.240
ZVT2 - ZVT minimum space and notch. ≥ 0.240
ZVT3 - ((ZVT touching gate) not touching IND) must be orthogonal. ≡ -
≠ -
(ZVT over gate) is prohibited over NW, T3, {PPLUS touching [(PC
not PC_E2) touching CA]}, LVTN, LVTP, HVTN, HVTP.
ZVT4 -
ZVT5a 1 ZVT minimum space to NW with touching prohibited. ≥ 0.800
ZVT6a - ZVT minimum area (μm2). ≥ 0.400
ZVT6b - ZVT minimum enclosed area (μm2). ≥ 0.400
ZVT8 - ((RX touching PC) touching CA) minimum space to ZVT. ≥ 0.380
ZVT9 1 (RX n+ junction) minimum within ZVT. ≥ 0.160
≡ 0.160
[(Gate end touching ZVT) extended by 0.080] must be exact within
ZVT
ZVT9b -
ZVT10 - (Gate over ZVT) minimum gate width. ≥ 0.400
ZVT12 - Gate touching ZVT minimum gate length. ≥ 0.200
ZVT13 - (Gate over ZG) touching ZVT minimum gate length. ≥ 0.500
ZVT13a - (Gate over EG) touching ZVT minimum gate length. ≥ 0.450
ZVT14 - [Only one (RX touching gate)] is permitted within ZVT. - -
≥ 0.240 {ZVT touching [(EG or ZG) not over LOWVOLT]} minimum space
and notch.
ZVT252 -
Note:
1. (ZVT over RPO_DIODE) is exempt from this check.
Table 37: ZVT Core Design Rules
ZVTC1 - ZVT_CORE must be coinciding with (ZVT not EG). - -
ZVTC2 - (ZVT_CORE over EG) is prohibited. - -
ZVTC3 - [(CHIPEDGE touching ZG) over ZVT_CORE] is prohibited. - -
3.14 eLVT Device Design Rules
This device is a standard FET device with a different well implant and a lower threshold voltage. This device receives
the standard source/drain implant and FET extension implants. The ELVTN marking layer is used to designate eLVT
NFET devices.
Table 38: eLVT NFET Device Design Rules
≥ 0.126 ELVTN minimum width with run length < 0.000 μm and with
touching vertex permitted.
ELVTN1 -
≥ 0.16 ELVTN minimum width with run length > 0.000 μm and with
touching vertex permitted.
ELVTN1a -
≥ 0.126 ELVTN minimum space and notch with run length < 0.000 μm and
with touching vertex permitted.
ELVTN2 -
≥ 0.16 ELVTN minimum space and notch with run length > 0.000 μm and
with touching vertex permitted.
ELVTN2a -
ELVTN3 - ELVTN shapes must be orthogonal. - -
- -
(ELVTN over RX) over (EG, ZG, ELVTP, LVTN, LVTP, HVTN,
- HVTP) is prohibited. ELVTN4
≥ 0.111
(Gate side extended by 0.056 μm) minimum space to ELVTN for
run length > 0.000 μm in gate length direction.
ELVTN8a -
≥ 0.056
[Gate touching ((PC not PC_E2) touching CA)] minimum space to
ELVTN in gate width direction.
ELVTN8b -
≥ 0.111
(Gate side extended by 0.056 μm) minimum within ELVTN for run
length > 0.000 μm in gate length direction.
ELVTN9a -
≥ 0.056
Gate minimum within ELVTN in gate width direction (rectangular
enclosure).
ELVTN9b -
ELVTN10 - ELVTN minimum area (μm2). ≥ 0.095
ELVTN11 - ELVTN minimum enclosed area (μm2). ≥ 0.095
ELVTN12 - ELVTN minimum space to [(RX or PC) over OP]. ≥ 0.18
ELVTN13 - ELVTN minimum space to [(RX or PC) over SBLK]. ≥ 0.18
- -
ELVTN over (EG,ZG, CELLSNR, ESD_HBM, ESD_CDM,
ESDSCR_HBM, NWRES, PRES, DRES, ELVTP, LVTN, LVTP,
ELVTN14 -
HVTN, HVTP, ZVT, OP, SBLK, NCAP, PCAP, BFMOAT, EFUSE,
BIPOLAR, ESD_POLYB) is prohibited.
The ELVTP marking layer is used to designate eLVT PFET devices.
Table 39: eLVT PFET Device Design Rules
≥ 0.126 ELVTP minimum width with run length < 0.000 μm and with
touching vertex permitted.
ELVTP1 -
≥ 0.16 ELVTP minimum width with run length > 0.000 μm and with
touching vertex permitted.
ELVTP1a -
≥ 0.126 ELVTP minimum space and notch with run length < 0.000 μm and
with touching vertex permitted.
ELVTP2 -
≥ 0.16 ELVTP minimum space and notch with run length > 0.000 μm and
with touching vertex permitted.
ELVTP2a -
ELVTP3 - ELVTP shapes must be orthogonal. - -
- -
(ELVTP over RX) over (EG, ZG, ELVTN, LVTN, LVTP, HVTN,
HVTP) is prohibited.
ELVTP4 -
≥ 0.111
(Gate side extended by 0.056 μm) minimum space to ELVTP for
run length > 0.000 μm in gate length direction.
ELVTP8a -
≥ 0.056
[Gate touching ((PC not PC_E2) touching CA)] minimum space to
ELVTP in gate width direction.
ELVTP8b -
≥ 0.111
(Gate side extended by 0.056 μm) minimum within ELVTP for run
length > 0.000 μm in gate length direction.
ELVTP9a -
≥ 0.056
Gate minimum within ELVTP in gate width direction (rectangular
enclosure).
ELVTP9b -
ELVTP10 - ELVTP minimum area (μm2). ≥ 0.095
ELVTP11 - ELVTP minimum enclosed area (μm2). ≥ 0.095
ELVTP12 - ELVTP minimum space to [(RX or PC) over OP]. ≥ 0.18
ELVTP13 - ELVTP minimum space to [(RX or PC) over SBLK]. ≥ 0.18
- -
ELVTP over (EG,ZG, CELLSNR, ESD_HBM, ESD_CDM,
ELVTP14 - ESDSCR_HBM, NWRES, PRES, DRES, ELVTN, LVTN, LVTP,
HVTN, HVTP, ZVT, OP, SBLK, NCAP, PCAP, BFMOAT, EFUSE,
BIPOLAR, ESD_POLYB) is prohibited.
3.15 Low-Vt Device Design Rules
This device is a standard FET device with a different well implant and a lower threshold voltage. This device receives
the standard source/drain implant and FET extension implants. The LVTN marking layer is used to designate low-Vt
NFET devices..
Table 40: Low-Vt NFET Device Design Rules
LVTN1 - LVTN minimum width with run length < 0.000 μm. ≥ 0.126
LVTN1a - LVTN minimum width with run length > 0.000 μm. ≥ 0.16
≥ 0.126 LVTN minimum space and notch with run length < 0.000 μm and
with touching vertex permitted.
LVTN2 -
≥ 0.16 LVTN minimum space and notch with run length > 0.000 μm and
with touching vertex permitted.
LVTN2a -
LVTN3 - LVTN shapes must be orthogonal. ≡ -
≠ -
(LVTN over RX) over (EG, ZG, LVTP, HVTN, HVTP, ZVT, RX
p+ junction) is prohibited.
LVTN4 -
≥ 0.115
(Gate side extended by 0.065 μm) minimum space to LVTN for run
length > 0.000 μm in gate length direction.
LVTN8a -
≥ 0.065
[Gate touching ((PC not PC_E2) touching CA)] minimum space to
LVTN in gate width direction.
LVTN8b -
≥ 0.115
(Gate side extended by 0.065 μm) minimum within LVTN for run
length > 0.000 μm in gate length direction.
LVTN9a -
≥ 0.065
Gate minimum within LVTN in gate width direction (rectangular
enclosure).
LVTN9b -
LVTN10 - LVTN minimum area (μm2). ≥ 0.108
LVTN11 - LVTN minimum enclosed area (μm2). ≥ 0.108
LVTN12 - LVTN minimum space to [(RX or PC) over OP]. ≥ 0.15
LVTN13 - LVTN minimum space to [(RX or PC) over SBLK]. ≥ 0.15
The LVTP marking layer is used to designate low-Vt PFET devices.
Table 41: Low-Vt PFET Device Design Rules
LVTP1 - LVTP minimum width with run length < 0.000 μm. ≥ 0.126
LVTP1a - LVTP minimum width with run length > 0.000 μm. ≥ 0.16
≥ 0.126 LVTP minimum space and notch with run length < 0.000 μm and
with touching vertex permitted.
LVTP2 -
≥ 0.16 LVTP minimum space and notch with run length > 0.000 μm and
with touching vertex permitted.
LVTP2a -
LVTP3 - LVTP shapes must be orthogonal. ≡ -
≠ -
(LVTP over RX) over (EG, ZG, LVTN, HVTN, HVTP, ZVT, RX
n+ junction) is prohibited.
LVTP4 -
≥ 0.115
(Gate side extended by 0.065 μm) minimum space to LVTP for run
length > 0.000 μm in gate length direction.
LVTP8a -
≥ 0.065
[Gate touching (PC touching CA)] minimum space to LVTP in gate
width direction.
LVTP8b -
≥ 0.115
(Gate side extended by 0.065 μm) minimum within LVTP for run
length > 0.000 μm in gate length direction.
LVTP9a -
≥ 0.065
Gate minimum within LVTP in gate width direction (rectangular
enclosure).
LVTP9b -
LVTP10 - LVTP minimum area (μm2). ≥ 0.108
LVTP11 - LVTP minimum enclosed area (μm2). ≥ 0.108
LVTP12 - LVTP minimum space to [(RX or PC) over OP]. ≥ 0.15
LVTP13 - LVTP minimum space to [(RX or PC) over SBLK]. ≥ 0.15
3.16 High-Vt Device Design Rules
This device is a standard FET device with a different Gate oxide . This device receives the standard source/drain implant
and FET extension implants. The HVTN marking layer is used to designate high-Vt NFET devices.
Table 42: High-Vt NFET Device Design Rules
HVTN1 - HVTN minimum width with run length < 0.000 μm. ≥ 0.130
HVTN1a - HVTN minimum width with run length > 0.000 μm. ≥ 0.26
≥ 0.130 HVTN minimum space and notch with run length < 0.000 μm and
with touching vertex permitted.
HVTN2 -
≥ 0.26 HVTN minimum space and notch with run length > 0.000 μm and
with touching vertex permitted.
HVTN2a -
HVTN3 - HVTN shapes must be orthogonal. ≡ -
≠ -
(HVTN over RX) over (EG, ZG, HVTP, ZVT, RX p+ junction) is
prohibited.
HVTN4 -
≥ 0.115
(Gate side extended by 0.065 μm) minimum space to HVTN for run
length > 0.000 μm in gate length direction.
HVTN8a -
≥ 0.065
[Gate touching ((PC not PC_E2) touching CA)] minimum space to
HVTN in gate width direction.
HVTN8b -
≥ 0.115
(Gate side extended by 0.065 μm) minimum within HVTN for run
length > 0.000 μm in gate length direction.
HVTN9a -
≥ 0.065
Gate minimum within HVTN in gate width direction (rectangular
enclosure).
HVTN9b -
HVTN10 - HVTN minimum area (μm2). ≥ 0.108
HVTN11 - HVTN minimum enclosed area (μm2). ≥ 0.108
HVTN12 - HVTN minimum space to [(RX or PC) over OP]. ≥ 0.15
HVTN13 - HVTN minimum space to [(RX or PC) over SBLK]. ≥ 0.15
HVTN14 - HVTN gate minimum gate length. ≥ 0.035
The HVTP marking layer is used to designate High-Vt PFET devices.
Table 43: High-Vt PFET Device Design Rules
HVTP1 - HVTP minimum width with run length < 0.000 μm. ≥ 0.130
HVTP1a - HVTP minimum width with run length > 0.000 μm. ≥ 0.26
≥ 0.130 HVTP minimum space and notch with run length < 0.000 μm and
with touching vertex permitted.
HVTP2 -
≥ 0.26 HVTP minimum space and notch with run length > 0.000 μm and
with touching vertex permitted.
HVTP2a -
HVTP3 - HVTP shapes must be orthogonal. ≡ -
≠ -
(HVTP over RX) over (EG, ZG, HVTN, ZVT, RX n+ junction) is
prohibited.
HVTP4 -
≥ 0.115
(Gate side extended by 0.065 μm) minimum space to HVTP for run
length > 0.000 μm in gate length direction.
HVTP8a -
≥ 0.065
[Gate touching (PC touching CA)] minimum space to HVTP in gate
width direction.
HVTP8b -
≥ 0.075
[Gate touching (PC touching CA)] minimum space to Union(HVTP,
HVTN) in gate width direction.
HVTP8c -
≥ 0.115
(Gate side extended by 0.065 μm) minimum within HVTP for run
length > 0.000 μm in gate length direction.
HVTP9a -
≥ 0.065
Gate minimum within HVTP in gate width direction (rectangular
enclosure).
HVTP9b -
≥ 0.075
Gate minimum within Union(HVTP, HVTN) in gate width direction
(rectangular enclosure).
HVTP9c -
HVTP10 - HVTP minimum area (μm2). ≥ 0.108
HVTP11 - HVTP minimum enclosed area (μm2). ≥ 0.108
HVTP12 - HVTP minimum space to [(RX or PC) over OP]. ≥ 0.15
HVTP13 - HVTP minimum space to [(RX or PC) over SBLK]. ≥ 0.15
HVTP14 - HVTP gate minimum gate length ≥ 0.035
HVTN2a, HVTN8b, HVTP8b
3.17 ALVT Device Design Rules
The ALVT marking layer is used to designate both ALVT NFET and ALVT PFET devices.
Table 44: ALVT Device Design Rules
≥ 0.11
(NFET gate over ALVT) minimum gate length for 1.05V device
channel length.
ALVT1 -
≥ 0.11
(PFET gate over ALVT) minimum gate length for 1.05V device
channel length.
ALVT2 -
ALVT3 - (Gate over ALVT) maximum gate length. ≤ 6
ALVT10 - (Gate over ALVT) minimum gate width for device Weff. ≥ 0.27
ALVT11a - ALVT minimum area (μm2). ≥ 0.4
ALVT11b - ALVT minimum enclosed area (μm2). ≥ 0.4
ALVT20 1 ALVT must be orthogonal or 45° ≡ -
ALVT21 - ALVT minimum width. ≥ 0.32
ALVT22 - ALVT minimum space and notch. ≥ 0.32
ALVT24 - Gate minimum within ALVT in gate length direction. ≥ 0.24
ALVT25 - Gate minimum space to ALVT in gate length direction. ≥ 0.24
ALVT25a - (RX n+ junction or RX p+ junction) minimum space to ALVT. ≥ 0.1
ALVT26 - (RX n+ junction or RX p+ junction) minimum within ALVT. ≥ 0.13
ALVT52 - (RX over ALVT) minimum space. ≥ 0.09
≥ 0.09
[(RX n+ junction, RX p+ junction) touching ALVT] minimum space
to adjacent (RX n+ junction, RX p+ junction).
ALVT52a -
ALVT110 - (RX over ALVT) minimum overlap past PC. ≥ 0.12
≥ 0.04
[(CA over RX) over ALVT] minimum space to [(PC not PC_E2)
touching CA].
ALVT207 -
≥ 0.18
[(RX p+ junction touching CA) touching ALVT] minimum within
NW.
ALVT260 -
≥ 0.18
[(RX n+ junction touching CA) touching ALVT] minimum space
to NW.
ALVT265a -
≥ 0.18
RX n+ junction minimum space to {NW touching [(gate over
ALVT)]}.
ALVT265b -
≤ 40
{[(RX p+ junction touching ALVT) not over DRES] maximum
distance to a RX n-well contact} over NW for preventing latchup.
ALVT268a -
≤ 40
{[(RX n+ junction not covered by ESD_HBM or ESD_CDM or
ESDSCR_HBM) touching ALVT] maximum distance to an RX
pwell contact} not over NW for preventing latchup.
ALVT268b -
Notes:
1. +/-0.1° tolerance is allowed for 45° angle.
3.18 Selective Timing Bias Design Rules
A PCSTP4 marker shape can be applied to devices in which reduced leakage is not critical to device performance.
Table 45: STB Design Rules
- -
PCSTP4 is prohibited over (ZVT, ELVTN, ELVTP, ZG, EG,
OP,ESD_CDM, ESD_HBM, NCAP, PCAP, EFUSE, CELLSNR,
HVTN, HVTP).
STB10 -
- -
PCSTN4 is prohibited over (ZVT, ELVTN, ELVTP, ZG,EG,
OP,ESD_CDM, ESD_HBM, NCAP, PCAP, EFUSE, CELLSNR,
HVTN, HVTP).
STB11 -
STB12 - (Gate touching PCSTP4) must have exact gate length. ≡ 0.030
STB13 - (Gate touching PCSTN4) must have exact gate length. ≡ 0.035
STB14 - (Gate touching PCSTP4) must be within PCSTP4. ≥ 0
STB15 - (Gate touching PCSTN4) must be within PCSTN4. ≥ 0
3.19 EG LDFET Device Design Rules
Table 46: 3.3V/5V EG LDFET Device Design Rules
LDFET01 - PC over (LDFET5P0V or LDFET3P3V) must touch LDFET. ≡ -
LDFET01A - LDFET over (LDFET5P0V over NPLUS) exact width. ≡ 0.25
LDFET01B - LDFET over (LDFET5P0V over PPLUS) exact width. ≡ 0.6
LDFET01C - LDFET over (LDFET3P3V) exact width. ≡ 0.5
LDFET02 - LDFET minimum space and notch. ≥ 0.17
LDFET03 - LDFET must be orthogonal. ≡ -
≤ 10
[(PC touching LDFET) over EG] maximum width in LDFETGATE
length direction.
LDFET04 -
≥ 0.7
{[((PC touching LDFET) touching NPLUS) over EG] over
LDFET5P0V} minimum width in LDFETGATE length direction.
LDFET04A -
≥ 0.9
{[((PC touching LDFET) touching PPLUS) over EG] over
LDFET5P0V} minimum width in LDFETGATE length direction..
LDFET04B -
≥ 0.6
{[((PC touching LDFET) touching NPLUS) over EG] over
LDFET3P3V} minimum width in LDFETGATE length direction..
LDFET04C -
≥ 0.35
{[((PC touching LDFET) touching PPLUS) over EG] over
LDFET3P3V} minimum width in LDFETGATE length direction..
LDFET04D -
≥ 0.8
{[(PC touching LDFET) over EG] over RX} minimum width in
LDFETGATE width direction.
LDFET05 1
≤ 15
{[(PC touching LDFET) over EG] over RX} maximum width in
LDFETGATE width direction.
LDFET05a 1
LDFET06 - LDFET must touch NW. ≡ -
≡ 0.2
NW overlap past (((LDFET over PC) touching NPLUS) over
LDFET5P0V).
LDFET06A -
≡ 0
NW over (PC over (PPLUS over (LDFET5P0V or LDFET3P3V)))
must abut LDFET
LDFET06B -
≡ 0
Edge of NW over (PC and NPLUS and LDFET3P3V) abutting
LDFET. Only inside abutment is allowed by this rule.
LDFET06C -
LDFET07 - LDFET minimum overlap past PC in LDFETGATE width direction. ≥ 0.075
LDFET08 - PW2V must be within LDFET5P0V ≥ 0
≡ 0.2
NW edge over PC over LDFET5P0V space to PW2V edge over PC
in LDFETGATE length direction
LDFET08A -
LDFET08B - NW must abut PW2V in LDFETGATE width direction ≡ -
- -
(PC touching LDFET) must straddle NW in LDFETGATE length
direction.
LDFET09 -
≥ 0.25
((((PC touching LDFET) edge) over RX) over (NPLUS over
LDFET5P0V)) space to (NW edge over PC)
LDFET09a 2
≥ 0.15
((((PC touching LDFET) edge) over RX) over (PPLUS over
LDFET5P0V)) space to (NW edge over PC)
LDFET09b 2
≥ 0.4
((((LDFET edge over PC) over RX) over NPLUS) over
LDFET3P3V) space to ((((PC edge over RX) over NPLUS) over
LDFET3P3V) not over LDFET)
LDFET09c 2
≥ 0.15
((((LDFET edge over PC) over RX) over PPLUS) over LDFET3P3V)
space to ((((PC edge over RX) over PPLUS) over LDFET3P3V) not
over LDFET)
LDFET09d 2
LDFET10 - [(PC touching LDFET) over EG] must straddle LDFET. - -
≡ 0.1
(((((PC touching LDFET) touching NW) over EG) over NPLUS)
over LDFET5P0V) exact space to RX n-well contact at the same
NW.
LDFET11 -
≡ 0.13
(((((PC touching LDFET) touching RX) over EG) over PPLUS) over
LDFET5P0V)exact space to RX triple-well contact
LDFET11a -
≡ 0.14
((((PC touching LDFET) over EG) over PPLUS) over LDFET5P0V)
exact overlap past RX in LDFETGATE length direction.
LDFET12 -
≡ 0.1
((((PC touching LDFET) over EG) over NPLUS) over LDFET5P0V)
exact overlap past RX in LDFETGATE length direction.
LDFET12a -
≡ 0.35
{[(RX over (PC touching LDFET)] over NPLUS) over LDFET5P0V)
exact overlap of NW in LDFETGATE length direction.
LDFET13 -
≡ 0.2
(((PC touching LDFET) over NPLUS) over LDFET3P3V) exact
overlap of NW in LDFETGATE length direction.
LDFET13A -
≡ 0.46
({[(RX) over (PC touching LDFET)] over PPLUS} over
LDFET5P0V) exact overlap past NW in LDFETGATE length
direction.
LDFET14 -
≡ 0.2
(((PC touching LDFET) over PPLUS) over LDFET3P3) exact
overlap past NW in LDFETGATE length direction.
LDFET14A -
≥ 0.55
(NW touching LDFET over NPLUS) must overlap past RX in
LDFETGATE width direction.
LDFET15 4
≥ 0.6
(RX touching LDFET over PPLUS) minimum space to NW in
LDFETGATE width direction with straddling prohibited.
LDFET16 5
LDFET17 - (LDFET touching PPLUS) must touch T3. ≡ -
≥ 0
(T3 touching (LDFET touching PPLUS)) minimum overlap past
LDFET in LDFETGATE width direction.
LDFET18 -
≡ -
[(RX touching NPLUS) touching LDFET] must be enclosed by a
single RX substrate contact guard ring. This guard ring surrounds
one unit cell. Each unit cell should contain only two PC fingers.
LDFET19 3
≥ 0.45
(NW touching LDFET) minimum space in LDFETGATE width
direction to (RX substrate contact guard ring satisfying LDFET19).
LDFET19a -
≤ 2
(NW touching LDFET) maximum space to (RX substrate contact
guard ring satisfying LDFET19).
LDFET19b -
≥ 0.12
((RX touching NPLUS) touching LDFET) minimum space to (RX
substrate contact guard ring satisfying LDFET19), with abutting
permitted.
LDFET19c 3
≤ 2
M1 contact line of (RX substrate contact guard ring satisfying
LDFET19) recommend to be continuous, the maximum gap between
gaps if broken
LDFET19dR -
≡ -
[(RX touching PPLUS) touching LDFET] must be enclosed by a
single RX n-well contact guard ring. This guard ring surrounds one
unit cell. Each unit cell should contain only two PC fingers.
LDFET20 3
≥ 0.4
(RX n-well contact guard ring satisfying LDFET20) minimum within
[(NW touching LDFET)touching PPLUS] in LDFETGATE width
direction.
LDFET20a -
≤ 2
(RX n-well contact guard ring satisfying LDFET20) maximum within
[(NW touching LDFET)touching PPLUS]
LDFET20b -
≥ 0.12
(RX n-well contact guard ring satisfying LDFET20) minimum space
to [(RX touching PPLUS)touching LDFET] with abutting permitted.
LDFET20c 3
≤ 2
M1 contact line of (RX n-well contact guard ring satisfying
LDFET20) recommend to be continuous, the maximum gap between
gaps if broken
LDFET20dR -
≡ -
[(NW touching LDFET) touching PPLUS] must be enclosed by
closed RX substrate contact guard ring.
LDFET21 -
≥ 0.4
[(NW touching LDFET) touching PPLUS] minimum within ( RX
substrate contact guard ring satisfying LDFET21)
LDFET21a -
≤ 2
M1 contact line of (RX substrate contact guard ring satisfying
LDFET21) recommend to be continuous, the maximum gap between
gaps if broken
LDFET21dR -
LDFET22 - (PC touching LDFET) must be within (EG). ≥ 0
≥ 0.05
(RX substrate contact guard ring satisfying LDFET19) must be
within (EG).
LDFET22a -
≥ 0.05
(RX Nwell contact contact guard ring satisfying LDFET20) must
be within (EG).
LDFET22b -
LDFET is prohibited over (ELVTN, ELVTP, LVTN, LVTP, ≠ -
HOR_GATE, OVERDRIVE, UNDERDRIVE, EGV, ZVT,
LDFET23 -
ZVT_CORE, ALVT, ZG, NCAP, PCAP, BIPOLAR, PRES, DRES,
RES_BODY, NWRES, DIODE, ESD_HBM or ESD_CDM,
ESD_POLYB, EFUSE, VNCAP2, CELLSNR, AD, SRAM_SA,
SRAM_SB, SRAM_SD, SRAM_SG, SRAM_SH, SRAM_SJ,
SRAM_SK, RDSTK_8TLV)
≥ 1.5
(NW touching LDFET) minimum space to (NW not touching
LDFET).
LDFET24 -
LDFET25 - (T3 touching LDFET) minimum space to (NW not touching LDFET). ≥ 2.5
≥ 1.5
(NW touching LDFET) minimum space to [RX junction not (EG
touching LDFET)].
LDFET26 -
≥ 2.5
(T3 touching LDFET) minimum space to[RX junction not (EG
touching LDFET)].
LDFET27 -
- -
LDFETSOURCE within RX contact ring satisfying (LDFET19 or
LDFET21) must be on same net
LDFET28 -
- -
(PC touching LDFET) within RX contact ring satisfying (LDFET19
or LDFET21) must be on same net
LDFET30 -
LDFET31 - OP_LDFET must be within LDFET3.3V - -
LDFET32 - OP_LDFET exact overlap past LDFETGATE edge ≡ 0.5
LDFET33 - LDFETGATE exact overlap of OP_LDFET ≡ 0.05
≥ 0.22
OP_LDFET minimum overlap past (PC touching LDFET) in
LDFETGATE width direction
LDFET34 -
Notes:
1. This defines the channel width of LDFET.
2. This defines the channel length of LDFET.
3. RX substrate guard ring shall be connected to the lowest potential for better latch-up immunity.
4. This rule is to ensure no well depletion on drain RX in LDNFET.
5. This rule is to ensure no well depletion on drain RX in LDPFET.
3.20 P+, N+, Source, and Drain Implant Design Rules
The BP mask designates regions where the n+ implant is blocked and where the p+ implant forms the PFET source and
drain areas or substrate and triple-well contacts. The BP mask is directly derived from the PPLUS computer-aided design
level. The BN mask designates regions where the n+ implant forms the NFET source and drain areas or n-well contacts
and where the p+ implant is blocked. The BN mask is derived from the NPLUS computer-aided design level.
3.20.1 PPLUS Design Rules
Table 47: PPLUS Design Rules
350 - PPLUS minimum width. ≥ 0.126
350a - PPLUS minimum width with run length > 0.000 μm. ≥ 0.160
351a - PPLUS minimum area (μm2). ≥ 0.072
351b - PPLUS minimum enclosed area (μm2). ≥ 0.072
PPLUS touching [(RX touching PC), (RX touching DRES), (PC - -
touching PRES)] must be orthogonal.
351c 1
352 - PPLUS minimum space and notch. ≥ 0.126
352a - PPLUS minimum space and notch with run length > 0.000 μm. ≥ 0.160
≥ 0.220 (PPLUS edge with span < 0.22 μm) minimum space to PPLUS for
runlength > 0.
352b -
≥ 0.065
RX p+ junction minimum within PPLUS. If RX straddles PPLUS
then the ESD Poly-Bounded Diode or butted-junction design rules
apply.
353 5
≥ 0.020
RX p-well contact minimum within PPLUS. If RX straddles PPLUS
then the ESD Poly-Bounded Diode or butted-junction design rules
apply.
354 3, 5
≥ 0.065
RX n+ junction minimum space to PPLUS. If RX straddles PPLUS
then the ESD Poly-Bounded Diode or butted-junction design rules
apply.
355 -
≥ 0.020
RX n-well contact minimum space to PPLUS. If RX straddles
PPLUS, then the ESD Poly-Bounded Diode or butted-junction design
rules apply.
356 -
[(RX over NW) not over PPLUS] outer vertex must meet 356a or - -
356_or -
< 0.13
[(RX over NW) not over PPLUS] outer vertex cannot have two
RX_LS with space to [RX over (NW and PPLUS)] with run length
> -0.065 μm.
356a 2
< 0.085
[(RX over NW) not over PPLUS] outer vertex cannot have a RX_LS
with space to [RX over (NW and PPLUS)] with run length > -0.065
μm.
356b 2
[(Gate not over NW) not over ESD_POLYB] over (PPLUS not over - -
PCAP) is prohibited.
369a 4
369b 4 (Gate over NW) must touch (PPLUS or NCAP). - -
370 - Gate minimum space to PPLUS. ≥ 0.056
371 - [Gate not over ESD_POLYB] minimum within PPLUS. ≥ 0.056
Notes:
1. (PPLUS over MOB) is exempt from this check.
2. RX_LS is the line segment extended along the RX edge from the RX outer vertex by 0.1 μm.
3. (PPLUS over CELLSNR) is exempt from this check.
4. [Gate touching (33VHVFET, 5VHVFET, LDFET, PAHVFET)] is exempted from this check.
5. (PPLUS over (RPO_DIODE, LDFET3P3V, LDFET5P0V)) is exempt from this check.
3.20.2 NPLUS Design Rules
Table 48: NPLUS Design Rules
450 1 NPLUS minimum width. ≥ 0.126
450a 1 NPLUS minimum width with run length > 0.000 μm. ≥ 0.160
451a - NPLUS minimum area (μm2). ≥ 0.072
451b - NPLUS minimum enclosed area (μm2). ≥ 0.072
NPLUS touching [(RX touching PC), (RX touching DRES), (PC - -
touching PRES)] must be orthogonal.
451c 2
452 - NPLUS minimum space and notch. ≥ 0.126
452a - NPLUS minimum space and notch with run length > 0.000 μm. ≥ 0.16
≥ 0.220 (NPLUS edge with span < 0.22 μm) minimum space to NPLUS for
runlength > 0.
452b -
≥ 0.065
RX n+ junction minimum within NPLUS. If RX straddles NPLUS
then the ESD Poly-Bounded Diode or butted-junction design rules
apply.
453 6
≥ 0.02
RX n-well contact minimum within NPLUS. If RX straddles NPLUS
then the ESD Poly-Bounded Diode or butted-junction design rules
apply.
454 3
≥ 0.065
RX p+ junction minimum space to NPLUS. If RX straddles NPLUS
then the ESD Poly-Bounded Diode or butted-junction design rules
apply.
455 -
≥ 0.02
RX p-well contact minimum space to NPLUS. If RX straddles
NPLUS, then the ESD Poly-Bounded Diode or butted-junction design
rules apply.
456 -
- -
(Gate over NW not over ESD_POLYB) over (NPLUS not over
5 NCAP) is prohibited. 469a
469b 5 (Gate not over NW) must touch (NPLUS or PCAP). - -
470 - Gate minimum space to NPLUS. ≥ 0.056
471 - (Gate not over ESD_POLYB) minimum within NPLUS. ≥ 0.056
≥ 0 [RX touching Union(CA, CABAR, CA_E1, CAREC_E2) not over
NWRES] must be within (NPLUS or PPLUS).
472 4, 6
[(NPLUS over PPLUS) touching {[RX or (PC not PC_E2)] touching - -
Union(CA, CABAR, CA_E1, CAREC_E2)}] is prohibited.
473 -
≥ 0.065
[((PC not PC_E2) touching Union(CA, CABAR, CA_E1,
CAREC_E2)) not over (EFUSE or LOGOBND or LDFET3P3V or
LDFET5P0V)] must be within (NPLUS or PPLUS).
474 -
Notes:
1. Only errors projecting across RX are valid, others not over RX can be exempt.
2. (NPLUS over MOB) is exempt from this check.
3. (RX not touching CA) is exempt from this check.
4. [((RX shapes not touching CA) not over NWRES) not covered by (NPLUS or PPLUS)] must be design using
RXZFILL design level. This note is not check by DRC.
5. [Gate touching (33VHVFET, 5VHVFET, LDFET, PAHVFET)] is exempted from this check.
6. (NPLUS over (RPO_DIODE, LDFET3P3V, LDFET5P0V)) is exempt from this check.
and drain implant design rules.
3.20.3 Illustration of P+, N+, Source, and Drain Implant Design Rules
3.21 Poly-bounded ESD Diode Design Rules
Poly-bounded diodes are electrostatic discharge (ESD) protection devices. They are identified by the ESD_POLYB
marking level, which must cover the active areas of the diode.
Note: In predecessor technologies, the ESD_POLYB marking level was not drawn over the complete active area
of the device. For correct Boolean generation in this technology, the marking level must completely cover the
device to identify it properly.
Table 49: Poly-bounded ESD Diode Design Rules
PB1 - ESD_POLYB must be within (EG or ZG). ≥ 0
PB2 - RX touching (Gate straddling PPLUS) must be within ESD_POLYB. ≥ 0.095
PB2a - RX touching (Gate straddling NPLUS) must be within ESD_POLYB. ≥ 0.095
PB3 - PPLUS overlap past (Gate end over ESD_POLYB). ≥ 0.056
PB3a - NPLUS overlap past (Gate end over ESD_POLYB). ≥ 0.056
PB4 - PPLUS overlap past (Gate side over ESD_POLYB). ≥ 0.14
PB4a - NPLUS overlap past (Gate side over ESD_POLYB). ≥ 0.14
PB5 - (Gate over ESD_POLYB) overlap past PPLUS. ≥ 0.08
PB5a - (Gate over ESD_POLYB) overlap past NPLUS. ≥ 0.08
PB6 - (Gate over ESD_POLYB) overlap of PPLUS. ≥ 0.08
PB6a - (Gate over ESD_POLYB) overlap of NPLUS. ≥ 0.08
3.22 Butted-junction Design Rules
Butted junctions are formed when PPLUS is either partially overlapping or completely inside RX. This intersection
forms an n+ junction and a p+ substrate contact or a p+ junction and an n+ n-well contact within the same RX shape.
Butted junctions are not recommended in analog, matching, or performance-critical circuits because device degradation
can occur when a butted junction is in close proximity (0.5 μm) to a FET.
Table 50: Butted-junction Design Rules
372 - RX butted p-well contact minimum overlap of PPLUS. ≥ 0.056
372a - RX butted p-well contact minimum area (μm2). ≥ 0.015
372b - RX butted n-well contact minimum overlap of NPLUS. ≥ 0.056
373 - RX butted n-well contact minimum overlap past PPLUS. ≥ 0.056
373a - RX butted n-well contact minimum area (μm2). ≥ 0.015
373b - RX butted p-well contact minimum overlap past NPLUS. ≥ 0.056
≥ 0.250 [(RX butted p-well contact) not over ESD_POLYB] minimum space
to Gate (touching the same RX).
375 -
≥ 0.250 [(RX butted n-well contact) not over ESD_POLYB] minimum space
to Gate (touching the same RX).
376 -
382 - RX butted n+ junction minimum overlap past PPLUS. ≥ 0.056
382a - (RX butted p+ junction touching CA) minimum overlap past NPLUS. ≥ 0.056
383 - RX butted p+ junction minimum overlap of PPLUS. ≥ 0.056
383a - (RX butted n+ junction touching CA) minimum overlap of NPLUS. ≥ 0.056
384R 1 Gate must touch RX butted p+ junction. - -
385R 1 Gate must touch RX butted n+ junction. - -
Notes:
1. SRAM exception: RX without Gate allowed if CA_E1 is touching RX.
3.23 Bipolar Transistor Design Rules
Table 51: BIPOLAR Design Rules
BT1 - BIPOLAR must be orthogonal. ≡ -
BT2 - BIPOLAR minimum width. ≥ 0.36
BT3 - BIPOLAR minimum space and notch. ≥ 0.36
≡ - (EG, ZG, PC, ZVT, LVTN, LVTP, HVTN, HVTP, NCAP, PCAP)
over BIPOLAR is prohibited.
BT4 -
BT7a - BIPOLAR must touch RX. ≡ -
≡ - (RX junction over {BIPOLAR over [(PPLUS over NW) or (NPLUS
not touching NW)]}) must be an orthogonal square
BT8 -
- -
[(RX touching SBLK) over BIPOLAR] exact width and length must
be 1.6 μm, 2 μm,3.2 μm, 5 μm, or 10 μm.
BT9 -
BT11 - SBLK overlap of (RX over BIPOLAR). ≥ 0.125
Table 52:Vertical PNP Bipolar Transistor Design Rules
≤ 0.5
Guard ring of grounded RX substrate contacts (p+ collector) must
surround the entire mesh of RX n-well contacts (n+ base) within a
PNP3 -
maximum distance. Refer to Illustration of Vertical PNP Bipolar
Transistor Design Rules.
≥ 0.26
[Guard ring of grounded RX substrate contacts (p+ collector)]
minimum width.
PNP6a -
≡ -
[(RX p+ junction touching BIPOLAR) edges] must be covered by
SBLK.
PNP12 -
≡ 0.1
[({[RX over (NW touching SBLK)] over BIPOLAR} over NPLUS)
not over EG] exact width.
PNP13 1
PNP14 2 N+ base minimumt space to P+ emitter. ≡ 0.52
Notes:
1. Base exact width rule. It refers to the base region of PNP bipolar transistor. Refer to Illustration of Vertical PNP
Bipolar Transistor Design Rules.
2. Base to Emitter space rule. N+ Base is [(RX over NW) over NPLUS] region of PNP bipolar transistor. P+ Emitter is
[(RX over NW) over PPLUS] region of PNP bipolar transistor. Refer to Illustration of Vertical PNP Bipolar Transistor
Design Rules.
Table 53:Vertical NPN Bipolar Transistor Design Rules
≤ 0.5
Guard ring of grounded RX n-well contacts (n+ collector) must
surround the entire mesh of RX triple-well contacts (p+ base) within
a maximum distance.
NPN3 -
≥ 0.26
[Guard ring of grounded RX n-well contacts (n+ collector)] minimum
width.
NPN6a -
≡ -
[(RX n+ junction touching BIPOLAR) edges] must be covered by
SBLK.
NPN12 -
≡ 0.1
[({[(RX not touching SBLK) not over NW] over BIPOLAR} over
PPLUS) not over EG] exact width.
NPN13 1
NPN14 2 P+ base minimum space to N+ emitter. ≡ 0.52
Notes:
1. Base exact width rule. It refers to the base region of NPN bipolar transistor.
2. Base to Emitter space rule. P+ Base is [(RX not over NW) over PPLUS] region of NPN bipolar transistor. N+ Emitter
is [(RX not over NW) over NPLUS] region of NPN bipolar transistor.
3.23.1 Illustrations of Vertical PNP Bipolar Transistor Design Rules
3.24 NFET in N-Well Capacitor Design Rules
The NFET in n-well capacitor (NCAP) is an n+ doped gate over an n-well. Thin-oxide NCAP, medium-oxide NCAP
and thick-oxide NCAP devices are supported.
Table 54: NCAP Design Rules
NC1a - [(Gate over NCAP) not over (EG, ZG)] minimum gate length. ≥ 0.100
NC1b - [(Gate over NCAP) over (EG, ZG)] minimum gate length. ≥ 0.200
NC10a - (Gate over NCAP) minimum gate width. ≥ 0.200
NC20 - NCAP shapes must be orthogonal. ≡ -
NC21 - NCAP minimum width. ≥ 0.400
- -
NCAP over (LVTN, LVTP, HVTN, HVTP, DRES, PRES, OP,
SBLK, or ZVT) is prohibited.
NC24 -
NC28 - (Gate over NCAP) must be within NPLUS. ≥ 0.130
NC29 - (Gate over NCAP) must be within NCAP. ≥ 0.130
NC29b - [(Gate over NCAP) over EG] must be within EG. ≥ 0.130
NC29c - [(Gate over NCAP) over ZG] must be within ZG. ≥ 0.2
NC30 - Gate minimum space to NCAP. ≥ 0.265
NC32 - [(RX touching Gate) over NCAP] over PPLUS is not allowed. ≠ -
NC33 - (RX touching CA) minimum within NCAP. ≥ 0.160
3.25 PFET in P-Well Capacitor Design Rules
The PFET in p-well capacitor (PCAP) is a p+ doped gate over a p-well (triple-well option only). Thin-oxide PCAP
devices are supported.
Table 55: PCAP Design Rules
PC1a - (Gate over PCAP) minimum gate length. ≥ 0.200
PC10a - (Gate over PCAP) minimum gate width. ≥ 0.400
PC20 - PCAP shapes must be orthogonal. ≡ -
PC21 - PCAP minimum width. ≥ 0.400
≡ -
PCAP over (BIPOLAR, LVTN, LVTP, HVTN, HVTP, NCAP, OP,
SBLK, PRES, DRES or ZVT) is prohibited.
PC24 -
PC28 - (Gate over PCAP) must be within PPLUS. ≥ 0.130
PC29 - (Gate over PCAP) must be within PCAP. ≥ 0.130
PC29b - [(Gate over PCAP) over EG] must be within EG. ≥ 0.130
PC29c - [(Gate over PCAP) over ZG] must be within ZG. ≥ 0.350
PC30 - Gate minimum space to PCAP. ≥ 0.265
PC32 - [(RX touching Gate) over PCAP] over NPLUS is not allowed. ≠ -
PC33 - (RX touching CA) minimum within PCAP. ≥ 0.160
3.26 Silicide-blocked OP Resistor Design Rules
The OP mask level blocks the formation of silicide, creating n+ diffusion and p+ polysilicon resistors.
These design rules are used to form the diffusion and polysilicon OP resistors. For electrical characteristics, see Electrical
Note: For ESD designs, use the SBLK level instead of the OP level to avoid excessive data preparation; see ESD
3.26.1 Resistor Design Rules
Table 56: Resistor Design Rules
≥ 0.125
[((PC touching CA) touching (OP, RES_BODY)) not touching RX]
must be within PRES in PC resistor width direction, while in PC
resistor length direction ≥ 0 μm.
700 4, 5
≥ 0.065
PRES minimum space to (RX touching Union(CA, CABAR, CA_E1,
CAREC_E2)) with touching prohibited.
701 1
701a - PRES minimum space to [Gate not touching (OP, RES_BODY)] ≥ 0.065
702 - PRES minimum width. ≥ 0.160
704 - PRES must be orthogonal. ≡ -
≥ 0.100 [{[(RX n+ junction, RX p+ junction) touching CA] touching (OP,
RES_BODY)} not touching PC] must be within DRES.
705 -
≥ 0.065
[DRES minimum space to (RX not touching (OP,RES_BODY))]
with touching prohibited.
706 1
706a - DRES minimum space to Gate with touching prohibited. ≥ 0.065
707 - DRES minimum width. ≥ 0.160
709 - DRES must be orthogonal. ≡ -
710 - ((RX touching CA) over OP) minimum resistor length. ≥ 0.400
S710 - [(RX touching CA) over RES_BODY] minimum resistor length. ≥ 0.400
711 - ((RX touching CA) over (OP over DRES)) minimum resistor width. ≥ 0.200
S711 - [(RX touching CA) over RES_BODY] minimum resistor width. ≥ 0.200
≥ 0.400
[((PC touching CA) over OP) touching PRES] minimum resistor
length.
712 -
S712 - ((PC touching CA) over RES_BODY) minimum resistor length. ≥ 0.400
≥ 0.100
[((PC touching CA) over OP) touching PRES] minimum resistor
width.
713 -
S713 - ((PC touching CA) over RES_BODY) minimum resistor width. ≥ 0.100
714 - (PC touching PRES) maximum width. ≤ 15
716e - OP must not touch PRES and DRES at the same time. - -
724 - OP must be orthogonal. ≡ -
725 - OP minimum width. ≥ 0.200
726 - OP minimum space and notch. ≥ 0.200
727 - OP minimum overlap past (RX touching CA). ≥ 0.180
728 - OP minimum space to (RX touching CA). ≥ 0.160
729a - OP minimum area (μm2). ≥ 0.370
729b - OP minimum enclosed area (μm2). ≥ 0.370
730 - OP minimum overlap past (PC touching CA). ≥ 0.200
731 - OP minimum space to (PC touching CA). ≥ 0.240
732 - OP over CA is prohibited. ≡ -
733 - CA minimum space to OP. ≥ 0.120
≥ 0.065
[((RX touching DRES) touching OP) touching PPLUS] must be
within PPLUS.
734a -
≥ 0.065
{[(RX touching DRES) touching RES_BODY] touching PPLUS}
must be within PPLUS
S734a -
≥ 0.065
[((RX touching DRES) touching OP) touching PPLUS] minimum
space to NPLUS.
734b -
≥ 0.065
{[(RX touching DRES) touching RES_BODY] touching PPLUS}
minimum space to NPLUS
S734b -
≥ 0.065
[((RX touching DRES) touching OP) touching NPLUS] must be
within NPLUS.
734c -
≥ 0.065
{[(RX touching DRES) touching RES_BODY] touching NPLUS}
must be within NPLUS.
S734c -
≥ 0.065
[((RX touching DRES) touching OP) touching NPLUS] minimum
space to PPLUS.
734d -
≥ 0.065
{[(RX touching DRES) touching RES_BODY] touching NPLUS}
minimum space to PPLUS.
S734d -
≥ 0.065
[(PC touching CA) over (OP touching PRES)] must be within
2 (PPLUS or NPLUS) in OP resistor width direction. 735a
≥ 0.100
[((PC not PC_E2) touching CA) over (RES_BODY touching PRES)]
must be within (PPLUS or NPLUS) in resistor width direction.
S735a 2
≥ 0.060
[(PC touching CA) touching (OP touching PRES)] must be within
(PPLUS or NPLUS) in OP resistor length direction.
735b 3
≥ 0.060
[((PC not PC_E2) touching CA) touching (RES_BODY touching
PRES)] must be within (PPLUS or NPLUS) in resistor length
direction.
S735b 3
736 - OP over (gate not touching LDFET) is prohibited. ≡ -
≡ -
RX over [PC touching ((OP not touching LDFET), RES_BODY)]
is prohibited.
737 -
738 - [OP intersect (RX or PC)] must be orthogonal. ≡ -
S738 - [RES_BODY intersect (RX or PC)] must be orthogonal. ≡ -
≡ -
{OP over [(RX touching CA) over DRES]} must divide RX into
two diffusion regions.
738b -
≡ -
((OP not touching LDFET) over (PC touching CA)) must divide PC
into two polysilicon regions.
738c -
739a - (RX touching CA) minimum overlap past OP. ≥ 0.180
739b - (PC touching CA) minimum overlap past OP. ≥ 0.160
≡ 0.000
RES_BODY must abut CA at two opposite sides with the other 2
sides exact overlap of (RX, PC).
S740 -
Notes:
1. If RX is n-well contact or p-well contact, then exempt from this check.
2. OP resistor width direction is the direction that (PC over OP) not abut [(PC not OP) touching CA]. See Illustration
3. OP resistor length direction is the direction that (PC over OP) abut [(PC not OP) touching CA]. See Illustration of
4. PC resistor width direction: The direction perpendicular to (PC edges over (OP, RES_BODY)).
5. PC resistor length direction: The direction parallel to (PC edges over (OP, RES_BODY)).
3.26.2 Illustrations of OP Resistor Design Rules
3.27 N-Well Resistor Design Rules
There are two different types of N-well resistor. Those are separated by touching or not touching OP layer. N-well
resistor under STI (nwres) does not touch OP layer, while N-well resistor in active (nwdres) does.
3.27.1 N-Well Resistor Design Rules Under STI (nwres) Design Rules
Table 57: N-Well Resistor under STI (nwres) Design Rules
NWR01 - [RX over (NWRES not touching OP)] exact width. ≡ 0.8
NWR02 - [RX over (NWRES not touching OP)] minimum length. ≥ 1.2
NWR03 - [(Least enclosed rectangle of RX) over NWRES] exact within NW. ≡ 0.15
NWR04 - [RX over (NWRES not touching OP)] minimum space. ≥ 10
NWR05 - (CA over NWRES) must be within RX. ≥ 0.2
NWR06 - (NWRES not touching OP) must be within RXEXCLUD. ≥ 0
NWR07 - NWRES must be an orthogonal rectangle. ≡ -
NWR08 - NWRES must be exactly within NW. ≡ 0
NWR09 - Only two RX shapes over (NWRES not touching OP) are permitted. ≡ -
- -
(RX p+ junction, EG, ZG, LVTN, LVTP, HVTN, HVTP, NCAP,
PCAP, ZVT) over NWRES is prohibited.
NWR10 -
NWR11 - [RX over (NWRES not touching OP)] must be within NPLUS. ≥ 0.24
3.27.2 N-Well Resistor in Active (NWDRES)
Table 58: N-Well Resistor in Active (nwdres) Design Rules
NWDR01 - [(RX over NWRES) not OP] exact width. ≡ 0.8
NWDR02 - [(RX over NWRES) not OP] minimum length. ≥ 1.2
NWDR09 - Only one RX shapes over (NWRES touching OP) is permitted. ≡ -
NWDR11 - [(RX touching NWRES) not OP] must be within NPLUS. ≥ 0.24
NWDR12 - (OP touching NWRES) minimum width. ≥ 1.68
NWDR13 - (OP touching NWRES) minimum length. ≥ 10
NWDR14 - (OP touching NWRES) minimum overlap past NPLUS. ≥ 0
≡ 0.24
[OP touching (RX over NWRES)] exact overlap of [NPLUS touching
(RX touching NWRES)].
NWDR15 -
3.28 Latchup Design Rules
3.28.1 Internal Latchup Design Rules
Table 59: Internal Latchup Design Rules
- -
({[RX n+ diffusions not within (((ESD_HBM or ESD_CDM) not
touching PC) or ESD_POLYB) connected to an I/O signal pad],
LUP13 1, 2, 3
[((RX n+ diffusions within ESD_HBM) not within ESD_CLAMP)
connected to an LC power supply pad] not over T3} sized by 10.000
μm) must touch (RX substrate contact guard ring enclosing RX n+
diffusions).
≡ -
((RX p+ diffusions within ESDSCR_HBM, RX n+ diffusions
touching ESDSCR_HBM) sized by 10.000 μm) must touch (RX
substrate contact guard ring enclosing the RX diffusions).
LUP13b -
- -
({[RX n+ diffusions not within (((ESD_HBM or ESD_CDM) not
touching PC) or ESD_POLYB) connected to an I/O signal pad],
LUP13TW 1, 2
[((RX n+ diffusions within ESD_HBM) not within ESD_CLAMP)
connected to an LC power supply pad] over T3} sized by 10.000
μm) must touch (RX p-well contact guard ring enclosing RX n+
diffusions).
≡ -
({[RX n+ diffusions connected to an I/O signal pad], [((RX n+
LUP14 1, 2 diffusions within ESD_HBM) not within ESD_CLAMP) connected
to an LC power supply pad], [RX n+ diffusions within ESD_CDM]}
sized by 10 μm) must touch (RX n-well contact guard ring enclosing
RX n+ diffusions).
≠ -
{[RX p+ junctions] within [(enclosed area inside RX n-well contact
guard ring, referenced by Rule LUP14), (NW touching RX n-well
contact guard ring, referenced by Rule LUP14)]} is prohibited.
LUP14a 1
≥ 2
[NW touching (RX n-well contact guard ring, referenced by Rule
LUP14)] minimum width (for wire-bond designs).
LUP14b 4
≥ 4
[NW touching (RX n-well contact guard ring, referenced by Rule
LUP14)] minimum width (for C4 designs).
LUP14ba 4
≤ 10
[CA over (RX n-well contact guard ring, referenced by Rule LUP14)]
maximum space.
LUP14c -
≡ -
({NW touching [(RX p+ diffusions within ESD_HBM), (RX p+
diffusions within ESD_CDM)]} sized by 5.0000 μm) must touch
(RX substrate contact guard ring enclosing NW shapes).
LUP15 -
≥ 0.5
(RX substrate contact guard ring, referenced by Rule LUP15 under
ESD_HBM) minimum width (for wire-bond designs).
LUP15a -
≥ 0.25
(RX substrate contact guard ring, referenced by Rule LUP15 under
ESD_CDM) minimum width.
LUP15aa -
≥ 1
(RX substrate contact guard ring, referenced by Rule LUP15 under
ESD_HBM) minimum width (for C4 designs).
LUP15aC4 -
≤ 10
[CA over (RX substrate contact guard ring, referenced by Rule
LUP15)] maximum space.
LUP15b 5
Notes:
1. This rule does not apply for (diffusions not touching PC) with an area < 1.0 μm2.
2. Connections are traced through metal or resistor ≤ 400 ohms.
3. ESD_CDM is a dummy shape placed over ESD CDM protection structures.
4. This rule only applies when the connections referenced in LUP14 are made through metal or resistor ≤ 30 ohms.
When the connections referenced in LUP14 are made through metal or resistors with values > 30 ohms, the required
NW guard ring can be the minimum NW width.
5. The maximum CA spacing only applies within the wide area of the RX substrate contact guard ring used to satisfy
Rule LUP15a, LUP15aa and LUP15aC4.
3.28.2 External Latch-up Design Guidelines
The following set of guidelines is recommended for minimizing the risk of external induced Latch-up. These guidelines
are not coded in DRC, but it is expected to be followed from designers as good design practice.
1. ESD devices should be placed near the outer chip edge with n+ diodes preferably at the farthest edge. The goal is to
keep the distance between the ESD protection devices (injectors) and surrounding circuits (detectors) as far apart as
possible (typically > 50 μm).
2. It must be ensured that the widths of N-well and P-well guard rings meet the ground rules specified in the DM for
wire-bond designs. The N-well guard rings should be biased at the highest VDD potential and the P-well guard rings
should be grounded. For C4 designs it is suggested to draw larger guard ring width.
3. For internal circuit blocks, it must be ensured that a robust substrate guard ring surrounds the circuit block and
maintains the local potential close to GND.
3.29 ESD Design Rules
Refer to Chapter Electrostatic Discharge (ESD) Protection for more design requirements using additional checking tools.
The ESD design rules in the following table are designed to ensure that discrete ESD protection devices meet 2kV
Human Body Model (HBM).To ensure robust I/O signal and power pad ESD protection, additional pad voltage evaluation
and/or simulation must be done. The recommended design rules in this table can be used to meet higher ESD targets
and/or vary other ESD-required design parameters. Rule mentioned below expects power/ground bus resistance to be
less than 1.5ohms between any two pair of power clamps.
The following guidelines apply to ESD designs:
for ESD rule compliance.
2. GLOBALFOUNDRIES recommends tying both the transistor source and substrate to the same ground to prevent
the formation of a parasitic diode between any two grounds.
3. Back end of line (BEOL) guidelines - ESD devices conduct large amount of current, as high as 20A for short durations
of several nanoseconds. Therefore, it is recommended that BEOL connection to the ESD devices from pad are
the maximum allowed current density for various BEOL elements, and these are to be used to determine sufficient
BEOL requirements (number of levels of metals used as interconnect, metal width, CA and VIA density) to sustain
the target ESD current levels without any degradation occurring in BEOL connection to the device.
3.29.1 ESD Design Rule Syntax
The design rules presented in the design rules table use the following syntax:
A diode-based ESD CDM protection device comprised of two or three p+ n-well
diodes connected through a CDM resistor between an I/O pad and a power supply
CDM diode string
and an n+ substrate diode connected through a CDM resistor between an I/O pad
and ground.
A diode-based ESD CDM protection device comprised of a p+ n-well diode
connected through a CDM resistor between an I/O pad and a power supply and
CDM double diode
an n+ substrate diode connected through a CDM resistor between an I/O pad and
ground.
An NFET-based ESD CDM protection device comprised of a grounded gate
NFET with a drain connected through a CDM resistor to an I/O pad.
CDM NFET
A p+ polysilicon OP resistor placed in the path between an I/O signal pad and
receiver FET gates.
CDM resistor
An I/O pad either labeled “HC_POWER_ESD” on the LBESD level or electrically
connected to an Mx wire metal and labeled “HC_POWER_ESD” on the MxESD
level, where Mx = M1–M6.
HC power supply pad
A diode-based ESD HBM protection device comprised of two or three p+ n-well
diodes connected in series between an I/O pad and a power supply and an n+
substrate diode connected between an I/O pad and ground.
HBM diode string
A diode-based ESD HBM protection device comprised of a p+ n-well diode
connected between an I/O pad and a power supply and an n+ substrate diode
connected between an I/O pad and ground.
HBM double diode
An NFET-based ESD HBM (ED or non-ED) protection device comprised of a
grounded gate NFET with a drain connected to an I/O pad.
HBM NFET
An SCR-based ESD HBM protection device comprised of one to three diodes
and an SCR connected to an I/O pad.
HBM SCR
DV wire-bond pad or C4 pad, including signal and power pads.
I/O pad
All I/O pads either labeled “FULL_ESD” on the LBESD level or not otherwise
identified as LC power or HC power supply pads. I/O pads are treated as signal
pads unless otherwise specified.
I/O signal pad
An I/O pad either labeled “LC_POWER_ESD” on the LBESD level or electrically
connected to an Mx metal and labeled “LC_POWER_ESD” on the MxESD level,
LC power supply pad
where Mx = M1-M6, or I/O pad connected to RX n-well contact, or I/O pad
connected to RX p-well contact.
Union {[NFET gate over (ESD_HBM, ESD_CDM)], [NFET gate touching RX
n+ diffusion connected to an I/O signal pad]}
SBLK gate
3.29.2 Net Definitions for ESD Checking
For cell-level testing, all nets connected to chip pads should be labeled with one of the labels defined below. These text
labels must be placed on an xxESD design level, where xx = M1, M2, and so forth.
For chip-level testing, only the FULL_ESD, HC_POWER_ESD, or LC_POWER_ESD labels are valid for chip pads.
GLOBALFOUNDRIES treats all unlabeled chips pads as FULL_ESD and checks them as I/O signal pads. Chip pad
text labels must be placed within the chip pad region (for example, the DV or LV passivation opening layer) and require
the LBESD design level. The HC_POWER_ESD and LC_POWER_ESD labels on the xxESD level are used for cell-level
checking. They can also be used to identify chip pads if the pads use the LBESD design level as described above. Chip
pads connected to metal levels containing xxESD text labels are treated as power supply pads.
The text labels used to initiate ESD checking are as follows:
Used on chip pads and chip pad nets that have a custom ESD solution. The custom
ESD solution must be reviewed and approved by an ESD design technical
representative before use. ESD design rules do not apply to these pads.
CUSTOM_ESD
Designers are responsible for using this label correctly.
Used to check all ESD and latchup design rules for signal pads with ESD
protection.
FULL_ESD
Used to check power supply pins that achieve a chip capacitance of 100 nF
between the supply and ground.
HC_POWER_ESD
Used for check power supply pins that do not achieve a chip capacitance of 100
nF between the supply and ground.
LC_POWER_ESD
Used to check power supply nets that do not achieve a chip capacitance of 100
nF between the supply and ground and whose HBM protection is provided by
another cell that connects to the chip pad.
LC_POWER_WIRE_ESD
Used to check non-HBM protected cells wired to a pad. All ESD design rules
except Rules ESD01* apply.
NO_PROTECT_HBM
In test sites and kerfs, used to define a pad that does not have ESD protection
devices connected to it. None of the ESD design rules are applicable on these
TEST_PAD_NOESD
pads. GUARDEDG touching TEST_PAD_NOESD labels will flag an
informational warning message that ESD checking is being bypassed. LBESD
is the only level that permits these labels. These labels will be ignored on any
other design or utility level.
Used to check metal width, contact, and via areas for wide wire-like cells (without
ESD protection) or pad transfer cells. Rules ESD08-ESD10bTW apply to an LC
power supply pad.
WIRE_ESD
Used to define a termination point for wide metal checking of cell I/O pads labeled
WIRE_ESD and LC_POWER_WIRE_ESD within a cell (for example, wide
wire-like cell).
WIRE_ESD_ENDPT
3.29.3 ESD Design Rules
Table 60: ESD Design Rules
≤ 0.5
(RX substrate contact referenced by LUP13b) must be within
ESDSCR_HBM.
ESD00aa -
ESD00ab - (RX touching ESD_CLAMP) must be within ESD_CLAMP. ≤ 0.5
≤ 0.5
({[RX n+ diffusion(s), RX p+ diffusion(s)] over ESD_HBM} and
their enclosing guard_rings) must be within ESD_HBM.
ESD0a 1, 11
≠ -
[ESD_HBM enclosing (RX n+ diffusions referenced by Rule
ESD01a)] must not touch [ESD_HBM enclosing (RX p+ diffusions
referenced by Rule ESD01b)].
ESD0b 1
≡ -
xxESD labels must be one of the following text strings: - FULL_ESD
ESD0c - - HC_POWER_ESD - LC_POWER_ESD -
LC_POWER_WIRE_ESD - NO_PROTECT_HBM - WIRE_ESD
- WIRE_ESD_ENDPT - TEST_PAD_NOESD (on LBESD only) -
175 for label definitions and associated checking.)
≡ -
Diode/bipolar-based, NFET-based HBM device required. I/O signal
pads must be connected to one of the following:
ESD0d -
1. One or more (RX n+ diffusions referenced by Rule ESD01a) and
one or more (RX p+ diffusions referenced by Rule ESD01b).
2. One or more (RX n+ diffusions touching NFET gates, referenced
by Rule ESD01c).
3. One or more (RX n+ diffusions referenced by Rule ESD31a) and
one or more (RX p+diffusions referenced by Rule ESD31b).
≡ -
LC power supply pads must be connected to either:
ESD0e -
1. One or more (RX n+ diffusions referenced by Rule ESD01a) and
one or more (RX p+ diffusions referenced by Rule ESD01b), or
2. One or more (RX n+ diffusions touching NFET gates, referenced
by Rule ESD01c), or
3. One or more (RX n+ diffusions touching NFET gates, referenced
by Rule ESD01d).
≥ 60
N+/SX (p-well) diode/bipolar area. (I/O signal pads, LC power
supply pads) must be connected to [RX n+ diffusion(s) within
ESD_HBM] having a total area [pm2].
ESD01a -
≥ 60
P+/NW bipolar area. (I/O signal pads, LC power supply pads) must
be connected to [RX p+ diffusion(s) within ESD_HBM] having a
total area [pm2].
ESD01b 2
≥ 320
Non-salicided NFET width. (I/O signal pads, LC power supply pads)
must be connected to {[RX n+ diffusion(s) touching NFET gates]
within ESD_HBM} with a total gate width.
ESD01c -
≥ 400
Non-salicided NFET width. (I/O signal pads, LC power supply pads)
must be connected to {[RX n+ diffusion(s) touching NFET gates]
within ESD_HBM} with a total gate width.
ESD01cR -
≥ 4000
LC power supply pads must be connected to one or more [(RX n+
diffusions touching NFET gates) within ESD_CLAMP] with a total
gate width.
ESD01d -
≥ 1.5
Minimizes current through a parasitic NPN (NW/SX/NW) during a
negative-mode HBM event. {[NW connected to I/O signal pads],
ESD08 3, 10
[(NW within ESD_HBM) connected to LC power supply pads]}
minimum space to NW, different net.
≥ 1.5
Minimizes current through a parasitic NPN (n+/SX/n+) during a
negative-mode HBM event. {[RX n+ diffusions connected to I/O
ESD09 3, 4, 10 signal pads], [(RX n+ diffusions within ESD_HBM) connected to
LC power supply pads]} minimum space to RX n+ diffusions,
different net.
≥ 1.5
Minimizes current through a parasitic NPN (n+/SX/NW) during a
negative-mode HBM event. {[RX n+ diffusions connected to I/O
ESD10a 3, 10
signal pads], [(RX n+ diffusions within ESD_HBM) connected to
LC power supply pads]} minimum space to NW, different net.
≥ 1.5
Minimizes current through a parasitic NPN (n+/PW/NW) during a
negative-mode HBM event. {[RX n+ diffusions connected to I/O
ESD10aTW 10
signal pads], [(RX n+ diffusions within ESD_HBM) connected to
LC power supply pads]} minimum within p-well, different net.
≥ 1.5
{[NW connected to I/O signal pads], [(NW within ESD_HBM)
connected to LC power supply pads]} minimum space to RX n+
diffusions, different net.
ESD10b 3, 10
≥ 1.5
RX n+ diffusion minimum within (p-well touching {(NW connected
to I/O signal pads), [(NW over ESD_HBM) connected to LC power
supply pads]}).
ESD10bTW 10
≠ -
Prohibits butted junctions in ESD protect devices. [(RX over PPLUS)
touching (RX not over PPLUS)] over (ESD_HBM, ESD_CDM) is
prohibited.
ESD18a -
- -
Gates touching (RX diffusions touching SBLK connected to I/O
signal pads) must be in one of the following gate/SBLK
configurations.
ESD21 5, 9
Single, two stacked or three stacked NFET / PFET (can be fingered)
with one SBLK shape on the drain only with SBLK to gate spacing
Single, two stacked or three stacked NFET / PFET (can be fingered)
with one SBLK shape on the drain overlapping gate exactly as per
183.
Single, two stacked or three stacked NFET / PFET (can be fingered)
with one SBLK shape covering the entire device as shown in Figure
≥ 1.25
ESD25a 5
touching [RX diffusion (not touching EG) connected to an I/O signal
pad] drain minimum width.
≥ 1.25
ESD25b 5
not gate) touching [RX diffusion (touching EG) connected to an I/O
signal pad] drain minimum width.
≥ 1.25
for MOSFET-Based Protection). (SBLK not gate) touching [((RX
ESD25c 5
diffusion (touching ZG)) not touching OVERDRIVE) connected to
an I/O signal pad] drain minimum width.
≥ 1.25
MOSFET-Based Protection). (SBLK not gate) touching {RX
ESD25e 5
diffusion [touching ZG and OVERDRIVE] connected to an I/O
signal pad} drain minimum width..
≤ 0.5
({[RX n+ diffusion(s), RX p+ diffusion(s)] over ESD_CDM} and
their enclosing guard_rings) must be within ESD_CDM.
ESD30 8
≠ -
All gates connected to an I/O signal pad must be connected through
a CDM resistor.
ESD30a 6
≠ -
All gates connected to an I/O signal pad must be connected to one
or more (RX diffusions covered within ESD_CDM).
ESD30b 6
≥ 60
N+/SX (p-well) diode/bipolar area. (I/O signal pads, LC power
supply pads) must be connected to [RX n+ diffusion(s) within
ESD_POLYB] having a total area [pm2].
ESD31a -
≥ 60
P+/NW bipolar area. (I/O signal pads, LC power supply pads) must
be connected to [RX p+ diffusion(s) within ESD_POLYB] having
a total area [pm2].
ESD31b -
ESD500 - UNION (ESD_CDM, ESD_HBM, ESDSCR_HBM) minimum space. ≥ 0.25
- -
ESDSCR_HBM cannot touch (NFET gate, PFET gate, or ESD
diode).
ESD530 7
≠ -
Use of label CUSTOM_ESD is not permitted without prior approval
from the ESD design technical representative. Contact your
ESDCUST 12
GLOBALFOUNDRIES Technical Representative for more
information.
Notes:
1. Separate ESD_HBM shapes must be drawn around the p+ n-well diodes, n+ substrate diodes, and NFET HBM
protection devices to enable proper DRC recognition. One ESD_HBM shape is used per device type. The shapes
must cover the n+ substrate diode n-well guard_ring, p+ n-well diode substrate guard_ring, and/or the HBM NFET
2. For a diode string, each p+ n-well diode in the diode string needs to meet this design rule.
3. RX diffusion and NW shapes that are covered by the same ESD_HBM marker shape are exempt from these rules.
NW shapes that are terminals of the same string diode are also exempt.
4. Device terminals (for example, NFET gates, n+ diffusion OP resistors, and so forth) are exempt from this rule when
one terminal is connected to an I/O pad. This exemption also applies to parallel device terminal connections.
5. For DRC, a stacked gate configuration is done by checking for gates touching diffusions that do not contain any CA
shapes. These gates are considered stacked devices.
6. Do not trace connections through resistors that have a terminal connected to an LC_POWER_ESD or
HC_POWER_ESD labeled net.
7. ESD diode in this rule refers to the types of diodes referenced by ESD01a or ESD01b or ESD31a or ESD31b, or
ESD30b. ESD diodes are either (1) (n+/p+ diffusions not interacting with PC) over (ESD_HBM or ESD_CDM), or
(2) n+/p+ diffusions over ESD_POLYB.
8. Guard_rings may or may not be present around the diffusions. If guard_rings are not present, then ESD_CDM needs
to enclose only n+ diffusions or p+ diffusions. If there are more than one guard_ring, then ESD_CDM must enclose
the outer most guard_ring.
9. ESD21 checked configuration only. Drain/Source SBLK will be checked by other mentioned rules. This rule applies
to both NFET and PFET.
10. These rules do not check [(diffusion not touching PC) with area < 1 μm2].
11. Guard_rings may or may not be present around the diffusions. If guard_rings are not present, then ESD_HBM needs
to enclose only n+ diffusions or p+ diffusions. If there are more than one guard_ring, then ESD_HBM must enclose
the outer most guard_ring.
12. Warning: For any IP that has already been approved, this flagged can be ignored. But if IP has further changes, it
needs to be approved again.
The following figures do not include all required guard_rings.
3.29.4 ED P+ Implant for ESD
Table 61: ED Design Rules
EDX01 - ED minimum width. ≥ 0.5
EDX02 - ED minimum space and notch. ≥ 0.5
EDX03 - ED minimum space to PC. ≥ 0.4
EDX03b - ED over PC is prohibited. ≡ -
EDX04 - ED must be within RX. ≥ 0.4
EDX05 - CA within ED. ≥ 0.3
EDX06 - ED shapes must be orthogonal. ≡ -
3.29.5 ESD Silicide-Blocking Design Rules
While the OP level is used for blocked resistors, the SBLK level is used for blocked transistors. The SBLK level enhances
the ESD robustness of a design by marking areas where silicide should not be formed. SBLK requires standard device
data preparation.
Table 62: ESD Silicide-Blocking Design Rules
SB725 - SBLK minimum width. ≥ 0.2
SB726 - SBLK minimum space and notch. ≥ 0.2
SB727 - SBLK minimum overlap past RX with coinciding prohibited. ≥ 0.18
≥ 0.16
SBLK minimum space to (RX touching CA) with coinciding
prohibited.
SB728 -
SB729a - SBLK minimum area (μm2). ≥ 0.37
SB729b - SBLK minimum enclosed area (μm2). ≥ 0.37
≥ 0.12
(SBLK not over BIPOLAR) minimum overlap past ((PC not PC_E2)
touching CA) with coinciding prohibited.
SB730 -
SB730a - (Gate inside SBLK) minimum within SBLK. ≥ 0.2
SB730b - Gate minimum overlap past SBLK. ≥ 0.05
SB730c - Gate minimum overlap of SBLK. ≥ 0.05
≡ 0.05
{[gate over (ESD_HBM, ESD_CDM)] straddling SBLK} exact
overlap of SBLK.
SB730d -
≥ 0.24
[SBLK not over (BIPOLAR, ESD_HBM, ESD_CDM)] minimum
space to [(PC not PC_E2) touching CA] with coinciding prohibited.
SB731 -
≥ 0.24
Gate minimum space to [SBLK not over (BIPOLAR, ESD_HBM,
ESD_CDM)].
SB731a -
≡ 0.05
[(Gate over (ESD_HBM, ESD_CDM)) not over SBLK] exact space
1 to SBLK. SB731b
SB732 - SBLK over CA is prohibited. ≡ -
SB733 - CA minimum space to adjacent SBLK. ≥ 0.12
≥ 0.06 [SBLK over (ESD_HBM, ESD_CDM, ESDSCR_HBM)] minimum
space to [PC not over (ESD_HBM, ESD_CDM, ESDSCR_HBM)].
SB734 -
SB740 - SBLK minimum space to OP. ≥ 0.4
SB741a 1, 3 [SBLK over (RX or PC)] minimum space to PPLUS. ≥ 0.07
SB741b 1, 3, 4 [SBLK over (RX or PC)] minimum within PPLUS. ≥ 0.07
SB742a 2, 3 [SBLK over (RX or PC)] minimum space to NPLUS. ≥ 0.07
Notes:
1. PPLUS edges on unsalicided RX or PC are prohibited.
2. NPLUS edges on unsalicided RX or PC are prohibited.
3. [(RX or PC) not touching CA] is exempt from this rule check.
4. (SBLK over (RPO_DIODE, LDFET3P3V, LDFET5P0V)) is exempt from this check.
3.30 SCR Design Rules
Table 63: SCR Design Rules
SCR0 - ESDSCR_HBM touch ESD_HBM or ESD_CDM is prohibited. - -
[(RX touching ESDSCR_HBM) sized by 0.5 μm/edge] must cover - -
ESDSCR_HBM.
SCR1 -
3.31 Contact Design Rules
Contacts (CAs) connect either RX and M1 or PC and M1.
Table 64: CA Design Rules
200 - CA exact length and width. ≡ 0.04
201 1 CA must be an orthogonal rectangle. ≡ -
203a - CA minimum distance (for same net). ≥ 0.07
203b - CA minimum distance (for different net). ≥ 0.08
≥ 0.085
If a CA has 3 or more CA_neighbors, the minimum space from this
CA to all its CA_neighbors.
203c 2
204 - CA minimum within RX. ≥ 0.005
≡ -
At least one CA, per RX diffusion and M1 intersection containing
a CA, must meet Rule 204a or Rule 204b.
204_or -
204a - CA minimum within RX. ≥ 0.015
≥ 0.03
RX minimum overlap past CA for two opposite sides with the other
two sides >= 0.005 μm (rectangular enclosure).
204b -
204m - RXend1 minimum overlap past (CA sized by 0.005 μm). ≥ 0.017
207 - (CA over RX) minimum space to (PC or PCZFILL). ≥ 0.03
≥ 0.04
(CA over RX) minimum space to ((PC or PCZFILL) with width >
0.09 μm).
207a -
207b 12 (CA over RX) minimum space to (gate over (EG or ZG)). ≥ 0.07
207c 3 (CA over RX) minimum space to (PCend or PCZFILLend). ≥ 0.04
≥ 0.080
[Non-redundant CA over RX] minimum space to "facing" [(PC not
PC_E2) inner vertex with both edge lengths > 0.05 μm].
207U 4, 5
≥ 0.028 [CA touching (PC not PC_E2)] minimum space to (RX or
RXZFILL).
208 -
208a_or - One of the following rules must be met {208a1 or 208a2}. - -
208a1 - (CA touching PC) minimum space to (RX or RXZFILL) inner vertex. ≥ 0.068
208a2 7, 8, 9 (CA touching PC) center minimum space to RX_corner_region. ≥ 0.048
≥ 0.028 (CA touching PC) minimum space to (RX or RXZFILL) with run
length > 0.014 (for summed space run length).
208b -
209 - CA minimum within (PC not PC_E2). ≥ -0.006
≡ -
At least one CA per (PC not PC_E2) and M1 intersection containing
a CA must meet Rule 209b, 209c, 209d or 209e, 209f.
209_or -
≥ 0.03
(PC not PC_E2) minimum overlap past CA for two opposite sides
with the other two sides ≥ -0.005 μm (rectangular enclosure).
209b -
≥ 0.01
PC minimum overlap past CA for three sides with one side ≥ 0.004
μm (rectangular enclosure).
209c -
≥ 0.014
PC minimum overlap past CA for two opposite sides with a third
side ≥ 0.008 μm and a fourth side ≥ 0 μm (rectangular enclosure).
209d -
≥ 0.02
PC minimum overlap past (CA touching PC_landing_pad_123) for
two opposite sides with a third side ≥ 0.014 and a fourth side ≥ -0.006
μm (rectangular enclosure).
209e 4
≥ 0.03
(PC not PC_E2) minimum overlap past CA for two opposite sides
with run length > 0.000 μm and a third side with run length ≥ 0.034
μm.
209f -
209g 4, 5, 6 CA minimum within [(PC not PC_E2) with width ≥ 0.04 μm]. ≥ 0
211 - CA over gate is prohibited. ≠ -
212 - CA must be within RX or {(PC not PC_E2) sized by 0.005 μm}. ≥ 0
213 - CA touching (RXZFILL or PCZFILL) is prohibited. ≡ -
228 - CABAR must be within (GUARDRNG or MOB). ≡ -
229wb - (CABAR within GUARDRNG) exact width. ≡ 0.253
230 - CABAR minimum length. ≥ 0.69
232 - (CABAR not over MOB) minimum space. ≥ 0.76
233 - CABAR minimum space to CA with touching prohibited. ≥ 0.15
- -
(PC not RX) space ≤ x (where the space is formed by exactly two
(PC not RX) shapes), which touches two gate space ≤ x regions,
where x = 0.096 μm.
PC_canyon_def -
- -
RXend1 is RX edge < 0.060 μm bounded by 2 outside corners and
adjacent edges ≥ 0.06 μm.
RXend1_def -
Notes:
1. This rule is covered by the grid check (Rule S1), the acute angle check (Rule S6), and the exact width and length
via check.
2. CA_neighbor is defined as the neighboring CA, which has a distance less than 0.090 μm to a CA. Please see
3. PCend / PCZFILLend is PC / PCZFILL edge with edge length < 0.048 μm bounded by 2 outside corners and adjacent
edges ≥ 0.068 μm.
4. PC_landing_pad_123 is (PC_landing_pad_1) or (PC_landing_pad_2) or (PC_landing_pad_3):
• PC_landing_pad_1 is (PC with width = 0.060 μm and length = 0.080 μm) touching (PC with width = 0.040 μm).
The jog formed by the PC_landing_pad_1 must be 0.020 μm high and 0.080 μm long.
• PC_landing_pad_2 is (PC with width = 0.060 μm and length = 0.080 μm) touching (PC with width = 0.035 μm).
The jog formed by the PC_landing_pad_2 must be 0.025 μm high and 0.080 μm long.
• PC_landing_pad_3 is (PC with width = 0.060 μm and length = 0.080 μm) touching (PC with width = 0.030 μm).
The jog formed by the PC_landing_pad_3 must be 0.030 μm high and 0.080 μm long
5. PC_landing_pad_123 is exempt from this check.
6. CA touching [(PC not PC_E2) with width < 0.04 μm or PC_landing_pad_123] is exempt from this rule check.
7. RX_corner_region is a NOT a drawn level. It is a derived term for DRC checking purposes only and should NOT
be present in the chip data. The corner rounding is simulated by placing the RX_corner_region triangle into all of
the RX inside corners.
8. For rule 208a_or, RX jog is defined as the shortest of RX edges forming an inside corner.
9. RX_corner_region is a right triangle with the lengths of the legs defined in the following:
a. In the case where RX jog is ≤ 0.042 μm: the length of the leg abutting the RX jog is equal to half of the RX jog
length. The length of the other leg forming by RX inside corner (Not Jog edge) is equal to the length of the RX
jog. (Ratio of triangle legs is 2).
b. In the case where 0.042 μm < RX jog ≤ 0.1 μm: the length of both legs formed by an RX inside corner is equal
to half of the RX jog length. (Ratio of triangle legs is 1).
c. In the case of RX, jog is > 0.1μm: both RX edges of the triangle are 0.05 μm (Ratio of triangle legs is 1).
10. H_Bar_PC is exempt from this check.
11. H_Bar_PC is a horizontal bar with dimension of 0.11 μm by 0.06 μm, abutting two PCs with width = 0.03 μm at
12. EG touching (LDFET3P3V, LDFET5P0V) are exempt from this check.
3.31.1 Illustrations of Contact (CA) Design Rules
3.32 1x Metal and Via Design Rules
The 1x metal and via level design rules consist of M1 metal design rules, V1 via design rules, and Mx and Vx design
rules.
3.32.1 Net Definitions for 1x Metal and Via Levels
Metal net voltage marking layer names are of the form: MxVDDv where Mx = any valid copper metal level in the
BEOL_STACK and v = 1V0, 1V2, 1V5, 1V8, 2V1, 2V5, 3V3, 5V0. For example, M2VDD1V5 identifies the M2 shape
it touches as being at a nominal voltage level of 1.5 V.
Note: Only one voltage marker shape is required per net to identify all metal and via shapes on that net.
Nets are identified by their nominal use voltage. For maximum use voltage, see the following tables.
The final voltage level of a net is determined by the first condition to be satisfied in the following logical flow, see Truth
if there is a metal marker shape on a net, then the net is assigned to that associated voltage level. If there are different
voltage markers on the same net, the highest voltage level is assigned.
Else, if there are no marker shapes on the net, then:
• If the net is connected to an [(RX or Gate) not interacting with (EG or ZG)], the net voltage is 1.0 V. And the net is
defined as Mx_NVDD1V0.
• Else, If it is connected to an [(RX or Gate) interacting with (EG and UNDERDRIVE)], the net voltage is 1.2 V. And
the net is defined as Mx_NVDD1V2.
• Else, If it is connected to an [(RX or Gate) interacting with (EG and EGV)], the net voltage is 1.5 V. And the net is
defined as Mx_NVDD1V5.
• Else, if it is connected to an {[(RX or Gate) interacting with (EG not Union(EGV, UNDERDRIVE, LDFET3P3V,
LDFET5P0V))], LDNFET3P3V_GATE, LDNFET5P0V_GATE} the net voltage is 1.8 V. And the net is defined
as Mx_NVDD1V8.
• Else, if it is connected to an [(RX or Gate) interacting with (ZG and UNDERDRIVE)], the net voltage is 1.8 V. And
the net is defined as Mx_NVDD1V8.
• Else, If it is connected to an [(RX or Gate) interacting with (EG and OVERDRIVE)], the net voltage is 2.1 V. And
the net is defined as Mx_NVDD2V1.
• Else, If it is connected to an [(RX or Gate) interacting with (ZG not Union(UNDERDRIVE, OVERDRIVE))], the
net voltage is 2.5 V. And the net is defined as Mx_NVDD2V5.
• Else, if it is connected to an {[(RX or Gate) interacting with (ZG and OVERDRIVE)], LDNFET3P3V_DRAIN,
LDPFET3P3V_GATE, LDPFET3P3V_SOURCE, LDPFET3P3V_BODY}, the net voltage is 3.3 V. And the net is
defined as Mx_NVDD3V3.
• Else, If the net is connected to a [LDNFET5P0V_DRAIN, LDPFET5P0V_GATE, LDPFET5P0V_SOURCE,
LDPFET5P0V_BODY] the net voltage is 5.0 V. And the net is defined as Mx_NVDD5V0.
Table 65:Truth Table for DRC Maximum Voltage When No VDD Marker Is Present
Voltage Assumed
Nominal
Voltage
(V)
Net Definition
Touching a Gate or RX diffusion interacting with
OVER
DRIVE
ZG
UNDER
DRIVE
EG EGV
Thin
Oxide
Mx_NVDD1V0 1.0 1 0 0 0 0 0
Mx_NVDD1V2 1.2 0 1 0 1 0 0
Mx_NVDD1V5 1.5 0 1 1 0 0 0
0 1 0 0 0 0
Mx_NVDD1V8 1.8
0 0 0 1 1 0
0 1 0 0 0 0
0 1 0 0 0 0
Mx_NVDD2V1 2.1 0 1 0 0 0 1
Mx_NVDD2V5 2.5 0 0 0 0 1 0
0 0 0 0 1 1
Mx_NVDD3V3 3.3
0 X 0 0 0 0
0 X 0 0 0 0
0 X 0 0 0 0
0 X 0 0 0 0
0 X 0 0 0 0
Mx_NVDD5V0 5.0
0 X 0 0 0 0
0 X 0 0 0 0
0 X 0 0 0 0
Table 66:Truth Table for DRC Maximum Voltage When No VDD Marker Is Present (cont.)
Voltage Assumed
Touching a Gate or RX diffusion interacting with
5.0V
LDPFET
_BODY
5.0V
LDPFET
_GATE
5.0V
LDPFET
_SOURCE
5.0V
LDNFET
_GATE
5.0V
LDNFET
_DRAIN
3.3V
LDPFET
_BODY
3.3V
LDPFET
_GATE
3.3V
LDPFET
_SOURCE
3.3V
LDNFET
_GATE
3.3V
LDNFET
_DRAIN
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
X 1 X X X 0 0 0 0 0
0 0 0 0 0 X 1 X X 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0
1 0 X X X 0 0 0 0 0
X 0 1 X X 0 0 0 0 0
X 0 X 1 X 0 0 0 0 0
X 0 X X 1 0 0 0 0 0
0 0 0 0 0 1 0 X X X
0 0 0 0 0 X 0 1 X X
0 0 0 0 0 X 0 X 1 X
0 0 0 0 0 X 0 X X 1
Table 67:Truth Table for DRC Maximum Voltage When a VDD Marker Is Present
Nominal User-Defined Marker Level
Voltage
(V)
Nets
Definition MxVDD1V0 MxVDD1V2 MxVDD1V5 MxVDD1V8 MxVDD2V1 MxVDD2V5 MxVDD3V3 MxVDD5V0
1.0 1 0 0 0 0 0 0 0
Mx
_NVDD1V0
1.2 X 1 0 0 0 0 0 0
Mx
_NVDD1V2
1.5 X X 1 0 0 0 0 0
Mx
_NVDD1V5
1.8 X X X 1 0 0 0 0
Mx
_NVDD1V8
2.1 X X X X 1 0 0 0
Mx
_NVDD2V1
Nominal User-Defined Marker Level
Voltage
(V)
Nets
Definition MxVDD1V0 MxVDD1V2 MxVDD1V5 MxVDD1V8 MxVDD2V1 MxVDD2V5 MxVDD3V3 MxVDD5V0
2.5 X X X X X 1 0 0
Mx
_NVDD2V5
3.3 X X X X X X 1 0
Mx
_NVDD3V3
5.0 X X X X X X X 1
Mx
_NVDD5V0
3.32.2 M1 Design Rules
Table 68: M1 Design Rules
500 - (M1 or M1ZFILL) minimum width. ≥ 0.050
≤ 4.500
[(M1 or M1ZFILL) not over (MOB, IND)] maximum width (A
tolerance of ± 0.01 μm is allowed at 45o edges).
500b 9
500wb - [(M1 or M1ZFILL) within MOB] maximum width. ≤ 6.5
501a - (M1 or M1ZFILL) minimum area (μm2). ≥ 0.0115
501b - [(M1 or M1ZFILL) not over MOB] minimum enclosed area (μm2). ≥ 0.2
501b2 - [M1 over MOB] minimum enclosed area (μm2). ≥ 0.115
502 - (M1 or M1ZFILL) minimum space and notch. ≥ 0.050
≥ 0.070
{(M1_LE or M1ZFILL_LE) minimum space to (M1 or M1ZFILL)
side if {(M1 or M1ZFILL)_end_1 + [(M1_LS or M1ZFILL_LS)
502a1 1, 2, 3
space to (M1 or M1ZFILL)]} is < 0.120 μm on both sides.} not over
CELLSNR.
≥ 0.060
(M1_LE or M1ZFILL_LE) minimum space to (M1 or M1ZFILL)
side if: 1. {(M1 or M1ZFILL)_end_1 + [(M1_LS or M1ZFILL_LS)
502a2 1, 2, 3 space to (M1 or M1ZFILL)]} is ≥ 0.120 μm on both sides. Or 2.
{(M1 or M1ZFILL)_end_1 + [(M1_LS or M1ZFILL_LS) space to
(M1 or M1ZFILL)]} is < 0.120μm on only one side.
502j1 - M1_NVDD3V3 minimum space to M1 on different nets. ≥ 0.070
502j2 - M1_NVDD5V0 minimum space to M1 on different nets. ≥ 0.110
503a - M1ZFILL touching M1 is prohibited.. - -
503b - M1ZFILL must be orthogonal. - -
≥ 0.060
(M1 or M1ZFILL) minimum space to [(M1 or M1ZFILL) with width
> 0.1 μm] , for run length > 0.22 μm.
504X-a2 -
≥ 0.100
(M1 or M1ZFILL) minimum space to [(M1 or M1ZFILL) with width
> 0.18 μm], for run length > 0.22 μm.
504X-a3 -
≥ 0.130
(M1 or M1ZFILL) minimum space to [(M1 or M1ZFILL) with width
> 0.47 μm], for run length > 0.47 μm.
504X-a4 -
≥ 0.150
(M1 or M1ZFILL) minimum space to [(M1 or M1ZFILL) with width
> 0.63 μm], for run length > 0.63 μm.
504X-a5 -
≥ 0.500
(M1 or M1ZFILL) minimum space to [(M1 or M1ZFILL) with width
> 1.5 μm], for run length > 1.5 μm.
504X-a6 -
505a - CA must be within M1. ≥ 0
≥ 0.006 [Non-redundant CA touching (M1 with width = 0.052 μm)] minimum
within M1.
505b -
[CA over but not straddling (M1 with width > 0.7 μm)] minimum ≥ 0.030
within M1.
505c -
- -
At least one (CA or CABAR), per (RX diffusion or PC) and M1
intersection containing a (CA or CABAR), must meet Rules: 507a,
507_or 4
507b, 507c2, 507h, 507i or 507k. For all rules, an M1 rectangular
enclosure must be used.
507a - CA minimum within M1. ≥ 0.012
≥ 0.016
M1 minimum overlap past CA for two opposite sides with the other
two sides ≥ 0.009 μm.
507b -
≥ 0.02
M1 minimum overlap past CA for two opposite sides with the other
two sides ≥ 0.000 μm.
507c2 -
≥ 0
507h_landing_pad minimum overlap past CA on 0.104 μm side
when overlap on the other three sides is ≥ 0.032 μm.
507h -
≡ -
507h_landing_pad is (M1 with width ≤ 0.089 μm and length = 0.104
μm) touching (M1 with width ≥ 0.050 μm and length ≥ 0.153 μm).
507h_landing_pad_def -
The jog formed by the 507h_landing_pad must be ≥ 0.008 and ≤
0.039 μm and 0.104 μm long.
≥ 0.005
M1 overlap past CA when two opposite sides have overlap ≥ 0.016
and a third side has overlap ≥ 0.030 (rectangular enclosure).
507i -
≥ 0.02
M1 minimum overlap past (CABAR not over MOB) for two opposite
sides with a third side ≥ -0.005 μm and a fourth side ≥ 0 μm
(rectangular enclosure).
507k -
515R 5, 6, 7 CA must be within 515_M1. ≥ 0
≥ 0.170
(M1 at 45°) minimum width (measured along 45° direction,
perpendicular to 45° edge, and between two parallel 45° edges only).
580 -
≥ 0.070
(M1 at 45°) minimum width (measured along 45° direction,
perpendicular to 45° edge, and between 45° edge and orthogonal
580a -
page 200.
≥ 0.170
(M1 at 45°) minimum space to M1 (measured along 45° direction
581 8
582 - Minimum length of 45° M1 line segments. ≥ 0.5
Notes:
1. (M1 or M1ZFILL)_end_1 is defined as [(M1 or M1ZFILL) edge with length < 0.070 μm] between two (outer vertices
connected to edges of length > 0.020 μm).
2. (M1_LE or M1ZFILL_LE) = (M1 or M1ZFILL)_end_1 extended out by 0.020 μm on each side.
3. (M1_LS or M1ZFILL_LS) = 0.050 μm Metal side extended out beyond (M1 or M1ZFILL)_end_1 by 0.020 μm.
4. CA arrays will pass this rule as an exception in DRC if CAs connecting the same metals are in a 2x2 configuration
and merge after being sized up 0.04 μm per edge and sized down 0.04 μm per edge, where CA merger in DRC must
be over same metal.
5. A redundant CA with an edge failing rule 515R passes DRC if any of the following conditions are met: (1) All CAs
must touch the same M1 above and the same PC or RX diffusion below. See Illustrations of M1 Design Rules on
page 198 for figures. (2) The CA is spaced ≤ 0.226 μm from a CA that has ≥ 0 μm enclosure within 515_M1. (3)
The CA is spaced ≤ 0.226 μm from a CA edge opposite the failing edge, with run length > 0. All failing edges must
pass the above condition. (4) The CA is spaced ≤ 0.226 μm from a CA passing rule 507_or and is not touching (M1
with width > 0.072 μm). (5) The CA is spaced ≤ 0.226 μm from a CA passing the 3rd or 4th condition.
6. 515_M1 = {[(M1 with width ≤ 0.142 μm) sized by +0.010 μm] or (M1 with width > 0.142 μm)} sized by -0.010
7. This is a GLOBALFOUNDRIES recommended rule. All of the GLOBALFOUNDRIES recommended rules can be
turned on by a single switch within the DRC rule file.
8. A tolerance of 0.001 μm is allowed for this rule.
9. Maximum width over IND is covered by IND01a.
3.32.3 Illustrations of M1 Design Rules
3.32.4 V1 and Vx Design Rules
Table 69: V1 and Vx Design Rules
≡ 0.050 Vx exact length and width, where x = 1-5, outside (MOB,
GUARDRNG).
550 -
550b - VxLRG exact length and width, where x = 1-5. ≡ 0.100
≡ 0.130 [VxBAR not over (Union (GUARDRNG, MOB, IND, LOGOBND))]
exact length, where x = 1-5.
550cd -
≡ 0.050
VxBAR exact width, where x = 1-5, not over [Union (MOB, IND,
GUARDRNG)].
550d -
≥ 0.050
(Vx, VxBAR, VxLRG) minimum space to (Mx, Mx+1) on different
nets if voltage of either net is 1.5V, for x = 1-5.
552a1 2, 3
≥ 0.050
(Vx, VxBAR, VxLRG) minimum space to (Mx, Mx+1) on different
nets if voltage of either net is 1.8V, for x = 1-5.
552a2 2, 3
≥ 0.080 (Vx, VxBAR, VxLRG) minimum space to (Mx, Mx+1) on different
nets if voltage of either net is 2.5V, for x = 1-5.
552a3 2, 3
≥ 0.085 (Vx, VxBAR, VxLRG) minimum space to (Mx, Mx+1) on different
nets if voltage of either net is 3.3V, for x = 1-5.
552a4 2
≥ 0.110 (Vx, VxBAR, VxLRG) minimum space to (Mx, Mx+1) on different
nets if voltage of either net is 5.0V, for x = 1-5.
552a5 2, 3
553bb - VxLRG minimum space, where x = 1-5. ≥ 0.100
≥ 0.080 VxLRG minimum space to Vx with straddling prohibited, where x
= 1-5.
553c -
≥ 0.080 [VxBAR or (size VxBAR end outside by 0.020 um)] minimum space
to VxLRG with straddling prohibited, where x = 1-5.
553d 1
≥ 0.080 VxLRG minimum space to VxBAR for run length > 0 um with
straddling prohibited, where x = 1-5.
553e -
≥ 0.075 Vx minimum space to VxBAR with touching prohibited, where x =
1-5.
553f -
Vx minimum space to VxBAR, for run length ≥ 0 μm, where x = ≥ 0.080
1-5.
553f1 -
553h - VxBAR minimum space, where x = 1-5. ≥ 0.080
553q1 - V1-V5 minimum space, for run length ≥ 0. ≥ 0.080
553q2 - Vx minimum space to Vx for run length < 0, where x = 1-5. ≥ 0.070
557 - Vx must be an orthogonal rectangle, where x = 1-5. - -
570a - V1LRG must be within M1. ≥ 0.017
570b 1 (V1BAR side) must be within M1. ≥ 0
(V1BAR end) must meet one of the following rules 570c, 570d, - -
570e or 570f.
570_or 1
≥ 0.040
(V1BAR end) must be within M1, for two opposite sides with the
other two sides = 0 μm.
570c 1
≥ 0.010
(V1BAR end) must be within M1, for two opposite sides with the
other two sides = 0.030 μm.
570d 1
≥ 0.020
(V1BAR end) must be within M1, for two opposite sides with the
other two sides = 0.020 μm.
570e 1
≥ 0.030
(V1BAR end) must be within M1, for two opposite sides with the
other two sides = 0.010 μm.
570f 1
571a - V1LRG must be within M2. ≥ 0.017
571b 1 (V1BAR side) must be within M2. ≥ 0
(V1BAR end) must meet one of the following rules 571c, 571d, - -
571e or 571f.
571_or 1
≥ 0.040
(V1BAR end) must be within M2, for two opposite sides with the
other two sides ≥ 0 μm.
571c 1
≥ 0.010
(V1BAR end) must be within M2, for two opposite sides with the
other two sides ≥ 0.030 μm.
571d 1
≥ 0.020
(V1BAR end) must be within M2, for two opposite sides with the
other two sides ≥ 0.020 μm.
571e 1
≥ 0.030
(V1BAR end) must be within M2, for two opposite sides with the
other two sides ≥ 0.010 μm.
571f 1
- -
Each V1 per (M1 or M1ZFILL) and (M2 or M2ZFILL) intersection
containing V1 must meet Rule 572a, 572b, or 572c1. For all rules,
an (M1 or M1ZFILL) rectangular enclosure must be used.
572_or -
572a - V1 minimum within (M1 or M1ZFILL). ≥ 0.020
≥ 0.025
(M1 or M1ZFILL) minimum overlap past V1 for two opposite sides
with the other two sides ≥ 0.010 μm.
572b -
≥ 0.030
(M1 or M1ZFILL) minimum overlap past V1 for two opposite sides
with the other two sides ≥ 0.000 μm.
572c1 -
≡ 0.055
VxBAR exact width, where x = 1-5, over (GUARDRNG, IND,
MOB).
590 -
≥ 0.15
[(VxBAR touching (MOB, IND, GUARDRNG)) not over
(MOB_GA, MOB_GA_NC)] minimum length, where x = 1-5.
590a -
≥ 0.15
[(VxBAR touching (MOB, IND, GUARDRNG)) not over
(MOB_GA, MOB_GA_NC)] minimum space and notch, where x
= 1-5.
591 -
≥ 0.15
{[VxBAR touching (MOB, IND, GUARDRNG)] not over
(MOB_GA, MOB_GA_NC)} minimum space to Vx with touching
prohibited, where x = 1-5.
591a -
≥ 0
[VxBAR touching (MOB or IND or GUARDRNG)] must be within
(MOB or IND or GUARDRNG), where x = 1-5.
593 -
Notes:
1. (VxBAR side) is defined as the line edge corresponding to (VxBAR length). (VxBAR end) is defined as the line
edge corresponding to (VxBAR width), where x = 1-5.
2. Net build must not include wells.
3. Mx_finger shapes are exempt from this rule.
3.32.5 Illustrations of 1x Via Design Rules
3.32.6 Mx and Vx Design Rules
Table 70: Mx and Vx Design Rules
600 - (Mx or MxZFILL) minimum width, where x = 2-6. ≥ 0.050
600wb 10 [(Mx or MxZFILL) within MOB] maximum width, where x = 2-6. ≤ 8.3
≤ 4.500
[(Mx or MxZFILL) not over (IND, MOB)] maximum width (a
tolerance of ± 0.01 μm is allowed at 45o edges), where x = 2-6.
600b 15
601a - (Mx or MxZFILL) minimum area (μm2), where x = 2-6. ≥ 0.014
601b - (Mx not over MOB) minimum enclosed area (μm2), where x = 2-6. ≥ 0.2
601b2 - (Mx over MOB) minimum enclosed area (μm2) where x = 2-6. ≥ 0.115
602 - (Mx or MxZFILL) minimum space and notch, where x = 2-6. ≥ 0.050
≥ 0.070
(Mx_LE or MxZFILL_LE) minimum space to (Mx or MxZFILL)
602a1 11, 12 side, if {(Mx or MxZFILL)_end_1 + [(Mx_LS or MxZFILL_LS)
space to (Mx or MxZFILL)]} is < 0.115 um on both sides, where x
= 2-6.
≥ 0.070
(Mx_LE or MxZFILL_LE) minimum space to (Mx or MxZFILL)
side, if: 1. {(Mx or MxZFILL)_end _1+ [(Mx_LS or MxZFILL_LS)
602a2 11, 12 space to (Mx or MxZFILL)]} is >= 0.115 um on both sides, where
x = 2-6. Or 2. {(Mx or MxZFILL)_end_1 + [(Mx_LS or
MxZFILL_LS) space to (Mx or MxZFILL)]} is < 0.115 um on only
one side, where x = 2-6.
≥ 0.070
Mx_NVDD3V3 minimum space to Mx on different nets, where x
= 2-6.
602j1 1
≥ 0.110
Mx_NVDD5V0 minimum space to Mx on different nets, where x
= 2-6.
602j2 1
≥ 0.070
MLAST1x space to (WT, YX, YS, JQ) on different nets if voltage
of either net is 1.5V.
602k1 1, 16
≥ 0.085
MLAST1x space to (WT, YX, YS, JQ) on different nets if voltage
of either net is 1.8V.
602k2 1, 16
≥ 0.125
MLAST1x space to (WT, YX, YS, JQ) on different nets if voltage
of either net is 2.5V.
602k3 1, 16
≥ 0.125
MLAST1x space to (WT, YX, YS, JQ) on different nets if voltage
of either net is 3.3V.
602k4 1
≥ 0.130
MLAST1x space to (WT, YX, YS, JQ) on different nets if voltage
of either net is 5.0V.
602k5 1, 16
603a - MxZFILL touching Mx is prohibited, where x = 2-6. - -
603b - MxZFILL must be orthogonal, where x = 2-6. - -
≥ 0.060
(Mx or MxZFILL) minimum space to [(Mx or MxZFILL) with width
> 0.09 μm] for run length > 0.22 μm, where x = 2-6.
604X-a2 -
≥ 0.080
(Mx or MxZFILL) minimum space to [(Mx or MxZFILL) with width
> 0.13 μm] for run length > 0.22 μm, where x = 2-6.
604X-a3 -
≥ 0.100
(Mx or MxZFILL) minimum space to [(Mx or MxZFILL) with width
> 0.16 μm] for run length > 0.22 μm, where x = 2-6.
604X-a4 -
≥ 0.130
(Mx or MxZFILL) minimum space to [(Mx or MxZFILL) with width
> 0.47 μm] for run length > 0.47 μm, where x = 2-6.
604X-a5 -
≥ 0.150
(Mx or MxZFILL) minimum space to [(Mx or MxZFILL) with width
> 0.63 μm] for run length > 0.63 μm, where x = 2-6.
604X-a6 -
≥ 0.500
(Mx or MxZFILL) minimum space to [(Mx or MxZFILL) with width
> 1.5 μm] for run length > 1.5 μm, where x = 2-6.
604X-a7 -
610 - Vx must be within (Mx or MxZFILL), where x = 1-5. ≥ 0
- -
Each Vx per (Mx or MxZFILL) and (M(x+1) or M(x+1)ZFILL)
intersection containing Vx must meet rule 610a, 610b or 610c, where
610_or 2
x = 2-5. For all rules, an (Mx or MxZFILL) rectangular enclosure
must be used.
610a - Vx minimum within (Mx or MxZFILL), where x = 2-5. ≥ 0.008
≥ 0.011
(Mx or MxZFILL) minimum overlap past Vx for two opposite sides
with the other two sides ≥ 0.004 μm, where x = 2-5.
610b -
≥ 0.017
(Mx or MxZFILL) minimum overlap past Vx for two opposite sides
with the other two sides ≥ 0.000 μm, where x = 2-5.
610c -
611 - Vx must be within [M(x+1) or M(x+1)ZFILL], where x = 1-5. ≥ 0
- -
Each Vx per (Mx or MxZFILL) and [M(x+1) or M(x+1)ZFILL]
intersection containing a Vx must meet rule 611a, 611b or 611c,
611_or 2
where x = 1-5. For all rules, an (Mx or MxZFILL) rectangular
enclosure must be used.
611a - Vx minimum within [M(x+1) or M(x+1)ZFILL], where x = 1-5. ≥ 0.020
≥ 0.025
[M(x+1) or M(x+1)ZFILL] minimum overlap past Vx for two
opposite sides with the other two sides ≥ 0.010 μm, where x = 1-5.
611b -
≥ 0.030
[M(x+1) or M(x+1)ZFILL] minimum overlap past Vx for two
opposite sides with the other two sides ≥ 0.000 μm, where x = 1-5.
611c -
- -
At least 2 Vx or 1 VxBAR or 1 VxLRG must connect Mx to M(x +
1) when Mx or M(x + 1) width is > 0.216 um. The [Vx incurring
612a 9 Union(MOM_excludem(x), MOM_excludem(x+1))] must be spaced
≤ 0.33 μm center to center, otherwise, must be spaced ≤ 0.25 μm
center to center, where x = 1-5.
- -
At least 3 Vx or 2 VxBAR or 1 VxLRG must connect Mx to M(x +
1) when Mx or M(x + 1) width is > 0.6 μm. The [(Vx or VxBAR)
612b 20 incurring Union(MOM_excludem(x), MOM_excludem(x+1))] must
be spaced ≤ 0.33 μm center to center, otherwise, must be spaced ≤
0.25 μm center to center, where x = 1-5.
- -
At least 4 Vx or 2 VxBAR or 2 VxLRG must connect Mx to M(x +
1) when Mx or M(x + 1) width is > 0.9 μm. The [(Vx or VxBAR or
612c 20
VxLRG) incurring Union(MOM_excludem(x),
MOM_excludem(x+1))] must be spaced ≤ 0.33 μm center to center,
otherwise, must be spaced ≤ 0.25 μm center to center, where x =
1-5.
- -
At least 2 Vx or 1 VxBAR or 1 VxLRG must be within each Mx /
M(x+1) intersection which contains (Vx or VxBAR or VxLRG),
613a 18, 19
when (Vx or VxBAR or VxLRG) is spaced ≥ 0 μm and ≤ 1.0 μm
(d) from [Mx or M(x + 1) plate with width > 0.216 μm (w)]. The
[Vx incurring Union(MOM_excludem(x), MOM_excludem(x+1))]
must be spaced ≤ 0.33 μm center to center, otherwise, must be spaced
≤ 0.25 μm center to center, where x = 1-5. See Wide-metal Via
- -
At least 2 Vx or 1 VxBAR or 1 VxLRG must be within each Mx /
M(x+1) intersection which contains (Vx or VxBAR or VxLRG),
613b 18
when (Vx or VxBAR or VxLRG) is spaced ≥ 0 μm and ≤ 2.1 μm
(d) from [Mx or M(x + 1) plate with width > 1.0 μm (w)]. The [(Vx
or VxBAR) incurring Union(MOM_excludem(x),
MOM_excludem(x+1))] must be spaced ≤ 0.33 μm center to center,
otherwise, must be spaced ≤ 0.25 μm center to center, where x =
- -
At least 2 Vx or 1 VxBAR or 1 VxLRG must be within each Mx /
M(x+1) intersection which contains (Vx or VxBAR or VxLRG),
613c 18
when (Vx or VxBAR or VxLRG) is spaced ≥ 0 μm and ≤ 5.5 μm
(d) from [Mx or M(x + 1) plate with width > 1.8 μm (w)]. The [(Vx
or VxBAR or VxLRG) incurring Union(MOM_excludem(x),
MOM_excludem(x+1))] must be spaced ≤ 0.33 μm center to center,
otherwise, must be spaced ≤ 0.25 μm center to center, where x =
- -
Single Vx is not allowed in H-shape M(x + 1) when all of the
following conditions are met: (1) The M(x + 1) has H-shape interact
614R 13
with two enclosed metal areas: both enclosed metal area length (EL2)
≤ 5 μm and both enclosed metal area ≤ 5 μm2. (2) The Vx overlaps
on the center metal bar of this H-shape M(x + 1). (3) The length
(EL1) of the center metal bar = 1.0 μm and the width of metal bar
is = 0.21 μm, where x = 1-5. See Wide-metal Via Design Rules (2
Vx must be within 615_Mx, where x = 1-5. ≥ 0
3, 4, 5, 6, 7,
8, 9, 13
615R
615cR 8, 13 VxBAR not over MOB must be within 615_Mx, where x = 1-5. ≥ 0
670a - VxLRG must be within Mx, where x = 2-5. ≥ 0.017
(VxBAR end) must meet one of the following rules 670c, 670d, - -
670e or 670f.
670_or -
≥ 0.04
(VxBAR end) must be within Mx, for two opposite sides with the
other two sides ≥ 0 μm, where x = 2-5.
670c -
≥ 0.01
(VxBAR end) must be within Mx, for two opposite sides with the
other two sides ≥ 0.030 μm, where x = 2-5.
670d -
≥ 0.02
(VxBAR end) must be within Mx, for two opposite sides with the
other two sides ≥ 0.020 μm, where x = 2-5.
670e -
≥ 0.03
(VxBAR end) must be within Mx, for two opposite sides with the
other two sides ≥ 0.010 μm, where x = 2-5.
670f -
671a - VxLRG must be within M(x + 1), where x = 2-5. ≥ 0.017
(VxBAR end) must meet one of the following rules 671c, 671d, - -
671e or 671f.
671_or -
≥ 0.04
(VxBAR end) must be within M(x+1), for two opposite sides with
the other two sides ≥ 0 μm, where x = 2-5.
671c -
≥ 0.01
(VxBAR end) must be within M(x+1), for two opposite sides with
the other two sides ≥ 0.030 μm, where x = 2-5.
671d -
≥ 0.02
(VxBAR end) must be within M(x+1), for two opposite sides with
the other two sides ≥ 0.020 μm, where x = 2-5.
671e -
≥ 0.03
(VxBAR end) must be within M(x+1), for two opposite sides with
the other two sides ≥ 0.010 μm, where x = 2-5.
671f -
- -
VxBAR must meet one of the following rules 675c_1, 675c_2, and
675c_3.
675c_or -
≥ 0.015
[VxBAR touching (Mx with width > 0.160 μm)] minimum within
Mx, when the facing Mx space < 0.13 μm and run length > 0.1 μm,
where x = 1-5.
675c_1 -
≥ 0.015
[VxBAR overlapping (Mx with width > 0.160 μm) by > 0.025 μm]
minimum within Mx, when the facing Mx space < 0.13 μm and run
length > 0.1 μm, where x = 1-5.
675c_2 -
≥ 0.014
For two or more redundant VxBARs touching (Mx with width >
0.160 μm), Mx minimum overlap past Vx for two opposite sides
with the other two sides ≥ 0.000 μm, where x = 1-5.
675c_3 -
≥ 0.170
(Mx at 45°) minimum width (measured along 45° direction,
perpendicular to 45° edge, and between two parallel 45° edges only),
680 17
≥ 0.070
(Mx at 45°) minimum width (measured along 45° direction,
perpendicular to 45° edge, and between 45° edge and orthogonal
680a -
680a, 681.
≥ 0.170
(Mx at 45°) minimum space to Mx (measured along 45° direction
Design Rules 680, 680a, 681.
681 14
682 - Minimum length of 45° Mx line segments, where x = 2-6. ≥ 0.5
Notes:
1. Net build must not include wells.
2. Via arrays will pass this rule as an exception in DRC if vias connecting the same metals are in a 2x2 configuration
and merge after being sized up 0.042 μm per edge and sized down 0.042 μm per edge, where via merger in DRC
must be over same metal.
3. A Vx that has an edge failing 615R will pass if it meets the following criteria: If the failing Vx is within 0.226 μm
of a Vx that has ≥ 0 enclosure within 615_Mx. All Vxs considered must touch the same metal above and below. See
Example of Designs Passing and Failing Rule 615R. Note that this exemption does not apply to 615cR.
4. A Vx that has an edge failing 615R will pass if it meets the following criteria: Identify the edge opposite this failing
edge. If there is another Vx within 0.226 μm that has a run length > 0 μm with this opposite edge, the Vx passes
615R. All Vx’s considered must touch the same metal above and below. See Illustrations of Mx and Vx Design
Rules. Note that this exemption does not apply to 615cR.
5. A Vx that has an edge failing 615R will pass if it meets the following criteria: If the failing Vx is within 0.226 μm
of a Vx that is passing rule (572_or or 610_or) and is not touching (Mx with width > 0.072 μm). All Vx’s considered
must touch the same metal above and below. See Illustrations of Mx and Vx Design Rules. Note that this exemption
does not apply to 615cR.
6. A Vx that has an edge failing 615R will pass if it meets the following criteria: If the failing Vx is within 0.226 μm
of a Vx that passes by either of the methods outlined in footnotes 5 or 6.
7. 615_M1 = {[(M1 with width < 0.085 μm) sized by +0.014 μm] or [(M1 with 0.100 μm > width > 0.084 μm) sized
by +0.009 μm] or [(M1 with 0.143 μm > width > 0.099 μm) sized by +0.004 μm] or (M1 with width > 0.142 μm)}
sized by -0.014 μm. This exemption does not apply to rule 615cR. See 615_Mx (and 515_M1) Explanation.
8. 615_Mx = {[(Mx with width < 0.073 μm) sized by +0.014 μm] or [(Mx with 0.105 μm > width > 0.072 μm) sized
by +0.006 μm] or [(Mx with 0.143 μm > width > 0.104 μm) sized by +0.004 μm] or (Mx with width > 0.142 μm)}
sized by -0.014 μm, where x = 2-5 for 615R and x = 1-5 for 615cR. See 615_Mx (and 515_M1) Explanation.
9. SRAM V1 shapes (V1 inside CELLSNR) are exempt from this rule.
10. Width measured between two parallel edges only. And a tolerance of ± 0.01 μm is allowed at 45° edges.
11. (Mx or MxZFILL)_end_1 is defined as [(Mx or MxZFILL) edge with length < 0.07 μm] between two (outer vertices
connected to edges of length > 0.020 μm).
12. (Mx_LE or MxZFILL_LE) = (Mx or MxZFILL)_end_1 extended out by 0.020 μm on each side. (Mx_LS or
MxZFILL_LS) = 0.050 μm Metal side extended out beyond (Mx or MxZFILL)_end_1 by 0.020 μm.
13. This is a GLOBALFOUNDRIES recommended rule. All of the GLOBALFOUNDRIES recommended rules can be
turned on by a single switch within the DRC rule file.
14. A tolerance of 0.001 μm is allowed for this rule.
15. Maximum width over IND is covered by IND01a.
16. Mx_finger shapes are exempt from this rule.
17. A tolerance of 0.005um is allowed at 45º edges
18. The via distance to the wide metal plate in all of the "nose metal" via design rules 613a/b/c should be measured
around any bend in the "nose metal”. The distance value (d) is measured in DRC by sizing the wide metal which
can result in a final value that is slightly larger than the distance value (d). The metal is sized in steps of 0.024μm,
so that the sizing doesn't jump over metal gaps, and the step size is equal to the spacing value from rule: 602 divided
19. This rule is not checked on SRAM_SB or SRAM_SH for V1.
20. If the VxBAR contact area is larger than 0.013μm², it is exempt from this check. (See Illustration below)
3.32.7 Illustrations of Mx and Vx Design Rules
Via Rule Rule Number Suffix
Level
(V)
Metal
Level (M)
d1
a b c2/c
Number Value x ≥ y ≥ If x ≥ y ≥ If x ≥ y ≥ If x ≥ y ≥
C2 0.02 - -
0.000
M1 CA 507 - 0.012 0.012 0.009 0.016
C1 0.03 0 0.014
0.000
M1 V1 572 - 0.02 0.02 0.010 0.025
Mx Vx 610 ≥ 0 0.008 0.008 0.004 0.011 0 0.017 - -
Via Rule Rule Number Suffix
Level
(V)
Metal
Level (M)
d1
a b c2/c
Number Value x ≥ y ≥ If x ≥ y ≥ If x ≥ y ≥ If x ≥ y ≥
M(x + 1) Vx 611 ≥ 0 0.02 0.02 0.01 0.025 0.000 0.03 - -
MLAST1X WT 2x60_L ≥ 0 0.020 0.020 0.010 0.030 0 0.040 - -
BA WT 2x61_L ≥ 0 0.020 0.020 0.010 0.030 0 0.040 - -
1. For at least two redundant vias.
3.33 1x to 8x Transitional Via Design Rules
The 1x to 8x transitional via level resides in the TEOS/FTEOS dielectric. In this technology, 1x to 8x transitional vias
are denoted as YX.
Table 71: 1x to 8x Transitional Via Design Rules
8x50_YX - YX exact length and width. ≡ 0.36
8x53_YX - YX minimum space. ≥ 0.34
≥ 0.44 YX minimum space for vias with run length > 0 μm; vias on different
net.
8x53b_YX -
8x57_YX - YX must be an orthogonal rectangle. - -
8x60_YX - YX must be within MLAST1X. ≥ 0.02
8x60a_YX - MLAST1X overlap past YX on at least two opposite sides. ≥ 0.08
8x61_YX - YX must be within IA. ≥ 0.02
8x61a_YX - IA overlap past YX on at least two opposite sides. ≥ 0.08
- -
At least 2 YX vias must connect MLAST1X to IA when MLAST1X
or IA width is > 2.0 μm. The YX must be spaced ≤ 2.0 μm center
to center.
8x72a_YX -
- -
At least 2 YX within the same MLAST1X /IA metal intersection
must be used for a connection that has a YX ≤ 1.0 μm (d) away from
8x73a_YX 1
a (MLAST1X or IA) metal plate with width > 2.0 μm (w). The YX
must be spaced ≤ 2.0 μm center to center.
8x90_YX - YXBAR exact width. ≡ 0.396
8x90a_YX - YXBAR minimum length. ≥ 1.08
8x91_YX - YXBAR minimum space. ≥ 1.08
8x91a_YX - YXBAR minimum space to YX with touching prohibited. ≥ 1.08
8x93_YX - YXBAR must be within (MOB, GUARDRNG, or IND). - -
1. The via distance to the wide metal plate in all of the "nose metal" via design rule 8x73a_YX should be measured
around any bend in the "nose metal”. The distance value (d) is measured in DRC by sizing the wide metal which
can result in a final value that is slightly larger than the distance value (d). The metal is sized in steps of 0.024μm
(MLAST1X) or 0.199μm (IA), so that the sizing doesn't jump over metal gaps, and the step size is equal to the
spacing value from rule: 602 (MLAST1X) or 8x02 (IA) divided by 2 minus minimum grid size. Please see Illustration
below.
3.33.1 Illustrations of 1x to 8x Transitional Via Design Rules
3.34 1x to 10x Transitional Via Design Rules
The 1x to 10x transitional via level resides in the TEOS/FTEOS dielectric. In this technology, 1x to 10x transitional
vias are denoted as YS.
Table 72: 1x to 10x Transitional Via Design Rules
10x50_YS - YS exact length and width. ≡ 0.46
10x53a_YS - YS minimum space, the same net. ≥ 0.44
10x53b_YS - YS minimum space, different net. ≥ 0.54
10x57_YS - YS must be an orthogonal rectangle. - -
10x60_YS - YS must be within MLAST1X. ≥ 0.02
10x60a_YS - MLAST1X overlap past YS on at least two opposite sides. ≥ 0.08
10x61_YS - YS must be within JA. ≥ 0.02
10x61a_YS - JA overlap past YS on at least two opposite sides. ≥ 0.08
- -
All MLAST1X / JA intersections that have a YS shape must have
≥ 2 YSs.
10x72_YSR 1
10x90_YS - YSBAR exact width. ≡ 0.46
10x90a_YS - YSBAR minimum length. ≥ 1.38
10x91_YS - YSBAR minimum space. ≥ 1.35
10x91a_YS - YSBAR minimum space to YS with touching prohibited. ≥ 1.35
10x93_YS - YSBAR must be within (MOB, IND, GUARDRNG). - -
Notes:
1. This is a GLOBALFOUNDRIES recommended rule. All of the GLOBALFOUNDRIES recommended rules can be
turned on by a single switch within the DRC rule file.
3.35 2x Metal and Via Design Rules for Low-K
The 2x (thick) metal and via levels are at a 2x pitch compared to the 1x levels. The 2x wire level for the low-k process
is BA. The 2x via level for the low-k process is WT.
Table 73: 2x Metal Design Rules for Low-K
2x00_L - (Bx or BxZFILL) minimum width, where x = A. ≥ 0.1
2x00b_L - (Bx or BxZFILL) maximum width, where x = A. ≤ 12
2x01a_L - (Bx or BxZFILL) minimum area (μm2), where x = A. ≥ 0.04
2x01b_L - (Bx or BxZFILL) minimum enclosed area (μm2), where x = A. ≥ 0.2
2x02_L - (Bx or BxZFILL) minimum space and notch, where x = A. ≥ 0.1
2x03a_L - BxZFILL touching Bx is prohibited, where x = A. - -
2x03b_L - BxZFILL must be orthogonal rectangle, where x = A. - -
≥ 0.12
(Bx or BxZFILL) minimum space to [(Bx or BxZFILL) with width
> 0.2 μm] for run length > 0.38 μm, where x = A.
2x04_L -
≥ 0.16
(Bx or BxZFILL) minimum space to [(Bx or BxZFILL) with width
> 0.4 μm] for run length > 0.4 μm, where x = A.
2x04b_L -
≥ 0.5
(Bx or BxZFILL) minimum space to [(Bx or BxZFILL) with width
> 1.5 μm] for run length > 1.5 μm, where x = A.
2x04e_L -
≥ 1.5
(Bx or BxZFILL) minimum space to [(Bx or BxZFILL) with width
> 4.5 μm] for run length > 4.5 μm, where x = A.
2x04f_L -
≥ 0.5
(Bx at 45°) minimum width (measured orthogonal to 45° edge),
where x = A.
2x80_L -
≥ 0.5
(Bx at 45°) minimum space to Bx (measured orthogonal to 45° edge),
where x = A.
2x81_L -
2x82_L - Minimum length of 45° Bx line segments, where x = A. ≥ 1
Table 74: 2x Via Design Rule for Low-K
2x50_L - Wx exact length and width, where x = T. ≡ 0.1
2x53_L - Wx minimum space, where x = T. ≥ 0.1
< 0.23
Wx cannot have more than 2 nearest neighbors with center to center
distance, where x = T.
2x53a_L -
≥ 0.23
Wx center to center distance for run length > 0, where x = T. Vias
on the same net are exempt.
2x53b_L -
2x57_L - Wx must be an orthogonal rectangle, where x = T. - -
2x60_L - WT must be within MLAST1X. ≥ 0
- -
Each WT per MLAST1X and BA intersection containing WT must
meet Rule 2x60a_L, 2x60b_L, or 2x60c_L. For all rules, a
rectangular enclosure must be used.
2x60_or_L -
2x60a_L - WT minimum within MLAST1X. ≥ 0.02
≥ 0.03
MLAST1X minimum overlap past WT for two opposite sides with
the other two sides ≥ 0.010 μm.
2x60b_L -
≥ 0.04
MLAST1X minimum overlap past WT for two opposite sides with
the other two sides ≥ 0.000 μm.
2x60c_L -
≥ 0.015
[(Non-redundant WT) touching (MLAST1X with width > 0.179
um)] minimum within MLAST1X.
2x60f_L -
2x61_L - WT must be within BA. ≥ 0
- -
Each WT per MLAST1X and BA intersection containing a WT must
meet rule 2x61a_L, 2x61b_L or 2x61c_L. For all rules, a BA
rectangular enclosure must be used.
2x61_or_L -
2x61a_L - WT minimum within BA. ≥ 0.02
≥ 0.03
BA minimum overlap past WT for two opposite sides with the other
2 sides ≥ 0.010 μm.
2x61b_L -
≥ 0.04
BA minimum overlap past WT for two opposite sides with the other
2 sides ≥ 0.000 μm.
2x61c_L -
- -
At least two WT vias must connect MLAST1X to BA when
MLAST1X or BA width is > 0.345 μm. The WT must be spaced ≤
0.5 μm center to center.
2x72a_L -
- -
At least three WT vias must connect MLAST1X to BA when
MLAST1X or BA width is > 0.545 μm. The WT must be spaced ≤
0.5 μm center to center.
2x72b_L -
- -
At least four WT vias must connect MLAST1X to BA when
MLAST1X or BA width is > 0.745 μm. The WT must be spaced ≤
0.5 μm center to center.
2x72c_L -
≥ 0.035
[WT touching (MLAST1X with width > 0.490 μm)] minimum within
MLAST1X, when MLAST1X space < 0.13 μm and run length > 0.1
μm. For this rule, a rectangular enclosure must be used.
2x73_L 2
- -
At least 2 WT within the same MLAST1X/BA metal intersection
must be used for a connection that has a WT ≤ 1.4 μm (d) away from
2x73a_L 4
a (MLAST1X or BA) metal plate with width > 0.7 μm (w). The WT
must be spaced ≤ 0.5 μm center to center.
- -
At least 2 WT within the same MLAST1X/BA metal intersection
must be used for a connection that has a WT ≤ 2.8 μm (d) away from
2x73b_L 4
a (MLAST1X or BA) metal plate with width > 2.0 μm (w). The WT
must be spaced ≤ 0.5 μm center to center.
- -
At least 2 WT within the same MLAST1X/BA metal intersection
must be used for a connection that has a WT ≤ 7.1 μm (d) away from
2x73c_L 4
a (MLAST1X or BA) metal plate with width > 3.0 μm (w). The WT
must be spaced ≤ 0.5 μm center to center.
- -
Single WT is not allowed in H-shape BA when all of the following
conditions are met: (1) The BA has an H-shape interacting with two
2x74_L -
enclosed metal areas: both enclosed metal area length (EL2) ≤ 5 μm
and both enclosed metal area ≤ 5 μm2. (2) The WT overlaps on the
center metal bar of this H-shape BA. (3) The length (EL1) of the
center metal bar ≤ 1.0 μm and the width of metal bar is ≤ 0.42 μm.
2x90_L - WxBAR exact width, where x = T. ≡ 0.11
2x90a_L - WxBAR minimum length, where x = T. ≥ 0.3
2x91_L - WxBAR minimum space and notch, where x = T. ≥ 0.3
≥ 0.2
WxBAR minimum space to Wx with straddling prohibited, where
x = T.
2x91a_L -
≥ 0
WxBAR must be within (MOB, GUARDRNG, or IND), where x =
T.
2x93_L -
Notes:
1. Wx_array is defined as (Wx sized by +0.099 μm, then sized by -0.349 μm).
2. Vias connecting the same metal, as identified by one of the following two methods, will pass DRC: Method a - Find
vias that have an edge failing the within check. b - Identify the edge opposite this failing edge. c- If there is another
via within 0.300 μm that has a run length > 0 μm with this opposite edge, the via from step 1 passes the check.
Method vias connecting the same metal, within 0.300 μm of a via passing rule 2x60_or that does not touch (Metal
Below with width > 0.490 μm).
3. This is a GLOBALFOUNDRIES recommended rule. All of the GLOBALFOUNDRIES recommended rules can be
turned on by a single switch within the DRC rule file.
4. The via distance to the wide metal plate in all of the "nose metal" via design rules 2x73a/b/c_L should be measured
around any bend in the "nose metal”. The distance value (d) is measured in DRC by sizing the wide metal which
can result in a final value that is slightly larger than the distance value (d). The metal is sized in steps of 0.024μm
(MLAST1X) or 0.049μm (BA), so that the sizing doesn't jump over metal gaps, and the step size is equal to the
spacing value from rule: 602 (MLAST1X) or 2xx02_L (BA) divided by 2 minus minimum grid size. Please see
Illustration below.
3.35.1 Illustrations of 2x Metal and Via Design Rules
Rule Width A Width B Run Length, rl Space, x
Bx
2x04_L - > 0.200 > 0.380 > 0.120
2x04b_L - > 0.400 > 0.400 > 0.160
2x04e_L - > 1.500 > 1.500 ≥ 0.500
2x04f_L - > 4.500 > 4.500 ≥ 1.500
3.36 VxZFILL and WTZFILL Design Rules
Table 75: VxZFILL and WTZFILL Design Rules
CFVx01 - VxZFILL exact width and length, where Vx = V1-V5. = 0.050
CFVx01b - VxZFILLLRG exact width and length, where Vx = V1-V5. = 0.100
CFVx02 - VxZFILL minimum space, where Vx = V1-V5. ≥ 0.100
CFVx02b - VxZFILLLRG minimum space, where Vx = V1-V5. ≥ 0.200
≥ 0.040
VxZFILL must be within MxZFILL, where Vx = V1-V5 and Mx =
metal level below Vx.
CFVx03 -
≥ 0.010
VxZFILLLRG must be within MxZFILL, where Vx = V1-V5 and
Mx = metal level below Vx.
CFVx03b -
≥ 0.040
VxZFILL must be within MyZFILL, where Vx = V1- V5 and My
= metal level above Vx.
CFVx04 -
≥ 0.010
VxZFILLLRG must be within MyZFILL, where Vx = V1-V5 and
My = metal level above Vx.
CFVx04b -
≥ 0.12
VxZFILL minimum space to VxZFILLLRG with touching
prohibited, where x = 1-5.
CFVx05 -
CFWx01_L - WTZFILL exact width and length. = 0.100
CFWx02_L - WTZFILL minimum space. ≥ 0.200
CFWx03_L - WTZFILL must be within BAZFILL. ≥ 0.040
≥ 0.040
WTZFILL must be within MxZFILL, where Mx = MLAST1x metal
level below WT.
CFWx05_L -
3.37 2x to 8x Transitional Via Design Rules
The 2x to 8x transitional via level resides in the TEOS/FTEOS dielectric. In this technology, 2x to 8x transitional vias
are denoted as YZ.
Table 76: 2x to 8x Transitional Via Design Rules
8x50_YZ - YZ exact length and width. ≡ 0.36
8x53_YZ - YZ minimum space. ≥ 0.34
≥ 0.44 YZ minimum space for vias with run length > 0 μm; vias on different
net.
8x53b_YZ -
8x57_YZ - YZ must be an orthogonal rectangle. - -
8x60_YZ - YZ must be within BLAST2X. ≥ 0.02
8x60_YZaR - All BLAST2X / IA intersections that have a YZ must have ≥ 2 YZs. - -
8x60a_YZ - BLAST2X overlap past YZ on at least two opposite sides. ≥ 0.08
8x61_YZ - YZ must be within IA. ≥ 0.02
8x61a_YZ - IA overlap past YZ on at least two opposite sides. ≥ 0.08
- -
At least 2 YZ vias must connect BLAST2X to IA when BLAST2X
or IA width is > 2.0 μm. The YZ must be spaced ≤ 2.0 μm center to
center.
8x72a_YZ -
- -
At least 2 YZ within the same BLAST2X / IA metal intersection
must be used for a connection that has a YZ ≤ 1.0 μm (d) away from
8x73a_YZ 1
a (BLAST2X or IA) metal plate with width > 2.0 μm (w). The YZ
must be spaced ≤ 2.0 μm center to center.
8x90_YZ - YZBAR exact width. ≡ 0.396
8x90a_YZ - YZBAR minimum length. ≥ 1.08
8x91_YZ - YZBAR minimum space. ≥ 1.08
8x91a_YZ - YZBAR minimum space to YZ with touching prohibited. ≥ 1.08
8x93_YZ - YZBAR must be within (MOB, GUARDRNG, or IND). - -
Notes:
1. The via distance to the wide metal plate in all of the "nose metal" via design rules 8x73a_YZ should be measured
around any bend in the "nose metal”. The distance value (d) is measured in DRC by sizing the wide metal which
can result in a final value that is slightly larger than the distance value (d). The metal is sized in steps of 0.049μm
(BLAST2X) or 0.199μm (IA), so that the sizing doesn't jump over metal gaps, and the step size is equal to the spacing
value from rule: 2x02_L (BLAST2X) or 8x02 (IA) divided by 2 minus minimum grid size. Please see Illustration
below.
3.37.1 Illustrations of 2x to 8x Transitional Via Design Rules
3.38 2x to 10x Transitional Via Design Rules
The 2x to 10x transitional via level resides in the TEOS/FTEOS dielectric. In this technology, 2x to 10x transitional
vias are denoted as YR.
Table 77: 2x to 10x Transitional Via Design Rules
10x50_YR - YR exact length and width. ≡ 0.46
10x53a_YR - YR minimum space, the same net. ≥ 0.44
10x53b_YR - YR minimum space, different net. ≥ 0.54
10x57_YR - YR must be an orthogonal rectangle. - -
10x60_YR - YR must be within MLAST1X. ≥ 0.02
10x60a_YR - MLAST1X overlap past YR on at least two opposite sides. ≥ 0.08
10x61_YR - YR must be within JA. ≥ 0.02
10x61a_YR - JA overlap past YR on at least two opposite sides. ≥ 0.08
10x90_YR - YRBAR exact width. ≡ 0.46
10x90a_YR - YRBAR minimum length. ≥ 1.38
10x91_YR - YRBAR minimum space. ≥ 1.35
10x91a_YR - YRBAR minimum space to YR with touching prohibited. ≥ 1.35
10x93_YR - YRBAR must be within (MOB, IND, GUARDRNG). - -
3.39 8x Metal and Via Design Rules
The 8x (thick) metal and via levels are at an 8x pitch compared to the 1x levels. The 8x metal and via levels reside in
the TEOS/FTEOS dielectric. In this technology, 8x metal levels are denoted as IA and IB, and the 8x via level is denoted
as XA.
Table 78: 8x Metal Design Rules
8x00 - (Ix or IxZFILL) minimum width, where x = A or B. ≥ 0.4
≤ 12 [(Ix or IxZFILL) not over MOB] maximum width, where x = A or
B.
8x00b 1
8x01a - (Ix or IxZFILL) minimum area (μm2), where x = A or B. ≥ 0.48
8x01b - (Ix or IxZFILL) minimum enclosed area (μm2), where x = A or B. ≥ 0.565
8x02 - (Ix or IxZFILL) minimum space and notch, where x = A or B. ≥ 0.4
8x03a - IxZFILL touching Ix is prohibited, where x = A or B. - -
8x03b - IxZFILL must be orthogonal rectangle, where x = A or B. - -
≥ 0.5
(Ix or IxZFILL) minimum space to [(Ix or IxZFILL) with width >
1.5 μm], for run length > 1.5 μm, where x = A or B.
8x04 -
≥ 1.5
(Ix or IxZFILL) minimum space to [(Ix or IxZFILL) with width >
4.5 μm], for run length > 4.5 μm, where x = A or B.
8x04b -
≥ 0.4 (Ix at 45°) minimum width (measured orthogonal to 45° edge), where
x = A or B.
8x80 -
≥ 0.50 (Ix at 45°) minimum space to Ix (measured orthogonal to 45° edge),
where x = A or B.
8x81 -
8x82 - Minimum length of 45° Ix line segments, where x = A or B. ≥ 1
Notes:
1. Tolerance of 0.001 μm is allowed at 45o edges.
Table 79: 8x Via Design Rules
8Bx50 XA exact length and width. ≡ 0.36
8Bx53 XA minimum space. ≥ 0.34
≥ 0.44 XA minimum space for vias for run length > 0 μm; vias on different
net.
8Bx53b
8Bx57 XA must be an orthogonal rectangle. - -
8Bx62 XA must be within IA. ≥ 0.02
8Bx62a IA overlap past XA on at least two opposite sides. ≥ 0.08
8Bx63 XA must be within IB. ≥ 0.02
8Bx63a IB overlap past XA on at least two opposite sides. ≥ 0.08
- -
At least 2 XA vias must connect IA to IB when (IA or IB) width is
> 2.0 μm. The XA must be spaced ≤ 2.0 μm center to center.
8x72a_XA
- -
At least 2 XA within the same IA to IB metal intersection must be
used for a connection that has a XA ≤ 1.0 μm (d) away from an (IA
8x73a_XA 1
or IB) metal plate with width > 2.0 μm (w). The XA must be spaced
≤ 2.0 μm center to center.
8Bx90 XABAR exact width. ≡ 0.396
8Bx90a XABAR minimum length. ≥ 1.08
8Bx91 XABAR minimum space and notch. ≥ 1.08
8Bx91a XABAR minimum space to XA, with touching prohibited. ≥ 1.08
8Bx93 XABAR must be within (MOB, GUARDRNG, or IND). - -
Notes:
1. The via distance to the wide metal plate in all of the "nose metal" via design rules 8x73a_XA should be measured
around any bend in the "nose metal”. The distance value (d) is measured in DRC by sizing the wide metal which
can result in a final value that is slightly larger than the distance value (d). The metal is sized in steps of 0.199μm,
so that the sizing doesn't jump over metal gaps, and the step size is equal to the spacing value from rule: 8x02 divided
by 2 minus minimum grid size. Please see Illustration below.
3.39.1 Illustrations of 8x Metal Design Rules
3.40 10x Metal and Via Design Rules
The 10x (thick) metal and via levels are at an 10x pitch compared to the 1x levels. The 10x metal and via levels reside
in the TEOS/FTEOS dielectric. In this technology, 10x metal levels are denoted as JA and JB, and the 10x via level is
denoted as XD.
Table 80: 10x Metal Design Rules
10x00 - (Jx or JxZFILL) minimum width, where x = A or B. ≥ 0.5
≤ 12
[(Jx or JxZFILL) not over IND] maximum width., where x = A or
B.
10x00b 1
- -
JxZFILL must not touch (Jx, MOB or LOGOBND), where x = A or
B.
10x00c -
10x01a - (Jx or JxZFILL) minimum area (μm2), where x = A or B. ≥ 1
10x01b - (Jx or JxZFILL) minimum enclosed area (μm2), where x = A or B. ≥ 1
10x02 - (Jx or JxZFILL) minimum space and notch, where x = A or B. ≥ 0.5
10x03 - JxZFILL must be orthogonal rectangle, where x = A or B. - -
≥ 0.65
(Jx or JxZFILL) minimum space to [(Jx or JxZFILL) with width >
1.5 μm], for run length > 1.5 μm, where x = A or B.
10x04 -
≥ 1.5
(Jx or JxZFILL) minimum space to [(Jx or JxZFILL) with width >
4.5 μm], for run length > 4.5 μm, where x = A or B.
10x04b -
Notes:
1. Maximum width over IND is covered by IND01d.
Table 81: 10x Via Design Rules
10Bx50 - XD exact length and width. ≡ 0.46
10Bx53 - XD minimum space. ≥ 0.44
≥ 0.54 XD minimum space for vias for run length > 0 μm; vias on different
net.
10Bx53b -
10Bx57 - XD must be an orthogonal rectangle. - -
10Bx62 - XD must be within JA. ≥ 0.02
10Bx62a 1 JA overlap past XD on at least two opposite sides. ≥ 0.08
10Bx63 - XD must be within JB. ≥ 0.02
10Bx63a - JB overlap past XD on at least two opposite sides. ≥ 0.08
10Bx72_XDR 2 All JA / JB intersections that have a XD must have ≥ 2 XDs. - -
10Bx90 - XDBAR exact width. ≡ 0.46
10Bx90a - XDBAR minimum length. ≥ 1.38
10Bx91 - XDBAR minimum space and notch. ≥ 0.9
10Bx91a - XDBAR minimum space to XD, with touching prohibited. ≥ 1.35
10Bx93 - XDBAR must be within (MOB, IND, GUARDRNG). - -
Notes:
1. In DRC deck, this rule checks parallel to XD edges.
2. This is a GLOBALFOUNDRIES recommended rule. All of the GLOBALFOUNDRIES recommended rules can be
turned on by a single switch within the DRC rule file.
3.41 UTM30x Metal and Via Design Rule (Copper Inductor Design Rule)
This section describes the UTM30x Metal (3 μm thickness) and Via design rules. The designer can use JQ/OI for
UTM30x Metal and Via layout. Before using these rules, please contact a GlobalFoundries technical representative.
Table 82: OI and JQ Design Rules
30x50_JQ - JQ exact length and width. ≡ 0.36
30x53_JQ - JQ minimum space. ≥ 0.34
30x53b_JQ - JQ minimum space center-to-center; Vias on the same net are exempt. ≥ 0.96
30x57_JQ - JQ must be an orthogonal rectangle. - -
≥ 0.08 JQ must be within (MLAST1x, ILAST8X). (JQ must be within the
metal below).
30x60_JQ -
30x61_JQ - JQ must be within OI (JQ must be within the metal above). ≥ 0.3
- -
[At least 2 JQ vias must connect (MLAST1x, ILAST8x) to OI when
[(MLAST1x, ILAST8x) or OI] width is > 2.0 μm.] The JQ must be
spaced ≤ 2.0 μm center to center.
30x72a_JQ -
- -
[At least 2 JQ within each (MLAST1X, ILAST8X) to OI metal
intersection must be used for a connection that has a JQ ≤ 1.0 μm
30x73a_JQ 1 (d) away from [(MLAST1X, ILAST8X) or OI] metal plate with
width > 2.0 μm (w).] The JQ must be spaced ≤ 2.0 μm center to
center.
30x90_JQ - JQBAR exact width over (IND, GUARDRNG). ≡ 0.396
30x90a_JQ - JQBAR minimum length. ≥ 1.2
30x91_JQ - JQBAR minimum space. ≥ 1.2
30x91a_JQ - JQBAR minimum space to JQ with touching prohibited. ≥ 1.2
30x99_JQ - JQBAR must be within (MOB, IND, GUARDRNG). - -
OI1_or - OI width must meet one of the following rules OI1a and OI1b. - -
OI1a - (OI not touching IND) maximum width. ≤ 25
OI1b - (OI touching IND) maximum width. ≤ 34
OI3 - (OI or OIZFILL) minimum width. ≥ 2
OI4 - (OI or OIZFILL) minimum area (μm2). ≥ 9
OI5 - (OI or OIZFILL) minimum space and notch. ≥ 1
≥ 1.5
[(OI or OIZFILL) with width > 4.5 μm] minimum space and notch,
for run length > 4.5 μm.
OI7 -
OI8a - OIZFILL touching OI is prohibited. ≠ -
OI9 - OI minimum enclosed area (μm2). ≥ 9
OI9a - OIZFILL must be othogonal rectangle. ≡ -
Notes:
1. The via distance to the wide metal plate in all of the "nose metal" via design rules 30x73a_JQ should be measured
around any bend in the "nose metal”. The distance value (d) is measured in DRC by sizing the wide metal which
can result in a final value that is slightly larger than the distance value (d). The metal is sized in steps of 0.024μm
(MLAST1X), 0.199μm (ILAST8X), 0.499μm (OI), so that the sizing doesn't jump over metal gaps, and the step size
is equal to the spacing value from rule: 602 (MLAST1X), 8x02 (ILAST8X), OI5 (OI) divided by 2 minus minimum
grid size. Please see Illustration below.
3.42 LB and VV Design Rules
Table 83: LB and VV Design Rules
≥ 2 LB minimum width (A tolerance of ± 0.01 μm is allowed at 45o
edges).
LB00 -
LB02 - LB minimum space and notch. ≥ 2
LB49 - VV must be an orthogonal rectangle. ≡ -
LB50 - VV length and width must be 2 μm or 3 μm. - -
LB53 - VV minimum space. ≥ 2
VV must be within LM (A tolerance of ± 0.015 μm is allowed at ≥ 0.5
45o edges).
LB70 1
VV must be within LB (A tolerance of ± 0.015 μm is allowed at 45 ≥ 0.5 o
edges).
LB75 -
LB80 - VVLRG minimum width. ≥ 10
LB81 - VVLRG must be within LM. ≥ 0.75
LB82 - VVLRG must be within LB. ≥ 0.75
LB83 - VVLRG must be within (DV, LV). ≥ 0
LB84 - Only one VVLRG is permitted within (DV, LV). - -
LB85 - VVLRG minimum space to VV, with touching prohibited. ≥ 2
LB86 2 VVLRG minimum space. ≥ 7
LB90b 3 (VVBAR not over MOB) exact width. ≡ 3.0
LB90a - VVBAR minimum length. ≥ 3.3
LB91 - VVBAR minimum space and notch. ≥ 2
LB91a - VVBAR minimum space to VV with touching prohibited. ≥ 2
LB94 - (VVBAR not over MOB) must be within LM, LB. ≥ 0.75
LB95 - (VVBAR over MOB) must be within LM, LB. ≥ 0.50
Notes:
1. LM is a reference level used to denote the last copper metal level in the selected BEOL metallization option.
2. 10μm space is needed if poly imide is used, not checked by DRC.
3. Tolerance of 0.001 μm is allowed at 45o edges.
3.42.1 Illustrations of LB and VV Design Rules
3.43 Alternative Polarity MoM Capacitor (APMOM) Design Rules
This device is under development. Contact your GLOBALFOUNDRIES technical representative before including it in
your design.
3.43.1 APMOM Device Generation
The Alternative Polarity Mom Capacitor (APMOM) is constructed from metal wire fingers and vias laid out to create
a capacitor. Missing metal levels are prohibited because they affect the capacitance density calculation. Normal wiring
is permitted above the APMOM metal stack.
The APMOM layout must be generated with the P-Cell supplied in the technology design kit. Flattening or modifying
the P-Cell is prohibited. Contact areas inside the P-Cell are specifically marked, and these areas are the only places
where external wires on any wiring level inside APMOM may touch the P-Cell.
3.43.2 APMOM Metal Combinations
APMOM is built in specified combinations of metal levels (see Permitted Combinations of 1x Levels in a APMOM
shapes are permitted; irregular capacitor designs are not supported and are prohibited in the P-Cell.
Table 84: Permitted Combinations of 1x Levels in a APMOM Metal Stack
1x Level Top Level
Options
Top Level M1 M2 M3 M4 M5 M6
1x Level Top Level
Options
Bottom M1 X X Yes Yes Yes Yes
Level
M2 X X X Yes Yes Yes
M3 X X X X Yes Yes
M4 X X X X X Yes
M5 X X X X X X
M6 X X X X x X
3.43.3 APMOM Dimensions
The internal dimensions of the APMOM fingers are shown in the following illustration for reference.
3.43.4 Required APMOM Marking Layers
APMOM requires several marking layers. All the marking layers are drawn in the P-Cell, and are illustrated in the
following figures to help provide an understanding of the design rules and the correct wiring to the P-Cell.
VNCAP_Mx is the marking layer over the device fingers. This layer is used for design rule checking (DRC) purposes.
VNCAPHV is a marking layer over the entire device, including the Mx_finger and Mx_strap_APMOM. This layer is
used to identify the device for layout versus schematic (LVS) checking and DRC purposes.
3.43.5 Using VNCAP_PARM and VNCAP_COUNT
The number of VNCAP_PARM shapes determines the metal level on which the capacitor starts, as shown in the following
table.
Table 85: APMOM Starting Level According to VNCAP_PARM
Number of VNCAP_PARM Shapes Capacitor Starting Level
1 M1
2 M2
3 M3
4 M4
The number of VNCAP_COUNT shapes equals the number of metal levels in the capacitor. For example,
VNCAP_COUNT = 3 indicates the capacitor is comprised of three metal levels.
When combined with the specified metal stack, VNCAP_PARM and VNCAP_COUNT can be used to fully specify the
capacitor. This includes recognition of the required simulation properties:
Metal starting level
botlev
Metal stopping level
toplev
For example, if APMOM contains VNCAP_PARM = 3 shapes and VNCAP_COUNT = 3 shapes, and the metal stack
contains six 1x (thin) metal levels, then the capacitor starts on M3 and contains levels M3, M4 and M5. For this capacitor,
VNCAP_M3, VNCAP_M4 and VNCAP_M5 must be present; any other VNCAP_xx levels are not valid.
The following illustration shows one layout for a APMOM starting on M2 and containing five metal levels. Note that
VNCAP_PARM and VNCAP_COUNT shapes can be placed anywhere within the VNCAPHV level.
3.43.6 APMOM Design Rules
Table 86: APMOM Design Rules
≡ 0.05
{[Mx_finger touching VNCAPHV] not touching (APMOM77 or
APMOM11)} width, where x = 1-6.
APMOM1 -
≡ 0.07
{[Mx_finger touching VNCAPHV] touching APMOM77} width,
where x = 1-6.
APMOM1a -
≡ 0.11
{[Mx_finger touching VNCAPHV] touching APMOM11} width,
where x = 1-6.
APMOM1b -
APMOM2c - (APMOM11 touching APMOM77) is prohibited. ≠ -
≡ 0.05
{[Mx_finger touching VNCAPHV] not touching (APMOM77 or
APMOM11)} exact space, where x = 1-6.
APMOM3 -
≡ 0.07
{[Mx_finger touching VNCAPHV] touching APMOM77} exact
space, where x = 1-6.
APMOM3a -
≡ 0.11
{[Mx_finger touching VNCAPHV] touching APMOM11} exact
space, where x = 1-6.
APMOM3b -
≡ 0.2
[Mx_finger touching VNCAPHV] exact space to Mx strap, where
x = 1-6.
APMOM4 -
≡ 0.13
Mx_strap_APMOM exact width in parallel with Mx_finger direction,
where x = 1-6.
APMOM5a -
- -
All Mx_strap_APMOM edges have to be coincident with other
Mx_strap_APMOM edges, where x = 1-6.
APMOM6 -
APMOM6a - Mx strap must be an orthogonal rectangle. - -
- -
Adjacent (interdigitated) Mx_finger must be on different nets, where
x = 1-6.
APMOM7R 1
- -
There must be exactly two nets touching the interdigitated Mx_finger
of the capacitor, where x = 1-6.
APMOM8R 1
- -
(VNCAP_Mx touching VNCAPHV) must be fully populated with
Mx_finger, where x = 1-6.
APMOM9 -
≥ 0.055
[My minimum space and notch (over VNCAPHV)] of the first 1x
(thin) metal wiring level above a capacitor that stops on 1x (thin)
metal, where y = 2-5.
APMOM10 -
- -
VNCAP_Mx must abut exactly two Mx_strap_APMOM, where x
= 1-6.
APMOM11 -
≥ 0.1
{(VNCAPHV touching VNCAP_Mx) not touching [(APMOM77
or APMOM11) and VNCAP2]} minimum space to [Mx not touching
(VNCAP_Mx touching VNCAPHV)], where Mx = M1- M6.
APMOM12 2
≥ 0.5
{[VNCAPHV touching (VNCAP_Mx and VNCAP2)] not touching
(APMOM77 or APMOM11)} minimum space to [Mx not touching
(VNCAP_Mx touching VNCAPHV)], where Mx = M1- M6.
APMOM12a -
≥ 0.14
[(VNCAPHV touching VNCAP_Mx) touching APMOM77]
minimum space to [Mx not touching (VNCAP_Mx touching
VNCAPHV)], where Mx = M1- M6.
APMOM12b -
≥ 0.22
[(VNCAPHV touching VNCAP_Mx) touching APMOM11]
minimum space to [Mx not touching (VNCAP_Mx touching
VNCAPHV)], where Mx = M1- M6.
APMOM12c -
- -
(Mx not over VNCAPHV) touching (Mx_finger inside VNCAPHV)
is prohibited, where x = 1-6.
APMOM13 7
- -
When used for a capacitor, (Mx touching VNCAPHV) must be
within VNCAPHV, where x = 1-6.
APMOM14 3
- -
Only one VNCAP_Mx (x = 1-6) is permitted within VNCAPHV for
each Mx.
APMOM15 -
APMOM16 - VNCAP_Mx must not straddle VNCAPHV, where x = 1-6. - -
≡ 0
VNCAP_Mx must be within VNCAPHV in width direction, where
x = 1-6.
APMOM16a 4
≡ 0.13
VNCAP_Mx must be within VNCAPHV in length direction, where
x = 1-6.
APMOM16b 5
- -
(Mx_finger over VNCAPHV) must not be coincident with [M(x
+1)_finger over VNCAPHV], where x = 1-6.
APMOM18 -
APMOM19 - VNCAPHV minimum width. ≥ 3
APMOM20 - VNCAPHV minimum space. ≥ 0.1
APMOM20a - (VNCAPHV touching VNCAP2) minimum space. ≥ 1
≥ 0.14
(VNCAPHV not touching VNCAP2) minimum spacing to
(VNCAPHV touching APMOM77).
APMOM20b -
≥ 0.22
(VNCAPHV not touching VNCAP2) minimum spacing to
(VNCAPHV touching APMOM11).
APMOM20c -
APMOM21 - VNCAPHV minimum area (μm²). ≥ 9
APMOM22 - VNCAPHV maximum area (mm²). ≤ 0.025
APMOM23 - VNCAPHV must be an orthogonal rectangle. - -
APMOM24 - VNCAPHV must enclose at least one VNCAP_PARM. - -
APMOM25 - VNCAPHV must enclose at least one VNCAP_COUNT. - -
- -
(VNCAPHV enclosing more than six VNCAP_COUNT) is
prohibited.
APMOM26 -
- -
VNCAP_Mx over VNCAPHV is prohibited unless VNCAP_Mx is
defined by VNCAP_PARM and VNCAP_COUNT within
VNCAPHV and the corresponding BEOL stack, where x = 1-6.
APMOM27 -
- -
VNCAP_Mx must be present for every Mx level defined by
VNCAP_PARM and VNCAP_COUNT within VNCAPHV and the
APMOM28 -
corresponding BEOL stack, where x = 1-6. The capacitor metal
levels must be continuous through the device.
APMOM29 6 (VNCAP2 touching VNCAPHV) must exact over VNCAP_Mx. - -
- -
(EFUSE, IND, CELLSNR, SRAM_SA, SRAM_SB, SRAM_SD,
SRAM_SG, SRAM_SH, SRAM_SJ, SRAM_SK, RDSTK_8TLV,
APMOM30 -
AD, ESD_HBM, ESD_CDM, ESDSCR_HBM, ESD_POLYB) must
not touch VNCAPHV
- -
(ELVTN, ELVTP, LVTN, LVTP, HVTN, HVTP, NCAP, PCAP,
BIPOLAR, PRES, DRES, NWRES, DIODE, ED, EFUSE, IND,
APMOM31 - CELLSNR, SRAM_SA, SRAM_SB, SRAM_SD, SRAM_SG,
SRAM_SH, SRAM_SJ, SRAM_SK, RDSTK_8TLV, AD,
ESD_HBM, ESD_CDM, ESDSCR_HBM, ESD_POLYB) must not
touch VNCAP2
APMOM32 - VNCAP2 must touch [(PPLUS over PC), (PPLUS over RX)]. - -
APMOM32a - VNCAP2 minimum within PPLUS (rectangular enclosure). ≥ 0.23
Notes:
1. Designers are strongly encouraged to perform LVS check on APMOMs with connection to the resistors due to
potential "false" errors with DRC check.
2. This rule prevents any wiring other than VNCAPHV connections and jogs in wiring connections within the vicinity
of VNCAP_Mx.
3. This rule is not validated during DRC. GLOBALFOUNDRIES recommends using the VNCAPHV p-cell layouts;
otherwise, the designer is responsible for drawing APMOM, VNCAP_COUNT, VNCAP_Mx and VNCAP_PARM
shapes that correctly represent the desired capacitor, where x = 1-6.
4. VNCAP_Mx width direction is the direction that VNCAP_Mx abut Mx_strap_APMOM and Mx_finger short edges.
5. VNCAP_Mx length direction is the direction that VNCAP_Mx that does not abut Mx_strap_APMOM and Mx_finger
short edges..
6. This rule is applicable for RF APMOM device.
7. A vertex shared by [Mx_finger, Mx_strap_APMOM and (Mx not over VNCAPHV)] is exempted. (See illustration
of Design Rule APMOM13)
3.44 Inductor Design Rules
Inductors can be designed using a variety of metal and via levels. GLOBALFOUNDRIES recommends placing BFMOAT
underneath an inductor for Q factor improvement (Q = quality factor or ratio of inductance divided by frequency).
The recommended inductor design is provided in the technology design kit P-Cell. The P-Cell places the inductor
according to the design rules provided in this section. Designers using an inductor that deviates from the design in the
technology design kit should contact your GLOBALFOUNDRIES technical representative for placement assistance.
Note that designs that deviate from the inductor found in the technology P-Cell are not subject to model accuracy. The
IND marker shape supports two separate inductor P-Cells, symindp and inds.
Regions covered by IND receive reduced density metal fill and no via fill for decreased substrate coupling. RXFILL
and PCFILL shapes are salicided by default. If the salicidation of the RXFILL and PCFILL, or any other RX or PC
shape, is not wanted, use SBLK to block it. For RX and PC shapes used for shielding, salicidation is usually advantageous.
Table 87: Inductor Design Rules
IND00 - [(M1-M6) over IND] minimum width. ≥ 0.396
IND00a - [(IA, IB, JA, JB and OI) over IND] minimum width. ≥ 2.2
IND01a - [(M1-M6) over IND] maximum width. ≤ 5.5
IND01aa - Maximum length of edges of [(M1-M6) not over IND] abutting IND. ≤ 5.5
IND01b - (BA over IND) maximum width. ≤ 12
IND01bb - Maximum length of edges of (BA not over IND) abutting IND. ≤ 7.15
IND01d - [(JA, JB) over IND] maximum width. ≤ 12
≥ 1.98 {[(IA, IB) over IND] with width ≥ 2.2 μm and < 6.17 μm} minimum
space and notch.
IND02 -
≥ 2.75 {[(IA, IB) over IND] with width ≥ 6.17 μm and ≤ 13.2 μm} minimum
space and notch.
IND03 -
IND05a 1 IND maximum width. ≤ 374
IND05b - IND minimum width. ≥ 33
IND06 - IND must be an orthogonal rectangle. ≡ 0
IND09a - (RX over IND) must be within PPLUS. ≥ 0.154
IND09b - [(PC not PC_E2) over IND] must be connected to substrate. ≠ 0
IND11 - IND touching gate is prohibited. ≠ 0
IND50 - (RX over IND) minimum width. ≥ 0.396
IND52 - (RX over IND) minimum space and notch. ≥ 1.1
IND100 - (PC over IND) minimum width. ≥ 0.396
IND101a - (PC over IND) maximum width. ≤ 5.5
IND102 - (PC over IND) minimum space and notch. ≥ 1.1
IND206 - (xxEXCLUD over IND) is prohibited, where xx = all metal levels. ≠ -
IND594 - (VxBAR over IND) must be within Mx, where x = 1-5. ≥ 0.020
IND595 - (VxBAR over IND) must be within Mx+1, where x = 1-5. ≥ 0.020
IND794 2 (YXBAR over IND) must be within MLAST1X. ≥ 0.308
IND798JQ 2 (JQBAR over IND) must be within in IA. ≥ 0.308
IND894 2 (VVBAR over IND) must be within the metal below. ≥ 1.1
IND895 2 (VVBAR over IND) must be within LB. ≥ 1.1
IND898 2 (XABAR over IND) must be within IA. ≥ 0.308
IND899 2 (XABAR over IND) must be within IB. ≥ 0.342
IND998 2 (JQBAR over IND) must be within OI. ≥ 0.400
Notes:
1. [Vertex of (RX, M1, M2, M4, M5, IA, LB)] should not be on top of the IND boundary.
2. A tolerance of ±0.004 μm is applied when checking shapes at 45 degree relative to the x or y axis.
3.45 Fuse Design Rules
This topic describes the eFUSE design rules.
3.45.1 Electrically Programmable Fuse
This topic describes the design rules for the electrically programmable fuse (eFUSE). The eFUSE is constructed on the
PC level and resides in the shallow trench isolation (STI) region.
Table 88: eFUSE Design Rules
EF01 - PCFUSE exact width. ≡ 0.04
EF02 - PCFUSE exact length. ≡ 0.20
EF03 - PCFUSE must be an orthogonal rectangle. - -
EF04 - PCFUSE must be within EFUSE. - -
EF05 - PCFUSE is prohibited over (M1, CAFUSE). - -
- -
[(PC touching PCFUSE) not over PCFUSE] and [(PC touching
FUSEANODE) not over FUSEANODE] has diagonal edge.
EF06 -
EF10 - CAFUSE must touch (PC touching PCFUSE). - -
EF10a - CAFUSE must be within EFUSE. - -
≡ 0.170
FUSE cathode contact (CAFUSE not touching FUSEANODE) exact
width.
EF11a -
≡ 0.070
FUSE cathode contact (CAFUSE not touching FUSEANODE) exact
length.
EF11b -
≡ 0.100
FUSE cathode contact (CAFUSE not touching FUSEANODE) exact
space.
EF11c -
≡ 0.030
FUSE cathode contact (CAFUSE not touching FUSEANODE) exact
space to PCFUSE.
EF11d -
EF12 - CAFUSE must be within M1. - -
- -
EFUSE over (RX, NW, EG, ZG, OP, BFMOAT, BIPOLAR, LVTN,
LVTP, HVTN, HVTP, ELVTN, ELVTP, DIODE, NCAP, PCAP,
EF26 -
ZVT, DRES, PRES, CELLSNR, STD_ROM_GF, VNCAPHV,
MOB, NPLUS, PPLUS) is prohibited.
3.46 DV Passivation Opening Design Rules
Table 89: DV Design Rules
655b - (DV not over MOB) minimum width. ≥ 14
657c - DV minimum space and notch. ≥ 6
658ab 1 (DV not over MOB) must be within GUARDEDG. ≥ 8
Note:
1. The rule is checked at chip level only.
3.47 Flip Chip Design Rules
GLOBALFOUNDRIES offers multiple C4 metallurgies and processes; contact your GLOBALFOUNDRIES technical
representative to determine what type best fits your application.
3.47.1 Mask Sequence and Alignment
The following tables are for reference only; refer to the table Mask Levels, Design Levels, Graphic Design System II
(GDSII) Stream Layers, and Oasis Layers for more exhaustive descriptions.
Table 90: Design Mask Levels
Shape Description
Mask Level1
VV Tapered via for connecting the last copper metal to LB.
LV Opening in the final polyimide passivation; required for C4 terminals and fuses.
LB Aluminum wire level with oxide dielectric; uppermost wiring level stack option. Other wiring level stack options TBD.
Notes:
1. Some design levels are also manipulated during mask data preparation.
Table 91: Nondesign Mask Levels
Mask Level Shape Description
RS Vias in the final oxide/nitride passivation layer.
2NB UBM opening (bump mask) generated from LV.
Notes:
1. Some design levels are also manipulated during mask data preparation.
Table 92: Shape Manipulation Performed before Writing the Mask
Mask Level Design Preparation from Design Levels
LV LV octagons converted to circles: size LV circle by -0.74 mm.
RS Generated from LV: 64-sided polygons.
3.47.2 Bump Option Overview
Designer must choose one interconnect option, Bump Option.
Table 93: Bump options
Interconnect options1 Description Short Description
Bump1 Lead-Free SnAg Bump FC SnAg
Bump2 Round Copper Pillar Bump with PSPI FC CuP R
Bump32 Round Copper Pillar Bump without PSPI -
Bump4 Non-round Copper Pillar Bump with PSPI FC CuP nonR
Notes:
1. A mix of any Bump option together with Wire-bond (except probe pads) is not allowed.
2. Not supported in current design manual revision. Please contact your GLOBALFOUDRIES representative for further
information.
Table 94: Shape Manipulation Performed before Writing the Mask
Mask Level Design Level Design Preparation from Design Levels
LV LV LV octagons converted to circles: size LV circle by -0.74 mm.
RS RS Generated from (LV, DV).
2NB 2NB Generated from (LV, LVDUMMY). 2NB octagons are converted to circles.
LV1,2 LV_ROUND LV _ROUND regular octagons converted to 64-sided polygons.
2NB1,2 2NB_ROUND 2NB_ROUND regular octagons converted to 64-sided polygons.
Notes:
1. A regular octagon is a 8-sided polygon with same width of opposing sides.
2. LV _ROUND and 2NB _ROUND 64-sided polygons are LV _ROUND and 2NB _ROUND octagon inscribed
64-sided polygons.
3.47.3 Lead-Free SnAg Bump
The C4 structure is a solder ball over a transition metallurgy pad. This section describes the design rules required for
dummy C4 terminals are used.
An active C4 terminal makes contact with the final copper metal level (ILAST8X) through the LV via, the LB transfer
pad and wiring level, and the VV via in the final passivation layer (polyimide, nitride/oxide, AlCu, or oxide). This
structure is shown in the following illustration.
The guidelines below must be followed when designing a C4 pattern:
1. The outer row of pads must be asymmetrical on all four sides of the chip.
2. The asymmetrical pad design is required within 2.34 mm of the true chip center for all chips larger than 10 mm on
a side in one or both dimensions. The preferred pattern of asymmetry is three adjacent depopulated C4 sites surrounded
by an area of fully populated sites. The three depopulated sites should not be in the same row or the same column.
3. For standard C4 “flip-chip” packages, the LV terminal to GUARDEDG distance must be less than or equal to 500
μm on at least three sides of the chip for some C4s. Use dummy C4 pads to achieve this requirement.
4. The outer row of pads should be approximately the same distance from the edge of the chip on all sides.
5. Circular patterns of C4 pads are prohibited.
6. The C4 structure is prohibited outside of GUARDEDG.
7. C4 terminals connected to the last wiring must not float. The metal must be connected to RX and satisfy the ESD
8. All designs with more than 5000 tested pins must obtain approval from GLOBALFOUNDRIES Test Probe Engineering
before design submission.
In addition, the following guidelines are recommended:
1. Unpopulated or sparse C4 patterns should be avoided. Use dummy C4 pads to make the C4 pattern more uniform.
Wherever possible, do not have an unpopulated area larger than 3 mm in any direction on the wafer’s surface.
2. For designers who plan to characterize their designs before C4 processing by probing last metal pads, the following
recommendation should be observed to prevent probe damage to adjacent wiring: LB pad to LB wiring should be
greater than 60 μm.
Note: The C4 terminal design must be reviewed with packaging and test groups. C4 terminal designs with on-chip
pitches of less than 230 μm must be reviewed with GLOBALFOUNDRIES Probe Engineering. Deviations from
these guidelines or from the design rules in the following table must be approved by GLOBALFOUNDRIES
Terminal Metals Engineering. Contact your GLOBALFOUNDRIES technical representative to obtain the necessary
reviews and approvals.
3.47.3.1 Lead-Free SnAg Bump Design Rules
In the rules below, the maximum number of C4 terminals per chip is 9000; the minimum number of C4 terminals per
chip is 3.
Table 95: Lead-Free SnAg Bump Design Rules
= 52
(LV, LVDUMMY) octagon dimension "D". (A tolerance of ± 0.1
μm is allowed).
910_3on6 1
911_3on6 - (LV, LVDUMMY) center to LV center. ≥ 165
912_3on6 2 (LV not over MOB) minimum within LB. ≥ 14.3
913_3on6 - VV minimum space to LV. ≥ 5
915a_3on6 - LV minimum space to {union [(LV, LVDUMMY) center, C4]}. ≥ 113
917_3on6 3 (LV, LVDUMMY) center to chip product label. ≥ 83
918_3on6 - (LV touching LB) must be tied to RX. - -
Notes:
1. The octagon dimensions required for LV and LVDUMMY shapes are given in following figure. Octagon dimensions
have a 0.10 μm tolerance associated with these shapes.
2. This rule does not apply to LVDUMMY designs.
3. This rule prevents C4 terminals from obscuring the chip identification information. Chip designs containing multiple
occurrences of the part number do not need to comply with Rule 917 at every occurrence.
Octagon Dimension LV Design 3 on 6
D 52
S 21.5
X, Y 15.2
3.47.3.2 LB and LV Pad Design
Table 96: C4 Terminal LB or LV Pad Design Rules
916a_3on6 - (LV center) minimum within GUARDEDG. ≥ 100
≡ -
Wiring from LB landing pad if maximum current specification is ≤
123 mA when C + D + E + F ≥ 75.6 μm.
919_3on6 1
≡ -
Wiring from LB landing pad if maximum current specification is
123-200 mA when C + D + E + F ≥ 122.7 μm.
920_3on6 1
Notes:
1. This rule is not checked by DRC deck.
3.47.3.3 Dummy C4
Dummy C4 terminals are electrically inactive. They are used to provide additional mechanical support or to enable use
of the same C4 masks for multiple part numbers. C4 dummy terminals are designed by using the LVDUMMY dummy
level instead of LV so that there is no VV or LV opening in the nitride passivation, as shown in the following illustration.
LVDUMMY shapes are permitted over LB or VV, but they must adhere to Rules 910, 911, 916 and 917 for proper
placement.
3.47.4 Round Copper Pillar Bump with PSPI
3.47.4.1 Common round Copper Pillar Design Rules
Table 97: Round Copper Pillar Bump with PSPI Common Design Rules
BUMP2.2NB.C.1 - (2NB_ROUND touching LB) must be tied to RX. - -
- -
[(2NB_ROUND not over MOB), (LV_ROUND not over MOB)]
center must be coincident with [(LV_ROUND not over MOB),
(2NB_ROUND not over MOB)] center.
BUMP2.2NB.C.2 1
- -
[(RS_ROUND not over MOB), (LV_ROUND not over MOB)]
center must be coincident with [(LV_ROUND not over MOB),
(RS_ROUND not over MOB)] center.
BUMP2.RS.C.1 1
BUMP2.2NB.C.3 - (VV touching 2NB_ROUND) is not allowed. - -
BUMP2.VV.DEN.1 - VV minimum density (%) over GUARDEDG. ≥ 5.2
BUMP2.2NB.DEN.1 - 2NB_ROUND minimum density (%) over GUARDEDG. ≥ 4
≥ 80 (2NB_ROUND sized by +177.778 μm) minimum density (%) over
GUARDEDG.
BUMP2.2NB.DEN.2 -
≡ 1
Number of [(2NB_ROUND sized by +177.778 μm) sized by
-177.778 μm] polygons over GUARDEDG.
BUMP2.2NB.C.4 -
≥ 55.555
2NB_ROUND minimum space to LOGOBND with touching
prohibited.
BUMP2.2NB.S.LOGOBND.1 -
- -
LV, LV_OBLONG shapes within GUARDEDG are not allowed if
LV_ROUND shapes are present.
BUMP2.LV.C.1 -
BUMP2.2NB.EN.1 - 2NB_ROUND must be within Union (LB, LBDUMMY). ≥ 5.556
Notes:
1. Tolerance of 0.02 μm can be used when checking this rule.
3.47.4.2 Pitch specific round Copper Pillar Design Rules
Table 98: Round Copper Pillar Bump with PSPI Design Rules Overview
Bump Pitch Option 1 Bump Pitch Option 2
Pitch (p)
166.667 ≤ p
Pitch (p)
111.111 ≤ p < 166.667
Description
2NB_ROUND must be within GUARDEDG. ≥ 66.667 ≥ 66.667
≡ 33.333 ≡ 33.333
(LV_ROUND not over MOB) must be a regular octagon
with exact width.
RS_ROUND must be a regular octagon with exact width. ≡ 44.444 ≡ 44.444
≡ 55.556 ≡ 66.667
2NB_ROUND must be a regular octagon with exact
width.
2NB_ROUND minimum center to center space ≥ 111.111 ≥ 166.667
Notes:
1. Rule naming for each minimum bump pitch different: ‘BUMP1Pxxx…..’ with xxx = 100 or 150
Table 99: Round Copper Pillar Rules for 111.111 ≤ p < 166.667
BUMP2P100.2NB.EN.1 - 2NB_ROUND must be within GUARDEDG. ≥ 66.667
≡ 33.333
(LV_ROUND not over MOB) must be a regular octagon with exact
width.
BUMP2P100.LV.C.1 1
BUMP2P100.RS.C.1 1 RS_ROUND must be a regular octagon with exact width. ≡ 44.444
BUMP2P100.2NB.C.1 1 2NB_ROUND must be a regular octagon with exact width. ≡ 55.556
BUMP2P100.2NB.S.1 - 2NB_ROUND minimum center to center distance ≥ 111.111
At least 1 pair of (2NB_ROUND over GUARDEDG) that must be
at center to center space < 166.667 μm.
BUMP2P100.2NB.C.2 -
Notes:
1. Tolerance of 0.02 μm can be used when checking this rule.
Table 100: Round Copper Pillar Rules for 166.667 ≤ p
BUMP2P150.2NB.EN.1 - 2NB_ROUND must be within GUARDEDG. ≥ 66.667
≡ 33.333
(LV_ROUND not over MOB) must be a regular octagon with exact
width.
BUMP2P150.LV.C.1 1
BUMP2P150.RS.C.1 1 RS_ROUND must be a regular octagon with exact width. ≡ 44.444
BUMP2P150.2NB.C.1 1 2NB_ROUND must be a regular octagon with exact width. ≡ 66.667
BUMP2P150.2NB.S.1 - 2NB_ROUND minimum center to center distance ≥ 166.667
Notes:
1. Tolerance of 0.02 μm can be used when checking this rule.
3.47.5 Round Copper Pillar Bump without PSPI
(right) design
Round Copper Pillar Bump without PSPI is not supported by this design manual revision. Please contact your
GLOBALFOUNDRIES representative for further information.
3.47.6 Non-Round Copper Pillar Bump with PSPI
Major_axis is the longer of the two lines about which the shape is symmetrical. It is also the axis that passes the centers
of the two semicircular sections.
3.47.6.1 Common non-round Copper Pillar Design Rules
Table 101: Non-Round Copper Pillar Common Rules
- -
(LV_OBLONG not over MOB) are drawn as (64-sided or 66-sided)
polygons.
BUMP4.LV.C.1 2
BUMP4.RS.C.1 2 RS_OBLONG are drawn as (64-sided or 66-sided) polygons. - -
BUMP4.2NB.C.1 2 2NB_OBLONG are drawn as (64-sided or 66-sided) polygons. - -
BUMP4.2NB.C.2 - VV touching 2NB_OBLONG is not allowed. - -
BUMP4.2NB.C.3 - [2NB_OBLONG touching LB] must be tied to RX. - -
- -
(2NB_OBLONG, RS_OBLONG) center must be coincident with
(RS_OBLONG, 2NB_OBLONG) center.
BUMP4.2NB.C.4 1
- -
RS_OBLONG major_axis must be coincident with 2NB_OBLONG
major_axis.
BUMP4.2NB.C.5 1
- -
(LV_OBLONG not over MOB) major_axis must be coincident with
RS_OBLONG major_axis.
BUMP4.RS.C.2 1
- -
[(RS_OBLONG not over MOB), (LV_OBLONG not over MOB)]
center must be coincident with [(LV_OBLONG not over MOB),
(RS_OBLONG not over MOB)] center.
BUMP4.RS.C.3 1
BUMP4.2NB.S.2 - 2NB_OBLONG minimum space. ≥ 44.444
≥ 55.555
2NB_OBLONG minimum space to LOGOBND with touching
prohibited.
BUMP4.2NB.S.LOGOBND.1 -
BUMP4.2NB.EN.1 - 2NB_OBLONG must be within Union (LB, LBDUMMY). ≥ 5.556
- -
LV, LV_ROUND shapes within GUARDEDG are not allowed if
LV_OBLONG shapes are present.
BUMP4.LV.C.2 -
BUMP4.2NB.DEN.1 4 Minimum 2NB_OBLONG density (%) over GUARDEDG. ≥ 7
≥ 80 (2NB_OBLONG sized by +177.778 μm) minimum density (%) over
GUARDEDG.
BUMP4.2NB.DEN.2 4
≥ 15
Minimum 2NB_OBLONG density(%) inside
2NB_CORNERBOX_OB.
BUMP4.2NB.DEN.3 4,5,8
BUMP4.2NB.DEN.4 4 Minimum 2NB_OBLONG density(%) over 2NB_CORE. ≥ 4
≡ 1
Number of [(2NB_OBLONG sized by +177.778 μm) sized by
-177.778 μm] polygons over GUARDEDG.
BUMP4.2NB.C.13 4
≡ 1
Number of [(2NB_OBLONG sized by +88.889 μm) sized by -88.889
μm] polygons over 2NB_CORNERBOX_OB.
BUMP4.2NB.C.14 4,5,8
- -
2NB_OBLONG touching 2NB_CORNER_3 is not allowed when
it is not electrically connected to another 2NB_OBLONG.
BUMP4.2NB.C.7 3,4,8
- -
(2NB_OBLONG touching 2NB_CORNERBOX_OB) major_axis
must be parallel to (2NB_CORNERBOX_OB diagonal touching
2NB_OBLONG extent outer vertex).
BUMP4.2NB.C.8 3,4,8
- -
[2NB_OBLONG not touching Union (2NB_CORE,
2NB_CORNERBOX_OB)] major_axis must be perpendicular to
closest edge of CHIPEDGE.
BUMP4.2NB.C.9 4,5,6
- -
2NB_OBLONG within (2NB_COREQUAD_1,
2NB_COREQUAD_3) major_axis must be either 0, 45 or 90 degree.
BUMP4.2NB.C.10 4, 7
- -
2NB_OBLONG within (2NB_COREQUAD_2,
2NB_COREQUAD_4) major_axis must be either 0, -45 or 90 degree.
BUMP4.2NB.C.11 4, 7
BUMP4.2NB.C.12 4,5,7 2NB_OBLONG must not straddle 2NB_CORE. - -
Notes:
1. Tolerance of 0.02 μm can be used when checking this rule.
2. Semicircular sections of (LV_OBLONG not over MOB), RS_OBLONG, 2NB_OBLONG are drawn as half of
regular 64-sided polygon.
3. 2NB_CORNER_3 = Isosceles right triangle with outer vertex of 2NB_EXTENT, where two equal sides of this
triangle are of length 100 μm and are coincident with the two edges touching the vertex.
4. The rule is checked at chip level only.
5. 2NB_CORNERBOX_OB = Squares with one vertex at the outer vertex of 2NB_EXTENT and with two sides (300
μm per side) coincident with the edges of 2NB_EXTENT.
6. 2NB_CORE = 2NB_EXTENT sized by -300 μm.
7. 2NB_COREQUAD_y = 2NB_CORE divided into four quadrants around the center of the chip where y=1-4.
8. 2NB_EXTENT = Least enclosing rectangle of all 2NB.
3.47.6.2 Pitch specific non-round Copper Pillar Design Rules
Table 102: Non-Round Copper Pillar Bump with PSPI Design Rule Overview
Bump Pitch Option 1 Bump Pitch Option 2 Bump Pitch Option 3
Pitch (p)
166.67 ≤ p
Pitch (p)
111.111 ≤ p < 166.667
Pitch (p)
88.889 ≤ p < 111.111
Description
2NB_OBLONG minimum center to center distance (pitch). ≥ 88.889 ≥ 111.111 ≥ 166.667
2NB_OBLONG must be within GUARDEDG. ≥ 61.111 ≥ 63.889 ≥ 66.667
2NB_OBLONG exact width. ≡ 44.444 ≡ 50.000 ≡ 55.556
RS_OBLONG exact width. ≡ 33.332 ≡ 33.332 ≡ 44.444
(LV_OBLONG not over MOB) exact width. ≡ 22.222 ≡ 22.222 ≡ 33.332
≡ 22.222 ≡ 25.000 - -
Radius of the semicircular section of 2NB_OBLONG with exact
distance of 33.333μm between centers of the semicircular sections
over 2NB_OBLONG.
- - - - ≡ 27.778
Radius of the semicircular section of 2NB_OBLONG with exact
distance of 44.444μm between centers of the semicircular sections
over 2NB_OBLONG.
≡ 16.666 ≡ 16.666 ≡ 22.222
Radius of the semicircular section of RS_OBLONG with exact
distance of 11.111um between centers of the semicircular sections
over RS_OBLONG.
≡ 11.111 ≡ 11.111 ≡ 16.666
Radius of the semicircular section of (LV_OBLONG not over
MOB) with exact distance of 11.111um between centers of the
semicircular sections over LV_OBLONG.
Table 103: Width, Length and Radius of non-round Copper Pillar Bump structure
Distance between centers
of the semicircular
sections
Radius of Semicircular
Section
Width Length
166.67
≤ p
111.111
≤ p <
166.667
88.889
≤ p <
111.111
166.67 ≤
p
111.111
≤ p <
166.667
88.889
≤ p <
111.111
166.67 ≤
p
111.111
≤ p <
166.667
88.889
≤ p <
111.111
166.67 ≤
p
111.111
≤ p <
166.667
88.889
≤ p <
111.111
33.333 33.333 44.443 11.111 11.111 16.666 11.111 11.111 11.111
LV_OBLONG 22.222 22.222 33.332
44.443 44.443 55.555 16.666 16.666 22.222 11.111 11.111 11.111
RS_OBLONG 33.332 33.332 44.444
77.777 83.333 100.000 22.222 25.000 27.778 33.333 33.333 44.444
2NB_OBLONG 44.444 50.000 55.556
Table 104: Non-Round Copper Pillar Rules for 88.889 ≤ p < 111.111
BUMP4P80.2NB.S.1 - 2NB_OBLONG minimum center to center distance (pitch). ≥ 88.889
BUMP4P80.2NB.EN.1 - 2NB_OBLONG must be within GUARDEDG. ≥ 61.111
BUMP4P80.2NB.W.1 1,2 2NB_OBLONG exact width. ≡ 44.444
BUMP4P80.RS.W.1 1,2 RS_OBLONG exact width. ≡ 33.332
BUMP4P80.LV.W.1 1,2 (LV_OBLONG not over MOB) exact width. ≡ 22.222
≡ 22.222
Radius of the semicircular section of 2NB_OBLONG with exact
distance of 33.333 μm between centers of the semicircular sections
over 2NB_OBLONG.
BUMP4P80.2NB.C.1 1,2,3
≡ 16.666
Radius of the semicircular section of RS_OBLONG with exact
distance of 11.111 μm between centers of the semicircular sections
over RS_OBLONG.
BUMP4P80.RS.C.1 1,2,3
≡ 11.111
Radius of the semicircular section of (LV_OBLONG not over MOB)
with exact distance of 11.111 μm between centers of the semicircular
sections over LV_OBLONG.
BUMP4P80.LV.C.1 1,2,3
At least 1 pair of (2NB_OBLONG over GUARDEDG) that must be
at center to center space < 111.111 μm.
BUMP4P80.2NB.C.2 -
Notes:
1. Tolerance of 0.062 μm can be used when checking this rule.
2. The non-round shapes and dimensions are defined in the Width, Length and Radius of non-round Copper Pillar
3. Semicircular sections of (LV_OBLONG not over MOB), RS_OBLONG, 2NB_OBLONG are drawn as half of
regular 64-sided polygons.
Table 105: Non-Round Copper Pillar Rules for 111.111 ≤ p < 166.667
BUMP4P100.2NB.S.1 - 2NB_OBLONG minimum center to center distance (pitch). ≥ 111.111
BUMP4P100.2NB.EN.1 - 2NB_OBLONG must be within GUARDEDG. ≥ 63.889
BUMP4P100.2NB.W.1 1,2 2NB_OBLONG exact width. ≡ 50.000
BUMP4P100.RS.W.1 1,2 RS_OBLONG exact width. ≡ 33.332
BUMP4P100.LV.W.1 1,2 (LV_OBLONG not over MOB) exact width. ≡ 22.222
≡ 25.000
Radius of the semicircular section of 2NB_OBLONG with exact
distance of 33.333 μm between centers of the semicircular sections
over 2NB_OBLONG.
BUMP4P100.2NB.C.1 1,2,3
≡ 16.666
Radius of the semicircular section of RS_OBLONG with exact
distance of 11.111 μm between centers of the semicircular sections
over RS_OBLONG.
BUMP4P100.RS.C.1 1,2,3
≡ 11.111
Radius of the semicircular section of (LV_OBLONG not over MOB)
with exact distance of 11.111 μm between centers of the semicircular
sections over LV_OBLONG.
BUMP4P100.LV.C.1 1,2,3
At least 1 pair of (2NB_OBLONG over GUARDEDG) that must be
at center to center space (≥ 111.111 μm and < 166.667 μm).
BUMP4P100.2NB.C.2 -
Notes:
1. Tolerance of 0.062 μm can be used when checking this rule.
2. The non-round shapes and dimensions are defined in Width, Length and Radius of non-round Copper Pillar Bump
3. Semicircular sections of (LV_OBLONG not over MOB), RS_OBLONG, 2NB_OBLONG are drawn as half of
regular 64-sided polygons.
Table 106: Non-Round Copper Pillar Rules for 166.667 ≤ p
BUMP4P150.2NB.S.1 - 2NB_OBLONG minimum center to center distance (pitch). ≥ 166.667
BUMP4P150.2NB.EN.1 - 2NB_OBLONG must be within GUARDEDG. ≥ 66.667
BUMP4P150.2NB.W.1 1,2 2NB_OBLONG exact width. ≡ 55.556
BUMP4P150.RS.W.1 1,2 RS_OBLONG exact width. ≡ 44.444
BUMP4P150.LV.W.1 1,2 (LV_OBLONG not over MOB) exact width. ≡ 33.332
≡ 27.778
Radius of the semicircular section of 2NB_OBLONG with exact
distance of 44.444 μm between centers of the semicircular sections
over 2NB_OBLONG.
BUMP4P150.2NB.C.1 1,2,3
≡ 22.222
Radius of the semicircular section of RS_OBLONG with exact
distance of 11.111 μm between centers of the semicircular sections
over RS_OBLONG.
BUMP4P150.RS.C.1 1,2,3
≡ 16.666
Radius of the semicircular section of (LV_OBLONG not over MOB)
with exact distance of 11.111 μm between centers of the semicircular
sections over LV_OBLONG.
BUMP4P150.LV.C.1 1,2,3
Notes:
1. Tolerance of 0.062 μm can be used when checking this rule.
2. The non-round shapes and dimensions are defined in the Width, Length and Radius of non-round Copper Pillar
3. Semicircular sections of (LV_OBLONG not over MOB), RS_OBLONG, 2NB_OBLONG are drawn as half of
regular 64-sided polygons.
3.47.7 Dummy Copper Pillar Bumps
Copper Pillar dummy bumps are electrically inactive. They are used to provide additional mechanical support. Floating
bumps are allowed for bump Option 2 and Option 4.
Dummy bumps are designed by using the LBDUMMY so that there is no VV as shown in following illustration.
LBDUMMY shapes must not be tested for ESD.
Table 107: Floating Copper Pillar Design Rules
LBD.C.1 - VV touching LBDUMMY is prohibited. - -
LBD.C.2 - LBDUMMY must incur (2NB_OBLONG or 2NB_ROUND). - -
LBD.C.3 - LB touching LBDUMMY is prohibited. - -
LBD.S.3 - LBDUMMY minimum space and notch to LB. ≥ 2
LBD.DEN.1 - LBDUMMY within GUARDEDG maximum density (%). ≤ 0.02
- -
LBDUMMY must be within (2NB_ROUND or 2NB_OBLONG
sized by +20 μm)
LBD.W.1 -
3.47.8 Reliability Design Rules
Electromigration is analyzed by dividing interconnect networks into simplified elements: metal lines of a given width,
contacts and vias that serve as interlevel connections to lines, and C4 solder balls that connect the chip to the package.
The designer must follow the electromigration rules for all these design elements. See Reliability Design Guidelines
3.47.8.1 Exceptions
This section describes exceptions to the general rules at 100°C and 100,000 power-on hours (see Reliability Design
C4 terminal pad types are defined as follows:
C4 pad at a higher voltage potential than the chip metallization with electron
current flowing from the chip to the package.
Positive C4 pad(VDD
pad)
C4 pad at a lower voltage potential than the chip metallization with electron
current flowing from the package to the chip.
Negative C4 pad(ground
pad)
Table 108: Design Rules for C4 Terminals at 100°C for Ceramic Packages
Maximum Idc per C4 (mA)
Line Width into C4 Pad
(Design)
Design Size (LV C4 Pad Size Line into C4 Pad
Diameter)
30 μm TBD TBD TBD TBD
If the metal line fed into the C4 pad is less than the width specified in this table, then use Reliability Design Guidelines and Models to determine
the maximum permissible current for the metal line. The upper bound of 200 mA per C4 applies to all C4 terminal pad types (positive, negative,
and signal). For signal pads, the metal line Irms will be the limiter.
Table 109: Idc Adjustment Factors for Temperature and Time
C4 Type Adjustment for Multiplier
Temperature VV/LB (AlCu) (for C4s with electrons flowing
from the C4 to the chip).
Negative C4s
Time VV/LB (AlCu) (for C4s with electrons flowing from the
C4 to the chip).
Temperature (for C4s with electrons flowing from the chip to
the C4).
Positive C4s
Time (for C4s with electrons flowing from the chip to the C4).
3.48 Wire-bond Design rules
This technology supports three types of wire-bond pads for two different LB thicknesses (LB thin and LB thick):
• A basic inline wire-bond pad (One Row)
• A staggered version of the basic wire-bond pad for efficient spacing of a larger number of wire-bond pads (Two
Row)
• A staggered version of the basic wire-bond pad for efficient spacing of a larger number of wire-bond pads (Three
Row)
These three types of wire-bond pads are very similar and share a common set of design rules.
PSPI passivation (DV mask) is optional. DV design layer is required to be drawn as template for RS mask generation.
RS design data is generated 1:1 from DV design data. Both, RS and DV mask generation follow shrink operation
described in section 2.10 Shrink Flow Overview.
Disclaimer:
The wire-bond design rules are a subset of OSAT design rules for Cu wire (18um diameter).The customer must ensure
OSAT wire-bonding manufacturability using the correct pad opening, pad pitch and wire diameter.
3.48.1 Wire-bond Common Design rules
RS passivation opening mask is generated from DV design layer. The following table should be used only when Wire-bond
(WB) FBEOL Interconnect option is selected.
Table 110: Wire-bond Common Design Rules
WB.C.1 - [BIPOLAR, IND] over DV_wire_bond_pad is prohibited. - -
WB.C.2 - [LB touching DV_wire_bond_pad] must be connected to RX. - -
WB.C.3 2, 4 DV_wire_bond_pad must be an orthogonal rectangle. - -
≤ 80 LM maximum density (%) with 20 μm tiling within
DV_wire_bond_pad
WB.DEN.1 -
≤ 80 LM_lower maximum density (%) with 20 μm tiling within
DV_wire_bond_pad.
WB.DEN.2 -
DV_wire_bond_pad incurring [GUARDEDG sized by -275 μm] is - -
prohibited.
WB.C.4 1
WB.DV.EN.1 2, 5 DV_wire_bond_pad must be within GUARDEDG. ≥ 8.8
WB.DV.EN.2 2 DV_wire_bond_pad must be within LB. ≥ 2
≥ 2 [LB over {(DV_wire_bond_pad, DV_probe_pad) sized by + 3 μm}]
minimum space to LB.
WB.LB.S.1 -
≥ 1.9
DV_wire_bond_pad minimum space to (VV,VVBAR) with touching
prohibited.
WB.DV.S.1 -
≥ 111.111
DV_wire_bond_pad center of closest corner pad to
DV_wire_bond_pad center of closest corner pad minimum spacing.
WB.DV.S.2 3
Notes:
1. Maximum value to prevent excessively long bond wires.
2. (DV over MOB) is exempt from this rule check.
3. This rule is not checked in this PDK revision. It is advised to contact either GLOBALFOUNDRIES or OSAT
representative for further information.
4. DV will be sized by -3.5 μm, then by +5 μm, then by -1.5 μm prior to checking this rule.
5. The rule is checked at chip level only.
3.48.2 Inline Wire-bond Design rules
Table 111: Inline Wire-bond Pad Design Rules for thin LB (1.45um)
IWB1.S.1 - DV_wire_bond_pad minimum center to center space. ≥ 50
≥ 44.444
DV_wire_bond_pad minimum length perpendicular to the closest
GUARDEDG edge.
IWB1.W.1 1
≥ 44.444
DV_wire_bond_pad minimum width parallel to the closest
GUARDEDG edge.
IWB1.W.2 1
Notes:
1. DV will be sized by -3.5 μm, then by +5 μm, then by -1.5 μm prior to checking this rule.
Table 112: Inline Wire-bond Pad Design Rules for thick LB (2.8um)
IWB2.S.1 - DV_wire_bond_pad minimum center to center space. ≥ 56.667
≥ 48.889
DV_wire_bond_pad minimum length perpendicular to the closest
GUARDEDG edge.
IWB2.W.1 1
≥ 48.889
DV_wire_bond_pad minimum width parallel to the closest
GUARDEDG edge.
IWB2.W.2 1
Notes:
1. DV will be sized by -3.5 μm, then by +5 μm, then by -1.5 μm prior to checking this rule.
3.48.3 Two Row Wire-bond Design Rules
Table 113:Two Row Wire-bond Pad Design Rules for thin LB (1.45um)
2RWB1.S.1 - DV_wire_bond_pad minimum center to center space. ≥ 50
≥ 44.444
DV_wire_bond_pad minimum length perpendicular to the closest
GUARDEDG edge.
2RWB1.W.1 1
≥ 44.444
DV_wire_bond_pad minimum width parallel to the closest
GUARDEDG edge.
2RWB1.W.2 1
≥ 21.111
DV_wire_bond_pad minimum space and notch; dimension is
perpendicular to the closest GUARDEDG edge.
2RWB1.S.2 1
Notes:
1. DV will be sized by -3.5 μm, then by +5 μm, then by -1.5 μm prior to checking this rule.
Table 114:Two Row Wire-bond Pad Design Rules for thick LB (2.8um)
2RWB2.S.1 - DV_wire_bond_pad minimum center to center space. ≥ 56.667
≥ 48.889
DV_wire_bond_pad minimum length perpendicular to the closest
GUARDEDG edge.
2RWB2.W.1 1
≥ 48.889
DV_wire_bond_pad minimum width parallel to the closest
GUARDEDG edge.
2RWB2.W.2 1
≥ 25.555
DV_wire_bond_pad minimum space and notch; dimension is
perpendicular to the closest GUARDEDG edge.
2RWB2.S.2 1
Notes:
1. DV will be sized by -3.5 μm, then by +5 μm, then by -1.5 μm prior to checking this rule.
3.48.4 Three Row Wire-bond Design Rules
Table 115: Three Row Wire-bond Pad Design Rules for thin LB (1.45um)
3RWB1.S.1 - DV_wire_bond_pad minimum center to center space. ≥ 50
≥ 44.444
DV_wire_bond_pad minimum length perpendicular to the closest
GUARDEDG edge.
3RWB1.W.1 1
≥ 44.444
DV_wire_bond_pad minimum width parallel to the closest
GUARDEDG edge.
3RWB1.W.2 1
≥ 25.555
DV_wire_bond_pad minimum space and notch; dimension is
perpendicular to the closest GUARDEDG edge.
3RWB1.S.2 1
Notes:
1. DV will be sized by -3.5 μm, then by +5 μm, then by -1.5 μm prior to checking this rule.
Table 116: Three Row Wire-bond Pad Design Rules for thick LB (2.8um)
3RWB2.S.1 - DV_wire_bond_pad minimum center to center space. ≥ 56.667
≥ 48.889
DV_wire_bond_pad minimum length perpendicular to the closest
GUARDEDG edge.
3RWB2.W.1 1
≥ 48.889
DV_wire_bond_pad minimum width parallel to the closest
GUARDEDG edge.
3RWB2.W.2 1
≥ 30
DV_wire_bond_pad minimum space and notch; dimension is
perpendicular to the closest GUARDEDG edge.
3RWB2.S.2 1
Notes:
1. DV will be sized by -3.5 μm, then by +5 μm, then by -1.5 μm prior to checking this rule.
3.48.5 Probe Pad Design Rules
Table 117: Probe Pad Design Rules
- -
[(LB touching VV) touching DV_probe_pad] must be connected to
RX.
PROBE.C.1 -
PROBE.C.2 2 DV_probe_pad must be an orthogonal rectangle. - -
PROBE.DV.EN.1 1 DV_probe_pad must be within PROBE. ≥ 0
PROBE.DV.EN.2 - DV_probe_pad must be within GUARDEDG. ≥ 8.8
PROBE.DV.EN.3 - DV_probe_pad must be within LB. ≥ 2
≥ 1.9
DV_probe_pad minimum space to (VV,VVBAR) with touching
prohibited.
PROBE.DV.S.1 -
Notes:
1. Designer is requested to mark probe pads to avoid conflicts in DRC with wire-bond pads.
2. DV will be sized by -3.5 μm, then by +5 μm, then by -1.5 μm prior to checking this rule.
Disclaimer:
The customer must ensure that probe pad opening sizing and pitch are according to used probecard technology capabilities.
3.48.6 Copper Line and Via Support Structures
The primary purpose of the copper line and via support (CLVS) structure is to provide mechanical support to the
wire-bond pad. CLVS structures are optional if there is either an ultralow-k dielectric level or a low-k dielectric level
in the stack (that is, CLVS is optional for all 1x metal levels). CLVS is prohibited in all TEOS/FTEOS dielectric levels.
When using CLVS structures, note the following:
1. All metal levels except the last copper wiring level under the DV_wire_bond_pad can be used for wiring.
2. Stacked vias in the interconnect wiring under the DV opening can be included to meet the minimum CLVS via
requirements.
3. CLVS regions comprise the DV_wire_bond_pad sized by +1.98 μm/edge and adjacent regions marked by the optional
CLVS utility level.
4. Rule 965 constrains shapes on the optional CLVS utility level to be within 3.00 μm of a DV_wire_bond_pad or
between DV_wire_bond_pads less than 50.125 μm apart.
5. Defaults is to not run CLVS rules. If set to YES switch on design rules listed in CLVS table. This is valid for wire
bond only.
See the Glossary of Design Rule Terminology for the definition of “DV_wire_bond_pad” and “DV_probe_pad”.
Table 118: Optional CLVS Design Rules
≡ -
Every 15.0 μm x 15.0 μm region over (DV_wire_bond_pad sized
by 1.98 μm) stepped in 7.5 μm increments over DV must cover at
least 2256 V1RV-V5RV stacked vias.
958a 1, 2
960d - VxRV must be within V(x + 1)RV, where x = 1-4. ≥ 0
≡ -
xxRV should be merged with xx for DRC and LVS checking; all
design rules apply to xxRV, where xx = V1-V5.
960g 3
962a - LB minimum overlap past V1RV-V5RV. ≥ 0.2
≥ 0
(V1RV-V5RV) must be within [(DV_wire_bond_pad sized by +1.98
μm) or CLVS].
965 -
965a - CLVS must touch (DV_wire_bond_pad). ≡ -
965b 1 (DV sized by +1.98 μm) minimum within CLVS. ≥ 0
≥ 0
CLVS must be within (DV sized by +25.06 μm, then sized by -22.06
μm).
965c -
Notes:
1. This rule is not checked over MOB.
2. A stacked via is defined as V1RV exactly coincident with V2RV, which is exactly coincident with V3RV, and so
forth, for all VxRV levels in the build stack. Stacked vias and CLVS structures are only permitted up to the wiring
limits. All stacked vias used for CLVS structures or for wiring must be placed on levels VxRV.
3. This rule is only a note. It is not checked by DRC.
3.48.7 Testing and Packaging Restrictions
For GLOBALFOUNDRIES-tested wire-bond parts, note the following testing and packaging guidelines:
1. The largest possible pad size and opening should be used for manufacturing robustness.
2. Pad designs and the associated test approach must be approved by your GLOBALFOUNDRIES technical
representative.
3. On chips with staggered wire-bond pads:
a. Wafer-level testing is limited to the outer row of pads unless prior arrangements are made with the applicable
test group.
b. Power and ground pads are prohibited on the inner row.
4. Testing is performed at 40-85°C unless prior arrangements are made with the applicable test group.
5. Corner rules:
a. Inline pads. At the four corner areas, the first bond pad must be placed away from the mechanical and thermal
stress-concentrated die edges. Unique patterns must be placed there for eye-point recognition. Starting from the
corners, the first four pitches must be wider than the pitch in the regularly-repeating bond pad center area. See
All pads must be located geometrically or symmetrically toward the direction of the internal leads.
corner pad layout and design dimensions.
6. If inner rows are used for probing, these rows must be 85 μm × 44 μm.
3.49 Chip Guard Ring Design Rules
The chip guard ring provides both a low resistance path to ground for surge currents and a metal seal against ionic
contaminants. GUARDRNG is the marking level that must be drawn over guard ring structures.
3.49.1 Chip Guard Ring Design
In addition to the design rules presented in these topics, the guidelines below must be followed when designing a chip
guard ring:
1. The chip guard ring must be a complete unbroken ring around the entire chip area. The chip guard ring must be
connected to the ground bus.
2. The chip guard ring must contain the following levels: RX, BP, CABAR, M1, V1BAR, and all remaining metal and
VxBAR levels (depending on the selected metallization option) up to the last copper metal (LM). Continuous xxBAR
vias and contacts must be used in the guard ring structure. See the Illustration of Chip Guard Ring Example Cross
3. The guard ring must not have any vertices except for the 45° angles that occur at the corner bevels.
4. The prohibition against 45° xxBAR shapes does not apply to the chip guard ring at the corner bevels. The measured
width of the 45° xxBAR shapes on the corner bevels might not match the specified dimensions exactly due to grid
snapping (± grid × the square root of 2 tolerance). This tolerance also applies to the “within” design rules.
5. The xxBAR length restriction does not apply to the chip guard ring.
6. The chamfer region is required for all chips for process robustness. A chamfer or corner bevel of exactly 125 μm is
required to be cut from each corner of the chip. The chamfer area is triangular and has an area of exactly half of a
77.3 μm × 77.3 μm square. The chip guard ring does not enclose the chamfer area. The chip guard ring has 45° edges
In addition, GLOBALFOUNDRIES recommends the following guideline:
1. The chip guard ring should be comprised of four cells (top, bottom, left, and right) placed on the primary cell. This
structure eases hierarchical data manipulation for design rule checking and design preparation.
3.49.2 Chip Guard Ring and PROTECT Design Rules
Table 119: Chip Guard Ring and PROTECT Design Rules
990a - (CABAR touching GUARDRNG) must be within M1 and RX. ≥ 1.475
≥ 1.565
(VxBAR touching GUARDRNG) must be within Mx, where x =
1-5.
990b 1
≥ 1.565
(VxBAR touching GUARDRNG) must be within M(x+1), where x
= 1-5.
990c 2
990h_L - (WTBAR touching GUARDRNG) must be within MLAST1X. ≥ 1.53
990hYX - (YXBAR touching GUARDRNG) must be within MLAST1X. ≥ 1.42
990jW0_L - (WTBAR touching GUARDRNG) must be within BA. ≥ 1.53
990kYZ_L - (YZBAR touching GUARDRNG) must be within BA. ≥ 1.46
≥ 1.46
(YXBAR touching GUARDRNG) must be within IA, and (YZBAR
touching GUARDRNG) must be within IA (metal above).
990l -
≥ 1.46
(XABAR touching GUARDRNG) must be within IA (XABAR
within metal below).
990n -
≥ 1.46
(XABAR touching GUARDRNG) must be within IB (XABAR
within metal above).
990o -
990p - (JQBAR touching GUARDRNG) must be within OI. ≥ 1.46
≥ 1.46
(JQBAR touching GUARDING) must be within MLAST1x or
ILAST8x.
990q -
991 - (RX over GUARDRNG) must be within PPLUS. ≥ 0.11
(RX, M1-M6, BA, IA, IB, JA, JB, OI) over GUARDRNG within = 0
GUARDEDG (exact value).
999 -
999aa - All design shapes must be within CHIPEDGE. - -
999b - (PPLUS over GUARDRNG) within GUARDEDG (exact value). ≡ -0.121
999c - GUARDRNG must be covered by CABAR sized by 1.727 μm. ≥ 0
999d - (CA, square via shapes, IND) is prohibited touching GUARDRNG. ≠ -
≡ 77.3
GUARDEDG must be chamfered. The horizontal and vertical
components of the chamfer must be exactly.
999g -
≡ 0
The chip guard ring must be a complete, unbroken ring around the
entire chip area and be comprised of the following levels: RX,
999s - PPLUS, CABAR, M1, and V1BAR. If they are present in the data,
levels (M2-M6, V2BAR-V5BAR, WTBAR, BA, YSBAR, YXBAR,
YRBAR, YZBAR, IA, XABAR, IB, JA, XDBAR, JB, JQBAR, OI)
must also be included.
Notes:
1. VxBAR must be within the metal below.
2. VxBAR must be within the metal above.
3.50 Permissible Chip Size Design Rules
Permissible chip (GUARDEDG) sizes are limited to the following:
1. For the minimum productivity kerf, there are two maximum chip sizes:
a. Maximum chip x = 32.00 mm; the maximum y with this chip is 23.98 mm.
b. Maximum chip y = 25.80 mm; the maximum x with this chip is 30.83 mm.
2. The chip size in the x and y directions must be no finer than 0.01 μm.
Table 120: Guard Edge Design Rules
CE002 - GUARDEDG x and y dimensions must be a multiple of 0.01 μm. ≡ -
≥ 1.0
{{RX, PC, PPLUS, NPLUS, CA, [Mx not touching (Mx over
MOB)]} over GUARDEDG} must be within GUARDEDG, where
Mx = M1-M6, BA. This rule apply to Standard Crackstop only.
CE003 1
≥ 1.0
{{RX, PC, (PPLUS sized by -0.3), NPLUS, CA, [Mx not touching
(Mx over MOB)]} over GUARDEDG} must be within GUARDEDG,
where Mx = M1-M6, BA. This rule apply to Narrow Crackstop only.
CE003NC 1
≥ 2.0
(Mx over GUARDEDG) not touching (Mx over MOB) must be
within GUARDEDG, where Mx = IA, IB, JA, JB, OI, LB.
CE004 1
≥ 0.0
{Mx touching [(GUARDEDG sized by 7.5) NOT GUARDEDG]}
must be within (GUARDEDG sized by 7.5), where Mx = M1-M6,
BA, IA, IB, JA, JB, OI. This rule apply to Standard Crackstop only.
CE005 1
≥ 0.0
{Mx touching [(GUARDEDG sized by 2.4) NOT GUARDEDG]}
must be within (GUARDEDG sized by 2.4), where Mx = M1-M6,
BA, IA, IB, JA, JB, OI. This rule apply to Narrow Crackstop only.
CE005NC 1
Notes:
1. A tolerance of 0.05μm is allowed at 45º edges.
3.51 Crack Stop Design
Diced chips must have a crack stop. Dicing often causes cracks to form on the exterior part of the chip due to mechanical
stress. Without a crack stop, these cracks can propagate through the chip causing damage to active areas of the chip.
The preferred crack stop design is provided in the technology design kit P-cell. The P-cell places the crack stop on the
chip according to the following rules. Designers using crack stops that deviate from the design in the technology design
kit should contact their GLOBALFOUNDRIES technical representative for placement assistance.
3.51.1 MOB_GA/MOB_GA_NC and MOB_CS/MOB_CS_NC Definitions
The following figure shows how MOB_GA/MOB_GA_NC and MOB_CS/MOB_CS_NC levels are derived.
The crack stop design rules use derived levels to check design rules in different portions of the crack stop shape. These
derived levels are defined as follows.
Table 121: MOB_GA, MOB_GA_NC, MOB_CS and MOB_CS_NC Definitions
Derived Level Definition
MOB_GA [(Least-enclosing rectangle of CHIPEDGE) sized by -9.8um] minus (GUARDEDG sized up by 18.5um)
MOB_CS [(Least-enclosing rectangle of CHIPEDGE) minus GUARDEDG] minus MOB_GA
MOB_GA_NC [(Least-enclosing rectangle of CHIPEDGE) sized by -9.0μm] minus (GUARDEDG sized up by 13.0μm)
MOB_CS_NC [(Least-enclosing rectangle of CHIPEDGE) minus GUARDEDG] minus MOB_GA_NC
3.51.2 Common Crack Stop (MOB) Design Rules
Table 122: Common Crack Stop (MOB) Design Rules
MOB05 - (CABAR over MOB) must be within RX. ≥ 0
MOB06 - (CABAR over MOB) must be within M1. ≥ 0.014
MOB07 - (VxBAR over MOB) must be within Mx, where x = 1-5. ≥ 0.017
MOB09 - (WTBAR, YXBAR, YSBAR over MOB) must be within MLAST1X. ≥ 0.02
MOB09a_L - (YZBAR over MOB) must be within BA. ≥ 0.02
MOB10a - (JQBAR over MOB) must be within MLAST1x or ILAST8x. ≥ 0.02
(YXBAR, YZBAR, XABAR over MOB) must be coincident with - -
each other.
MOB10b -
MOB11 - For (RX over MOB), minimum width/space = 1.988 μm / 0.300 μm. - -
For (Mx over MOB), minimum width/space is 0.38 μm / 0.30 μm, - -
where x = 1-6.
MOB12 -
MOB12a_L - For (BA over MOB) minimum width/space is 0.38 μm / 0.32 μm. - -
- -
For [(IA, IB) over MOB], minimum width/space is 1.08 μm / 0.771
μm.
MOB14 -
- -
For [(JA, JB) over MOB], minimum width/space is 1.08 μm / 0.92
μm.
MOB14c -
- -
For (WTBAR over MOB), minimum space is 0.395 μm, and the
permitted BAR width is 0.110 μm, with tolerance +/- 0.005 μm.
MOB17a_L -
- -
For (YXBAR, YZBAR, XABAR over MOB), minimum space is
1.244 μm, and the permitted BAR width is 0.396 μm, with tolerance
± 0.01 μm.
MOB19 -
- -
For (JQBAR over MOB), minimum space is 1.244 μm, and the
permitted BAR width is 0.36 μm, with tolerance of ±0.01 μm.
MOB19a -
- -
For (YSBAR, YRBAR, XDBAR over MOB), minimum space is
1.462 μm, and the permitted BAR width is 0.460 μm, with tolerance
± 0.01 μm.
MOB19c -
- -
For (VVBAR over MOB), minimum space is 2.0 μm, and a permitted
width is 3.3 μm with tolerance ± 0.01 μm.
MOB20 1
- -
(CHIPEDGE minus MOB) x and y dimensions must be a multiple
of 0.01 μm.
MOB22 -
- -
MOB touching (CELLSNR, STD_ROM_GF, VNCAPHV) is
prohibited.
MOB23 -
Notes:
1. The width and space errors at chamfer edge of 45° angle area are waived on the rule deck. (see below figure)
3.51.3 Standard Crack Stop (MOB) Design Rules
Table 123: Standard Crack Stop (MOB) Design Rules
MOB01 1 All crack stop design shapes must be within MOB. - -
MOB02 - (PPLUS over MOB) must be within MOB. ≥ 0.499
MOB03 - (RX over MOB) must be within MOB. ≥ 0.5
≥ 0.5 [(M1 over MOB) not touching (M1 over GUARDEDG)] must be
within MOB.
MOB04 -
≡ 0
[V(x+1)BAR over MOB_CS] must be coincident with [VxBAR
over MOB_CS], where x = 1-5.
MOB08 -
≥ 2.8
For [(((BA over MOB) sized by 0.35) sized by -0.35) with run length
> 2μm] minimum width.
MOB12b_L -
- -
For [(((BA over MOB) sized by 0.35) sized by -0.35) with run length
> 100μm] minimum width/space is 6.498 μm / 1.698 μm.
MOB12c_L -
MOB14a 3 For (OI over MOB_CS), minimum width/space is 3.00μm / 1.0μm. - -
MOB15 3, 4 For (LB over MOB), minimum width/space is 4.28 μm / 2.0 μm. - -
- -
For (CABAR over MOB), minimum space is 1.347 μm, and the
permitted line width is 0.253 μm, with tolerance ± 0.005 μm.
MOB16 2
- -
For (VxBAR over MOB_CS), minimum space is 0.242μm, and the
permitted width is 0.055μm, with tolerance +/- 0.005μm, where x
= 1-4.
MOB17 -
≡ 18.0
[(least enclosed rectangle of CHIPEDGE) not (least enclosed
rectangle of GUARDEDG)] exact width.
MOB21 -
Notes:
1. This rule is not checked by DRC.
2. The width and space errors at chamfer edge of 45° angle area are waived on the rule deck. (see below figure)
3. A tolerance of 0.005um is allowed at 45º edges.
4. ({LB over [MOB not over (MOB sized by -1um)]} touching (LB over GUARDEDG)) can be exempt from this rule
check.
3.51.4 Narrow Crack Stop (MOB) Design Rules
Table 124: Narrow Crack Stop (MOB) Design Rules
NCMOB01 1 All crack stop design shapes except PPLUS must be within MOB. - -
NCMOB02 - ((PPLUS sized by -0.3) over MOB) must be within MOB. ≥ 0.1
NCMOB03 - ((RX sized by -0.1) over MOB) must be within MOB. ≥ 0.1
≥ 0.1
[((M1 sized by -0.1) over MOB) not touching (M1 over
GUARDEDG)] must be within MOB
NCMOB04 -
≡ 0
[V(x+1)BAR over MOB_CS_NC] must be coincident with [VxBAR
over MOB_CS_NC], where x = 1-5.
NCMOB08 -
≥ 0.24
For [(((BA over MOB) sized by 0.35) sized by -0.35) with run length
> 2μm] minimum width.
NCMOB12b_L -
- -
For (OI over MOB_CS_NC), minimum width/space is 2.20μm /
1.0μm.
NCMOB14a 3
NCMOB15 3, 4 For (LB over MOB), minimum width/space is 8.0μm / 2.0μm. - -
- -
For (CABAR over MOB), minimum space is 0.4μm, and the
permitted line width is 0.253μm, with tolerance +/- 0.005μm for
both space and line width.
NCMOB16 2
- -
For (VxBAR over MOB_CS_NC), minimum space is 0.242μm, and
the permitted width is 0.055μm, with tolerance +/- 0.005μm, where
x = 1-4.
NCMOB17 -
≡ 12
[(least enclosed rectangle of CHIPEDGE) not (least enclosed
rectangle of GUARDEDG)] exact width.
NCMOB21 -
≥ 5.8
(xx over GUARDEDG) minimum space to MOB, where xx = RX,
PC, CA, CABAR, M1-M6, V1-V5, V1BAR-V5BAR, WT, WTBAR,
NCMOB24 -
BA, YX, YXBAR YZ, YZBAR, IA, IB, XA, XABAR, YS, YSBAR,
YR, YRBAR, JA, JB, XD, XDBAR, OI, JQ, JQBAR, VV and LB.
Notes:
1. This rule is not checked by DRC.
2. The width and space errors at chamfer edge of 45° angle area are waived on the rule deck. (see below figure)
3. A tolerance of 0.005um is allowed at 45º edges.
4. ({LB over [MOB not over (MOB sized by -1um)]} touching (LB over GUARDEDG)) can be exempt from this rule
check.
3.51.5 Crack Stop (MOB_CS, MOB_CS_NC MOB_GA and MOB_GA_NC) Design Rules
The following rules are checked under MOB_CS.
Table 125: Common Crack Stop MOB_CS Design Rules
≡ 0.5
(LV ring shape over MOB) exact width. For the (LV ring shape over
MOB), the outer edge must be coincident with CHIPEDGE.
MOB_CS_LV 1, 2, 3
≡ 0.5
(DV ring shape over MOB) exact width. For the (DV ring shape
over MOB), the outer edge must be coincident with CHIPEDGE.
MOB_CS_DV 1, 2, 3
- -
For each design level [(RX, PC, CA, M1-M6, BA, IA, IB, JA, JB,
OI and LB) touching MOB] the only primary rules checked are
MOB_4a 4
minimum width, minimum space, minimum area, and minimum
enclosed area.
Notes:
1. This rule is checked only at the chip level.
2. During LV or DV mask generation, the area between chips (frame region) will also be covered by LV or DV. The
region between chips is not checked by DRC.
3. LV ring or DV ring shape must not be present in the RS mask. It is not coded in DRC deck.
4. This is not a stand-alone rule in the DRC ruledeck, the DRC ruledeck makes sure the limited design rules (i.e."primary
rules") are checked if the design level is touching MOB.
The following rules are checked under MOB_GA.
Table 126: Standard Crack Stop MOB_GA Design Rules
≥ 0.2
(xx over MOB_GA) minimum space to MOB_CS, where xx = RX,
PC, CA, CABAR, M1-M6, V1-V5, V1BAR-V5BAR, YX, YXBAR,
MOB_G1 - YZ, YZBAR, IA, IB, XA, XABAR, YS, YSBAR, JA, JB, XD,
XDBAR, JQBAR, OI, VV, VVBAR, WT, WTBAR, BA, YR,
YRBAR, JQ and LB.
- -
[M(x+1) over MOB_GA] ≡ [(Mx over MOB_GA) sized by 0.1 μm
per (Mx_side over MOB_GA)], where Mx = RX, M1-M6, IA, IB,
JA, JB, OI.
MOB_GA_Mx1 1
Notes:
1. Mx_side is defined as Mx with edge length > 4.4 μm.
Table 127: Narrow Crack Stop MOB_GA_NC Design Rules
≥ 0.2
(xx over MOB_GA_NC) minimum space to MOB_CS_NC, where
xx = RX, PC, CA, CABAR, M1-M6, V1-V5, V1BAR-V5BAR, YX,
NCMOB_G1 - YXBAR, YZ, YZBAR, IA, IB, XA, XABAR, YS, YSBAR, JA, JB,
XD, XDBAR, JQBAR, OI, VV, VVBAR, WT, WTBAR, BA, YR,
YRBAR, JQ and LB.
- -
[M(x+1) over MOB_GA_NC] == [(Mx over MOB_GA_NC) sized
by 0.1μm per (Mx_side over MOB_GA_NC)], where Mx = RX,
M1-M6, IA, IB, JA, JB, OI.
NCMOB_GA_Mx1 1
Note:
1. Mx_side is defined as Mx with edge length > 4.4 μm.
Illustrations of rule MOB_CS_LV and MOB_CS_DV
3.52 Mask and Wafer Process Control Drop-in (PCD) Design Rules
GLOBALFOUNDRIES uses three cells to achieve optimal process control capability for CD, mask registration and
on-wafer pattern overlay. Marks called “TCDMRK_FH and TCDMRK_FV” are used in FEOL which consist of RX,
PC, PC_E2, NW, PPLUS, NPLUS drawn layers; marks called “TCDMRK_FM” is used in BEOL consisting of Mx or
Vx layer only. Thus, PCD marks must be placed in locations where there is no circuit data below and up.
To ensure an optimum distribution of PCD marks, GLOBALFOUNDRIES strongly recommends placing PCD cells
according to the design rules in the following table. If a customer is unable to achieve the specified distribution of PCD
target cells during layout, GLOBALFOUNDRIES Design Services can attempt to add the target cells to the design
according to the rules below.
PCD marks can be placed anywhere in the design hierarchy. Again, the PCD marks are "stacked" marks requiring
reservation of RX, PC, PC_E2, NW, PPLUS, NPLUS, Mx or Vx mask levels. During data preparation, the content of
the each cell is automatically replaced by a swap file containing the optimized PCDs.
OVL marks are requested if a chip design exceeds 9mm along Y-Direction and 9.4mm along X-Direction. Marks called
“GFOVL1” consists of RX, PC, PC_E2, NW, PPLUS, NPLUS, CA in FEOL and M1, M2 and V1 in BEOL. Thus, OVL
marks must be placed in locations where there is no circuit data below and up.
Similar to PCD marks, GLOBALFOUNDRIES strongly recommends placing OVL cells according to the design rules
in the following table. But GLOBALFOUNDRIES Design Services does not add the OVL cells to the design according
to the rules below.
OVL marks can be placed anywhere in the design hierarchy. Again, the OVL marks are "stacked" marks requiring
reservation of RX, PC, PC_E2, NW, PPLUS, NPLUS, CA, M1, M2 and V1 mask levels. During data preparation, the
content of the each cell is automatically replaced by a swap file containing the optimized OVL.
Table 128: PCD Design Rules for PCD Target Cells
- -
Each TCDMRK_FH marker must be comprised of a cell named
TCDDMY_FH*, and prohibited in all other cells.
PCD0a -
- -
Each TCDMRK_FV marker must be comprised of a cell named
TCDDMY_FV*, and prohibited in all other cells.
PCD0b -
- -
Each TCDMRK_FM marker must be comprised of a cell named
TCDDMY_FMall*, and prohibited in all other cells.
PCD0c -
- -
(TCDMRK_FH, TCDMRK_FV) must be orthogonal rectangle with
width and length 3.5 by 9.0.
PCD1 -
- -
TCDMRK_FV must have width in same direction as [gate not over
(EG or ZG or HOR_GATE) length].
PCD1a -
- -
TCDMRK_FH must have width in the perpendicular direction as
[gate not over (EG or ZG or HOR_GATE) length].
PCD1b -
- -
TCDMRK_FM must be orthogonal rectangle with length and width
4.0 by 4.0.
PCD2 -
- -
[Union (TCDMRK_FH, TCDMRK_FV) sized by 1000.0/edge]
should cover entire GUARDEDG.
PCD3 -
- -
(TCDMRK_FM sized by 1000.0/edge) should cover entire
GUARDEDG.
PCD3a -
PCD4 - TCDMRK_FH must not touch TCDMRK_FV. - -
- -
[xx not inside cells (TCDDMY_FH*, TCDDMY_FV*, GFOVL1)]
over [Union (TCDMRK_FH, TCDMRK_FV, INDIEOVL1)] is
PCD6b - prohibited, where xx = RXFILL, PCFILL, RXZFILL, PCZFILL,
RXGFILL, RXGFILLOPC, PCGFILLOPC, CTGFILL, TJGFILL,
CTFILL, CTZFILL, PCGFILL, NWFILL, NWZFILL,
ALL_HIP_EQUALIZER.
- -
[xx not inside cells (TCDDMY_FH*, TCDDMY_FV*, GFOVL1)]
over [Union (TCDMRK_FH, TCDMRK_FV, INDIEOVL1)] is
PCD6c -
prohibited, where xx = CA, CABAR, CAREC, CAREC_E1,
CAREC_E2, CA_E1, CA_E2, CAFUSE.
- -
[xx not inside cells (TCDDMY_FH*, TCDDMY_FV*, GFOVL1)]
over [Union (TCDMRK_FH, TCDMRK_FV, INDIEOVL1) ] is
prohibited, where xx = RXEXCLUD, PCEXCLUD, LOGOBND.
PCD7a -
- -
[xx not inside cells (TCDDMY_FH*, TCDDMY_FV*, GFOVL1)]
over [Union (TCDMRK_FH, TCDMRK_FV, INDIEOVL1) ] is
PCD7b - prohibited, where xx = EG, ZG, LVTN, LVTP, ELVTN, ELVTP,
ZVT, BFMOAT, NCAP, PCAP, OP, NWRES, PRES, DRES,
BIPOLAR, EFUSE, PCFUSE, CELLSNR.
- -
[xx not inside cells TCDDMY_FMall* over TCDMRK_FM] is
prohibited, where xx = CA, CABAR, CAREC, CAREC_E1,
CAREC_E2, CA_E1, CA_E2, CAFUSE.
PCD8a -
- -
[xx not inside cells TCDDMY_FMall* over TCDMRK_FM] is
prohibited, where xx = My, MyFILL, MyZFILL, MyOPCFILL, with
y = 1-6.
PCD8b -
- -
[xx not inside cells TCDDMY_FMall* over TCDMRK_FM] is
prohibited, where xx = Vy, VyLRG, VyBAR, VyFILL, VyZFILL,
VyZFILLLRG, with y = 1-5.
PCD8c -
- -
[xx not inside cells TCDDMY_FMall* over TCDMRK_FM] is
prohibited, where xx = YX, YXBAR, YS, YSBAR, JQ, JQBAR,
YXFILL, YSFILL, JQFILL.
PCD8d -
- -
(TCDMRK_FH, TCDMRK_FV, TCDMRK_FM) over (IND,
LOGOBND, PROTECT) is prohibited.
PCD9 -
PCD10 - TCDMRK_FH over TCDMRK_FV is prohibited. - -
PCD15 - Extent of TCDDMY_FH* must be coinciding with TCDMRK_FH. - -
PCD16 - Extent of TCDDMY_FV* must be coinciding with TCDMRK_FV. - -
- -
Each INDIEOVL1 marker must be comprised of a single cell named
GFOVL1, and prohibited in all other cells.
PCD20 -
≡ 18
INDIEOVL1 exact length and width, with the center of the rectangle
coincident with the exact center of GFOVL1 cell.
PCD21 -
- -
There must be one GFOVL1 cell within 1500 radius from center of
CHIPEDGE, for CHIPEDGE edge > 9000 along Y-Direction and
CHIPEDGE edge > 9400 along X-Direction.
PCD22 1
- -
There must be at least 3 GFOVL1 cells, for CHIPEDGE edge > 9000
along Y-Direction and CHIPEDGE edge > 9400 along X-Direction.
PCD23a 1
- -
There must be at least 7 GFOVL1 cells, for CHIPEDGE edge >
17000 along Y-Direction and CHIPEDGE edge > 14000 along
X-Direction.
PCD23b 1
PCD24 2 INDIEOVL1 minimum space with touching prohibited. ≥ 1500
- -
[xx not inside cell GFOVL1 over INDIEOVL1] is prohibited, where
xx = RX, PC, PC_E2, NW, NPLUS, PPLUS.
PCD25 -
- -
[xx not inside cell GFOVL1 over INDIEOVL1] is prohibited, where
xx = My, MyFILL, MyZFILL, MyOPCFILL, with y = 1-2.
PCD26 -
- -
[xx not inside cell GFOVL1 over INDIEOVL1] is prohibited, where
xx = V1, V1LRG, V1BAR.
PCD27 -
- -
INDIEOLV1 over [Union(TCDMRK_FH, TCDMRK_FV,
TCDMRK_FM)] is prohibited.
PCD28 -
Notes:
1. This rule is checked only at the CHIP level.
2. GFOVL1 cells should be inserted as homogeneous as possible. This is for recommendation only, and not checked
by DRC.
3.53 Product Label Design Rules
Product labels are placed in the chip outside the scribe line area, and contain:
• Chip legal protection notices Copyright symbol and year Company logo Mask work notice
• Chip identification Part number Release version or EC number
• Mask Level Identification Mask level names and versions
3.53.1 General Requirements for Product Labels
1. Place the product labels in one or more corners of the chip, preferably in the lower-left corner.
2. Surround the entire group of product labels with a substrate contact ring. Functional chip structures are prohibited
within this region.
3. Cover the entire product label area with the LOGOBND dummy level to suppress spurious DRC errors. Note that
only product labels are permitted under LOGOBND.
4. Confirm that shapes within the LOGOBND area abide by all line, space, and area rules for the level on which they
are designed.
5. Alphanumeric polygon definitions:
a. Obtain a technology design kit from your GLOBALFOUNDRIES technical representative. The design kit contains
the correct character set.
b. If the GLOBALFOUNDRIES-provided character set is not used, compose characters from polygons that follow
the design rules for line widths, spacings, orthogonal and 45° shapes, enclosed shapes, shape areas, and so forth,
and that meet the expanded spacing rules in the Special LOGOBND Design Rules.
6. Place characters only on the PC and M1 design levels. Characters placed on other levels will not be verified during
DRC.
The following illustration is an example of product label placement within the surrounding substrate contact guard ring
in the lower-left corner of the chip.
3.53.2 Chip Protection Notices
The copyright notice, company logos, and mask work notice (*M*), are legal notices that protect proprietary designs
and certain chip features. All product designs should contain both the company logo and the mask work notice. Product
designs that contain significant designs or have a high copy risk should also include the copyright notice for additional
protection.
Chip protection notices must be placed on the first metal level (M1) only.
An example of a combined mask work and copyright notice is shown below. Note that the font shown has enclosed
shapes that might be below the minimum character size. A design character generator can produce shapes without these
enclosed areas.
3.53.3 Chip Identification
The GLOBALFOUNDRIES-assigned chip part number is required on the PC and M1 levels of each chip. The
GLOBALFOUNDRIES part number is required whether the design is a test site, prototype, or production part.
GLOBALFOUNDRIES part numbers can be obtained from your GLOBALFOUNDRIES technical representative prior
to design submission.
Exceptions to the GLOBALFOUNDRIES part number requirement are as follows:
• Products for which the deliverables are untested wafers do not require a part number.
• If a customer supplies a merged data set that contains several chips or tiles, as in a multiproject wafer (MPW) or an
array of chip variants for design optimization, then the GLOBALFOUNDRIES-assigned part number must only
appear once in the data set. Place the part number in one of the corners of the data set as described in General
chip or tile if GLOBALFOUNDRIES performs the dicing or testing; otherwise, identification by tile and chip is
recommended.
If a product part number is changed for any reason, a waiver is not required. Your GLOBALFOUNDRIES technical
representative must submit an engineering change (EC) number request and maintain a change log for traceability.
Customer part numbers and identifiers can be placed on a chip in addition to the GLOBALFOUNDRIES part number.
3.53.4 Mask Level Identification
Mask level identification is prohibited on all front-end-of-line (FEOL) levels except RX and PC due to the shapes
propagating to derived levels.
3.54 UPSIZE Design Rules
UPSIZE marker shape is not allowed in this technology offering.
Table 129: Upsize Design Rules
NOUPSIZE - UPSIZE is prohibited. - -
Chapter
4
Design for Manufacturability
Topics:
• Design for Manufacturability Rules
• DFM Signoff Criteria for 28LPSe Tapeout Chips
Note: GLOBALFOUNDRIES DFM rules in this chapter are compatible with GLOBALFOUNDRIES DFM MAS deck
and yield enhancement priority, while ISDA DFM rules may not be compatible with GLOBALFOUNDRIES DFM deck
and yield enhancement priority. These rules stated here in this chapter are not checked in the DRC deck but customers
are advised to use MAS deck to perform this check instead.
The design of a chip establishes its vulnerability to defect-induced yield loss. The design optimization guidelines described
in this section were generated following the development and use of critical area analysis tools on a wide variety of designs.
Following these guidelines helps ensure:
• Faster technology and product development because manufacturing sites typically target CA and V1 images at upper
specification limits and metal spacing near lower specification limits to prevent open circuits.
• Improved yields because the resulting designs will be less sensitive to the random manufacturing defects that impact yield.
• More chips that fulfill the specifications sooner.
• Fewer process variations, especially for contacts.
• Fewer parasitics and improved circuit performance.
Design for manufacturability does not always require drastic changes. Every change, even by one grid point, can help. The
following general recommendations will help improve the manufacturability of a design.
• Add a second via whenever it’s possible to make the via redundant. If it is not possible to insert a second via, try to use a
VIABAR instead of a single via.
• Do not compromise on area; use existing empty space.
• Use the recommended rules wherever possible.
• Increase space and width equally wherever possible.
For long, parallel metal or polysilicon lines, use a wider spacing. (A long line is approximately 50 times the minimum design
length.)
The DFM rules listed in Section 4.1 are considered critical, and it is strongly recommended to follow these rules in circuit
design. The Manufacturability Analysis and Scoring (MAS) tool, available from GLOBALFOUNDRIES, can be used to
analyze and grade layout quality based on compliance to DFM rules.
4.1 Design for Manufacturability Rules
Table 130: Design for Manufacturability Rules
Rule Notes Description Operand Value Intent
NFET gate minimum gate width , if one RX ≥ 0.104 Device variability
space in gate width direction ≥ 157nm
10R_GF 1
PFET gate minimum gate width , if one RX ≥ 0.104 Device variability
space in gate width direction ≥ 157nm
11R_GF 1
51R_GF 1 RX minimum area ≥ 0.045 Yield / Critical area
52R_GF 1 RX minimum space for run length > 0 ≥ 0.07 Yield / Critical area
Yield / RXTuck_P
PC inner vertex minimum space to PFET ≥ 0.04
gate.
113paR_GF 1
Yield / RXTuck_N
PC inner vertex minimum space to NFET ≥ 0.04
gate.
113naR_GF 1
Yield / Critical area
Non-redundant CA over RX minimum space ≥ 0.085
to "facing" PC inner vertex.
207bR_GF -
Device variability
712R_GF 1 (PC over OP) minimum resistor length. ≥ 0.8
Device variability
713R_GF 1 (PC over OP) minimum resistor width. ≥ 0.4
Yield / Critical area
501aR_GF 2 Minimum M1 area (μm2). ≥ 0.0196
Yield / Critical area
601aR_GF - Minimum Mx area (μm2), x = 2-5. ≥ 0.0196
Yield / Critical area
For all (RX diffusion or PC) / M1 ≥ 0.009
intersections that have a CA, the total (CA
507R_GF -
sized up by 0.042 um on two opposite sides
and both sized up by 0.005 on other two
sides) to M1 intersect area must sum to
(um2).
Yield / Redundancy
All M1/(RX NOT PC) intersections that have - -
a CA must have ≥ 2 CAs.
507fR_GF -
Yield / Redundancy
All M1/PC intersections that have a CA must - -
have ≥ 2 CAs.
507gR_GF -
Rule Notes Description Operand Value Intent
-
[VxBAR not touching (same Mx to M(x + ≥ 0.08
1) intersection)] minimum space, for run
length > 0, where x = 1-6
553hR_GF -
-
[V(x+1), V(x+1)BAR] minimum space to ≥ 0.020
(Vx,VXBAR) with touching prohibited for
M(x+1) area < 0.0196 μm2, where x=1-5.
555R_GF -
Yield / Redundancy
All M1/M2 intersections that have a V1 must - -
have ≥ 2 V1s or ≥ 1 V1BAR. All M1/M2
574R_GF 5
intersections that have a V1BAR must have
≥ 2 V1s.
Yield / Redundancy
All Mx/M(x+1) intersections that have a Vx - -
must have ≥ 2 Vxs or ≥ 1 VxBAR. All
613R_GF 3
Mx/M(x+1) intersections that have a VxBAR
must have ≥ 2 Vxs, x = 2-5.
-
Non-redundant VxBAR long edge minimum ≥ 0.025
within M(x+1) on at least one side, where x
= 1-5.
670R_GF -
Yield / Critical area
[M(x + 1) with overlap on any of VxBAR ≥ 0.070
sides < 0.004 um] minimum overlap past
(same VxBAR end), where x = 1-5.
671cR_GF 4, 6
Yield / Critical area
M(x+1) minimum overlap past Vx for two ≥ 0.07
opposite sides with two other sides < 0.004
μm, where x = 1-4.
611cR_GF 4, 6
Note:
1. This rule does not apply to shapes touching CELLSNR.
2. This rule does not apply to shapes touching CELLSNR for x = 2 and 3.
3. This rule does not apply over CELLSNR for x = 2.
4. This rule does not apply over CELLSNR for x = 1 and 2.
5. This rule does not apply to intersections with both M1 and M2 touching CELLSNR.
6. These rules apply to only one Vx or VxBAR per Mx and M(x+1) intersection, where x = 1-4.
4.2 DFM Signoff Criteria for 28LPSe Tapeout Chips
In advanced node like 28nm, manufacturing of design needs close interaction with the design as it has a strong relationship
with the ability for the product to achieve yield ramp. As such, DFM has played a significant role to the yield ramping
of the customer products. GLOBALFOUNDRIES enables designers with a comprehensive portfolio of DFM decks
downloadable from GLOBALFOUNDRIES Foundry View. (www.foundryview.com). Please consult the Customer
Support or Field Engineering team for the DFM deck retrieval.
Below table provides the DFM mandatory criterion for tapeout signoff to GLOBALFOUNDRIES. Customers are required
to provide the DFM run reports as part of the proof for fulfillment of meeting the DFM signoff criterion. If customers
do not have the means to run, please approach the Field engineering team GLOBALFOUNDRIES DFM service support.
Table 131: DFM Signoff Criteria For Chip Design
DFM Analysis DFM Fixing
DFM Simulation DFM Requirement Criteria
DRC+ (Lithography Pattern Check) Mandatory All DRC+ hotspots must fix.
Please see specific "MAS signoff criteria for chip"
in following section.
MAS (Manufacturing Analysis Scoring) Mandatory
The DRC+ deck run detects problematic patterns critical to the manufacturing and it is imperative to fix all DRC+
violations. This can be done either at the routing stage within the Place and Route tool or at post-processing stage. DRC+
detection and fixing flow is available for major third party EDA Place and Route tools.
The MAS deck run provides a score to grade designs based on DFM rule compliance For DFM signoff with MAS for
tapeout chips, minimum score criteria in the below table applies.
Table 132: MAS Signoff Criteria For Chips
MAS Required
Threshold Value
DFM Rule Notes Description Value
≥ 0.92
- -
All M1/M2 intersections that have a V1 must have ≥ 2 V1s
or ≥ 1 V1BAR.
574R_GF -
≥ 0.98
- -
All Mx/M(x+1) intersections that have a Vx must have ≥ 2
Vxs or ≥ 1 VxBAR, x=2-4.
613R_GF -
≥ 0.98
0.070
M(x+1) minimum overlap past Vx for two opposite sides with ≥
two other sides < 0.004 μm, where x=1-4.
611cR_GF -
≥ 0.99
0.080
[VxBAR not touching (same Mx to M(x+1) ≥
intersection)] minimum space, for run length > 0, where x =
1-6.
553hR_GF -
≥ 0.99
For all (RX diffusion or PC) / M1 intersections that have a ≥ 0.009
507R_GF - CA, the total (CA sized up by 0.042 μm on two opposite sides
and both sized up by 0.005 μm on other two sides) to M1
intersect area must sum to (μm2).
≥ 0.99
[V(x+1), V(x+1)BAR] minimum space to (Vx, VxBAR) with ≥ 0.02
touching prohibited for M(x+1) area < 0.0196 μm2; where
x=1-5.
555R_GF -
≥ 0.99
0.070
[M(x+1) with overlap on any of VxBAR sides < 0.004 μm] ≥
minimum overlap past (same VxBAR end), where x = 1-5.
671cR_GF -
The compliance of the above signoff will be verified by both the customer and GLOBALFOUNDRIES. During the
GDS submission phase, customer will be expected to provide above DFM run reports along with the GDS. In the event
of customers not been unable to run the DFM analysis, GLOBALFOUNDRIES also provides DFM service at charged
model to enable customer. Please check with GLOBALFOUNDRIES Customer Support or Field Engineering team for
the procedure for DFM service request and the cost.
The targeted effective date of the enforcement of Mandatory DFM signoff requirement will be in 2015. Customers are
advised to check with GLOBALFOUNDRIES Customer Support or Field Engineering team for the exact enforcement
date of the Mandatory DFM signoff requirement.

Chapter
5
Electrical Parameters and Models
Topics:
• Electrical Parameters and Models for Passive Devices (Node 1)
• Electrical Parameters and Models for Passive Devices (Node 2)
• Electrical Parameters and Models for Passive Devices (Common to both Node 1 and Node 2)
5.1 Electrical Parameters and Models for Passive Devices (Node 1)
5.1.1 Vertical Bipolar Transistor
The following table presents the electrical parameters used to characterize vertical PNP and NPN bipolar transistor.
Parameters are given for structures with regular-Vt wells. For applicable design rules, see Bipolar Transistor Design
Rules.
Table 133: Electrical Parameters for the Vertical PNP Bipolar Transistor
Parameter Definition Test Procedure Units Type Tolerance
PNP NPN
Vbe Base-emitter voltage JE = 1 μA/μm2 V 0.751 0.758 ± 0.01
Beta Current gain (Ic/Ib) JE = 1 μA/μm2 - 0.7 4.8 ± 15%
Emitter area Wdrawn - μm2 5 x 5 5 x 5 -
x Ldrawn
Device geometry
Note: Geometries for monitoring are given in pre-shrink & specs are normalized (from silicon) for post-shrink
5.1.2 Resistors
This technology offers all combinations of silicide-blocked resistors - N+/P+ Polysilicon, N+/P+ Diffusion, NW in RX
(in active) and an NW under STI resistor.
Table 134: Electrical Parameters for Resistors (at 25°C)
NW
under STI
OP Resistor
Parameter Definition Units
P+ Poly P+ Diffusion N+ Poly N+ Diffusion NW in RX
Rs Sheet Resistance Ω/sq 725 ± 20% 300 ± 20% 290 ± 30% 130 ± 20% 425 ± 20% 1940 ± 30%
1/DegC -2.515E-04 1.396E-03 -7.50E-05 1.236E-03 1.887E-03 1.890E-03
1st order
Temperature
coefficient
TCR 1
1/V - - - 2.33E-03 1.730E-02 5.050E-02
1st order Voltage
coefficient
VCR
1 0.53 2.29 0.39 0.87 0.5
%1s x
μm
MM Local mismatch
Notes:
1. For inline tracking purposes, two resistors of different lengths are monitored: 10μm × 10μm and 10μm × 30μm in
the case of n-well resistors, and 1μm × 2μm and 1μm × 10μm in the case of OP resistors.
2. Geometries for monitoring are given in pre-shrink & specs are normalized (from silicon) for post-shrink.
3. Local mismatch is calculated as the standard deviation across one wafer of:
where R1 and R2 are 2 adjacent identical resistors
4. Parameters are extracted based on a simplified model so there will be some deviation from the simulation model for
small L/W.
5.1.3 NFET in N-Well Capacitor (NCAP)
Table 135: Electrical Parameters for NFET in N-Well Capacitors
Thin-Oxide NCAP Medium-Oxide NCAP
Parameter Definition Units
1.05V 1.8V
fF/μm2 17.3 ± 15% 12 ± 15% Total accumulation
capacitance
Cmax
C0 Capacitance at 0 V fF/μm2 13 ± 15% 9.25 ± 15%
Cmin Depletion capacitance fF/μm2 4.44 ± 15% 3.9 ± 15%
μm2 1 x 0.25 x 4800 1 x 0.25 x 4800 Wdrawn x Ldrawn x
number of fingers
Device geometry
Notes:
1. Cmax is measured in accumulation at V = 1.05V for the Thin-Oxide, V= 1.8V for the Medium-Oxide.
2. Cmin is measured in depletion at V = -1.05V for the Thin-Oxide, V=-1.8V for the Medium-Oxide.
3. The total measured device capacitance reported here is a function of both area and fringe capacitance terms.
5.1.4 PFET in P-Well Capacitor (PCAP)
Table 136: Electrical Parameters for PFET in P-Well Capacitors
Thin-Oxide NCAP Medium-Oxide NCAP
Parameter Definition Units
-1.05V -1.8V
fF/μm2 16.4 ± 15% 12 ± 15% Total accumulation
capacitance
Cmax
C0 Capacitance at 0 V fF/μm2 12 ± 15% 9.5 ± 15%
Cmin Depletion capacitance fF/μm2 5.5 ± 15% 4.34 ± 15%
μm2 1 x 0.25 x 4800 1 x 0.25 x 4800 Wdrawn x Ldrawn x
number of fingers
Device geometry
Notes:
1. Cmax is measured in accumulation at V = -1.05V for the Thin-Oxide and V= -1.8V for the Medium-Oxide.
2. Cmin is measured in depletion at V = 1.05V for the Thin-Oxide and V= 1.8V for the Medium-Oxide.
3. The total measured device capacitance reported here is a function of both area and fringe capacitance terms.
4. Geometries for monitoring are given in pre-shrink & specs are normalized (from silicon) for post-shrink.
5.1.5 Electrically Programmable Fuse
Table 137: Electrical Parameters for eFUSE device
Units
Value
Parameter Symbol
Minimum Typical Maximum
VFSOURCE 1.65 1.8 1.95 V
Programming supply
voltage
- 1.39 1.5 1.63 V
Programming voltage
on Fuse Anode
IPROG 8.5 14 18.2 mA
Programming transistor
current
Programminmg time TPROG 3.6 4 4.4 μs
RT0 112 140 168 Ω
Intact fuse and contacts
resistance (fuse only,
w/o FET)
RFINAL 3000 - - Ω
programmed eFuse
resistance
Fuse sense current ISENSE - - 1 mA
Fuse sense time TSENSE - - 100 ns
Fuse sense duty cycle - - - 50% -
Fuse sense operations NSENSE - - 1 x 109 -
5.1.6 Alternative Polarity MoM Capacitor (APMOM)
Table 138: Electrical Parameters for Alternative Polarity MoM capacitor
Bottom Metal Top Metal Capacitance Density (fF/μm2) Tolerance
M3 TBD TBD
M1
M4 TBD TBD
M5 5.24 20%
M6 TBD TBD
M4 TBD TBD
M2 M5 TBD TBD
M6 TBD TBD
M5 TBD TBD
M3
M6 TBD TBD
M4 M6 TBD TBD
5.2 Electrical Parameters and Models for Passive Devices (Node 2)
5.2.1 Vertical Bipolar Transistor
The following table presents the electrical parameters used to characterize vertical PNP and NPN bipolar transistor.
Parameters are given for structures with regular-Vt wells. For applicable design rules, see Bipolar Transistor Design
Rules.
Table 139: Electrical Parameters for the Vertical PNP Bipolar Transistor
Parameter Definition Test Procedure Units Type Tolerance
PNP NPN
Vbe Base-emitter voltage JE = 1 μA/μm2 V 0.752 0.758 ± 0.01
Beta Current gain (Ic/Ib) JE = 1 μA/μm2 - 0.7 ± 24% 5.0 ± 15% -
Emitter area Wdrawn - μm2 5 x 5 5 x 5 -
x Ldrawn
Device geometry
Note: Geometries for monitoring are given in pre-shrink & specs are normalized (from silicon) for post-shrink
5.2.2 Resistors
This technology offers all combinations of silicide-blocked resistors - N+/P+ Polysilicon, N+/P+ Diffusion, NW in RX
(in active) and an NW under STI resistor.
Table 140: Electrical Parameters for Resistors (at 25°C)
NW
under STI
OP Resistor
Parameter Definition Units
P+ Poly P+ Diffusion N+ Poly N+ Diffusion NW in RX
Ω/sq 725 ± 20% 330 ± 20% 260 ± 20% 130 ± 20% 450 ± 20% 2030± 20%
Sheet
Resistance
Rs
Ω*μm -3.78E+01 1.09E+01 5.84E+00 1.57E+01 9.89E+00 2.34E+02
End Res.
per side
Rend
μm -3.35E-03 6.25E-03 -1.66E-02 1.01E-03 8.48E-02 -3.20E-01
width
bias
dW
1/DegC -3.15E-04 1.396E-03 -1.02E-04 1.24E-03 1.887E-03 2.00E-03
1st order
Temperature
coefficient
TCR 1
1/DegC2 - - - - 9.53E-06 9.30E-06
2nd order
Temperature
coefficient
TCR 2
1/V - -7.99E-03 - 3.72E-03 5.64E-02 1.66E-02
1st order
Voltage
coefficient
VCR
1.00 0.6119 2.995 0.6616 0.8621 1.066
%1s x
μm
Local
mismatch
MM
Table 141: Electrical Parameters for Resistors (at 25°C) (cont.)
silicided Resistors
Parameter Definition Units
P+ Poly P+ Diffusion N+ Poly N+ Diffusion
Rs Sheet Resistance Ω/sq 27 ± 20% 34 ± 20% 30 ± 20% 33 ± 20%
Rend End Res. per side Ω*μm tbd tbd tbd tbd
dW width bias μm tbd tbd tbd tbd
1/DegC 1.75E-03 1.56E-03 1.25E-03 1.25E-03
1st order
Temperature
coefficient
TCR 1
1/DegC2 - - - -
2nd order
Temperature
coefficient
TCR 2
1/V - - - -
1st order Voltage
coefficient
VCR
MM Local mismatch %1s x μm 0.8285 1.046 0.6601 0.8423
Notes:
1. For inline tracking purposes, two resistors of different lengths are monitored: 10μm × 10μm and 10μm × 30μm in
the case of n-well resistors, and 1μm × 2μm and 1μm × 10μm in the case of OP resistors.
2. Geometries for monitoring are given in pre-shrink & specs are normalized (from silicon) for post-shrink.
3. Local mismatch is calculated as the standard deviation across one wafer of:
where R1 and R2 are 2 adjacent identical resistors.
4. Parameters are extracted based on a simplified model so there will be some deviation from the simulation model for
small L/W.
5.2.3 NFET in N-Well Capacitor (NCAP)
Table 142: Electrical Parameters for NFET in N-Well Capacitors
Thick-Oxide NCAP
Medium-Oxide
NCAP
Thin-Oxide NCAP
Parameter Definition Units
1.05V 1.8V 2.5V
fF/μm2 17.0 ± 15% 11.5 ± 15% 7.4 ± 15% Total accumulation
capacitance
Cmax
C0 Capacitance at 0 V fF/μm2 12.0 ± 15% 8.8 ± 15% 6.2 ± 15%
Cmin Depletion capacitance fF/μm2 4.44 ± 15% 3.4 ± 11% 3.2 ± 15%
μm2 1 x 0.25 x 1200 1 x 0.25 x 1200 1 x 0.25 x 1200 Wdrawn x Ldrawn x
number of fingers
Device geometry
Notes:
1. Cmax is measured in accumulation at V = 1.05V for the Thin-Oxide, V= 1.8V for the Medium-Oxide and V= 2.5V
for the Thick-Oxide.
2. Cmin is measured in depletion at V = -1.05V for the Thin-Oxide, V=-1.8V for the Medium-Oxide and V= 2.5V for
the Thick-Oxide.
3. The total measured device capacitance reported here is a function of both area and fringe capacitance terms.
4. Geometries for monitoring are given in pre-shrink & specs are normalized (from silicon) for post-shrink.
5.2.4 PFET in P-Well Capacitor (PCAP)
Table 143: Electrical Parameters for PFET in P-Well Capacitors
Thin-Oxide NCAP Medium-Oxide NCAP
Parameter Definition Units
1.05V 1.8V
fF/μm2 16.0 ± 15% 12.2 ± 15% Total accumulation
capacitance
Cmax
C0 Capacitance at 0 V fF/μm2 11.0 ± 15% 9.5 ± 15%
Cmin Depletion capacitance fF/μm2 5.0 ± 15% 4.3 ± 15%
μm2 1 x 0.25 x 1200 1 x 0.25 x 1200 Wdrawn x Ldrawn x
number of fingers
Device geometry
Notes:
1. Cmax is measured in accumulation at V = -1.05V for the Thin-Oxide and V= -1.8V for the Medium-Oxide.
2. Cmin is measured in depletion at V = 1.05V for the Thin-Oxide and V= 1.8V for the Medium-Oxide.
3. The total measured device capacitance reported here is a function of both area and fringe capacitance terms.
4. Geometries for monitoring are given in pre-shrink & specs are normalized (from silicon) for post-shrink.
5.2.5 Electrically Programmable Fuse
Table 144: Electrical Parameters for eFUSE device
Units
Value
Parameter Symbol
Minimum Typical Maximum
VFSOURCE 1.65 1.8 1.95 V
Programming supply
voltage
- 1.39 1.5 1.63 V
Programming voltage
on Fuse Anode
IPROG 8.5 14 18.2 mA
Programming transistor
current
Programminmg time TPROG 3.6 4 4.4 μs
RT0 126 160 194 Ω
Intact fuse and contacts
resistance (fuse only,
w/o FET)
RFINAL 3000 - - Ω
programmed eFuse
resistance
Fuse sense current ISENSE - - 1 mA
Fuse sense time TSENSE - - 100 ns
Fuse sense duty cycle - - - 50% -
Fuse sense operations NSENSE - - 1 x 109 -
5.2.6 Alternative Polarity MoM Capacitor (APMOM)
Table 145: Electrical Parameters for Alternative Polarity MoM capacitor (40x40μm2,W/S: 110/110 - 5V)
Tolerance
Capacitance Density
(fF/μm2)
Bottom Metal Top Metal Capacitance (pF)
M3 TBD TBD TBD
M1
M4 TBD TBD TBD
M5 2.28 1.8 20%
M6 2.8 2.2 20%
TBD
M4
M2
M5
Tolerance
Capacitance Density
(fF/μm2)
Bottom Metal Top Metal Capacitance (pF)
M6
M5
M3
M6
M4 M6
Table 146: Electrical Parameters for Alternative Polarity MoM capacitor (40x40μm2, W/S: 70/70 - 3.3V)
Tolerance
Capacitance Density
(fF/μm2)
Bottom Metal Top Metal Capacitance (pF)
M3 TBD TBD TBD
M1
M4 TBD TBD TBD
M5 4 3.1 20%
M6 4.85 3.7 20%
TBD
M4
M2 M5
M6
M5
M3
M6
M4 M6
Table 147: Electrical Parameters for Alternative Polarity MoM capacitor (40x40μm2, W/S: 50/50 - 1.8V)
Tolerance
Capacitance Density
(fF/μm2)
Bottom Metal Top Metal Capacitance (pF)
M3 TBD TBD TBD
M1
M4 TBD TBD TBD
M5 7.25 5.6 20%
M6 8.75 6.8 20%
TBD
M4
M2 M5
M6
M5
M3
M6
M4 M6
5.2.7 Electrical Parameters for EG LDFET Devices
Table 148: Electrical Parameters for EG LDFET Devices
Parameter unit 3.3V EG LDNFET 3.3V EG LDPFET 5.0V EG LDNFET 5.0V EG LDPFET
Channel Length 1 μm 0.4 0.15 0.25 0.15
Gate Drain Overlap 1 μm 0.2 0.2 0.15 0.46
STI Width 1 μm - - 0.2 0.27
TOX_INV nm 3.3 3.5 3.3 3.5
V 1.8 -1.8 1.8 -1.8
Nominal Gate-Source
Voltage
V 1.98 -1.98 1.98 -1.98
Max. Gate-Source
Voltage
V 3.3 -3.3 5.0 -5.0
Nominal
Drain-Source Voltage
V 3.63 -3.63 5.5 -5.5
Max. Drain-Source
Voltage
Idsat (nom) 2 μA/μm 373 -267 495 -198
Idsat (min) 2 μA/μm 333 -294 445 -228
Idsat (max) 2 μA/μm 413 -240 545 -168
Vtlin (nom) V 0.505 -0.465 0.485 -0.465
Vtlin (min) V 0.430 -0.520 0.412 -0.515
Vtlin (max) V 0.580 -0.410 0.558 -0.415
Vtsat (nom) V 0.465 -0.415 0.445 -0.42
Vtsat (min) V 0.400 -0.470 0.390 -0.480
Vtsat (max) V 0.530 -0.360 0.498 -0.360
Idlin (nom) μA/μm 22.2 -11.2 14.0 -5.7
Idlin (min) μA/μm 20.0 -12.4 11.9 -6.4
Idlin (max) μA/μm 24.4 -10.0 16.1 -5.0
RDSon (nom) 2 mΩ*mm2 2.850 4.600 3.100 10.100
RDSon (min) 2 mΩ*mm2 2.565 4.140 2.635 8.585
RDSon (max) 2 mΩ*mm2 3.135 5.060 3.565 11.615
mV 127 150 100 157
Body Effect (VBS =
±1V), nom
mV 105 125 90 137
Body Effect (VBS =
±1V), min
Parameter unit 3.3V EG LDNFET 3.3V EG LDPFET 5.0V EG LDNFET 5.0V EG LDPFET
mV 149 175 110 177
Body Effect (VBS =
±1V), max
Nominal Ioff 2 pA/μm 1.2 5 5 4
LSL Ioff 2 pA/μm 0.12 0.5 0.5 0.4
USL Ioff 2 pA/μm 12 50 50 40
BVDS V 9.8 ± 1 -8.6 ± 1 12.3 ± 1 -11.3 ± 1
Notes:
1. in drawn dimensions.
2. in silicon dimensions
5.3 Electrical Parameters and Models for Passive Devices (Common to both
Node 1 and Node 2)
5.3.1 Wiring Resistance Models
The wiring resistance models are related to contact and via resistance, and sheet resistance and film thickness.
5.3.1.1 Contact and Via Resistance
Table 149: Contact and Via Resistance at 25° C
Maximum TCR (% / °C)
Resistance (Ω /
Via)
Nominal
Resistance (Ω /
Via)
Minimum
Resistance (Ω /
Via)
Via Diameter
(post-shrink) (μm)
Level Via Height (μm)
Single Via
CA on nRX 0.145 0.036 15 90 200 0.23
CA on pRX 0.145 0.036 15 85 200 0.23
CA on nPC 0.095 0.036 15 65 200 0.23
CA on pPC 0.095 0.036 15 65 200 0.23
Vx (x=1-5) [1x] 0.105 0.048 2.4 7 16 0.061
VxBAR 0.105 0.048 x 0.09 1.4 3.5 9 0.068
WT [2x] 0.18 0.09 0.5 3 8 0.074
YX (1x to 8x) 0.60 0.32 0.135 0.26 0.405 0.145
YZ (2x to 8x) 0.60 0.32 0.135 0.26 0.405 0.145
XA (8x) 0.60 0.32 0.135 0.26 0.405 0.145
YS (1x to 10x) 0.75 0.414 0.08 0.22 0.8 0.169
Maximum TCR (% / °C)
Resistance (Ω /
Via)
Nominal
Resistance (Ω /
Via)
Minimum
Resistance (Ω /
Via)
Via Diameter
(post-shrink) (μm)
Level Via Height (μm)
Single Via
YR (2x to 10x) 0.75 0.414 0.08 0.22 0.8 0.169
XD (10x) 0.75 0.414 0.08 0.22 0.8 0.169
JQ (UTM) 0.68 0.32 0.1 0.39 1.0 0.145
VV for wirebond 1.6 2.7 0.005 0.02 0.1 < 0.005
VVfor C4 0.7 2.7 0.005 0.02 0.1 < 0.005
5.3.1.2 Sheet Resistance and Film Thickness
Table 150: Resistance of Minimum Width, Minimum Space Wires at 25°C
Wire Resistance - Tolderance 3 σ TCR (%/°C)
Limit (Ω / μm)
Wire Resistance per
Unit Length (Ω / μm)
Metal Level Metal Width (μm) Metal Height (μm)
Lower Limit Upper Limit
M1 0.048 0.095 10.0 8.0 13.0 0.207
Mx (x = 2-6) 0.050 0.087 10.0 8.0 13.0 0.207
BA 0.09 0.170 2.22 1.85 2.77 0.271
Ix (x = A, B) 0.42 0.82 0.062 0.052 0.073 0.357
Jx (x = A, B) 0.500 1.250 0.0317 0.026 0.040 0.368
OI, 30x 1.9 3.3 0.0028 0.0024 0.00334 0.387
LB (C4) 2.7 2.8 11 mOhm/sq 8.8 mOhm/sq 13.2 mOhm/sq 0.385
LB (wirebond) 2.7 1.45 21 mOhm/sq 16.8 mOhm/sq 25.2 mOhm/sq 0.385
For configurations other than minimum nested lines, the line width on the wafer might be different than in the design
for two reasons:
• Catastrophic optical proximity correction (OPC) at the M1, Mx, and Bx levels (see Catastrophic OPC Guidelines)
• After OPC, wide-line reactive ion etching (RIE) bias at the M1, Mx, and Bx levels (see Accounting for RIE Bias
and Lag)
In addition to these line-width corrections, the line height of wider lines increases due to inverse RIE lag, and the thickness
underneath the line decreases accordingly.
Refer to Calculating Line Resistance for information about calculating resistance following these line-width corrections.
5.3.1.3 Catastrophic OPC Guidelines
Catastrophic OPC is applied on certain line/space configurations that are permitted by the design rules but cannot be
supported in lithography. Catastrophic OPC changes these line/space configurations to enable enough process window
in lithography. The 1x metal levels (M1 and Mx) and 2x metal levels (Bx) are subject to catastrophic OPC.
Note: All dimensions mentioned in this discussion are in nanometers (nm). In this topic, W’Des represents the on
wafer (post shrink) size, where W’Des = 0.9 ×WDes (the design size). Catastrophic OPC operates on line edges.
For example, consider edge 2 in the following figure.
The distance by which edge 2 is moved is indicated by the bias ΔWOPC. A positive value indicates an increase in line
width and a decrease in space. A negative value indicates a decrease in line width and an increase in space. The bias
WOPC depends on the following three parameters:
• Space (s). In this case, the distance between edge 1 and edge 2.
• Post shrink line width (W’Des). In this case, the distance between edge 2 and edge 3.
• Common run length (L) between edge 1 and edge 2 or, in other words, the length of the space.
The following tables give the catastrophic OPC values for 1x metal levels (M1 and Mx) and 2x metal levels (Bx),
respectively.
Table 151: Catastrophic OPC for 1x Metal Levels (M1)
The corrections are from two sides
M1 Litho Retargeting
Design Space
≥
130
45 50 55 60 65 70 75 80 85 90 95 100 105 110 120
Design Width 45 0 0 3 6 8 10 12 14 16 18 21 24 27 30 33 36
50 0 0 2 4 6 8 10 12 14 16 19 22 25 28 31 33
55 0 0 0 2 4 6 8 10 12 14 17 20 23 26 29 30
60 -5 0 0 0 2 4 6 8 10 12 15 18 21 24 26 27
65 -5 0 0 0 0 2 4 6 8 10 13 16 19 22 23 24
70 -5 0 0 0 0 0 2 4 6 8 11 14 17 20 20 21
75 -5 0 0 0 0 0 0 2 4 6 9 11 14 17 17 18
M1 Litho Retargeting
Design Space
80 -5 0 0 0 0 0 0 0 2 4 6 8 11 14 14 15
85 -5 -2 0 0 0 0 0 0 0 1 3 5 8 11 11 12
90 -5 -4 -3 -2 -2 -2 -2 -2 -2 -2 0 2 5 8 8 9
95 -5 -5 -2 -2 -2 -2 -2 -2 -2 0 0 0 2 5 5 6
100 -12 -7 -2 -2 -2 -2 -2 -2 0 0 0 0 0 2 2 3
105 -20 -15 -10 -5 -5 -2 -2 0 0 0 0 0 0 0 0 0
110 -20 -15 -10 -5 -5 -2 0 0 0 0 0 0 0 0 0 0
120 -20 -15 -10 -5 -5 -2 0 0 0 0 0 0 0 0 0 0
130 -20 -15 -10 -5 -5 -2 0 0 0 0 0 0 0 0 0 0
140 -20 -15 -10 -5 -5 -2 0 0 0 0 0 0 0 0 0 0
160 -20 -15 -10 -5 -5 -2 0 0 0 0 0 0 0 0 0 0
180 -20 -15 -10 -5 -5 -2 0 0 0 0 0 0 0 0 0 0
200 -20 -15 -10 -5 -5 -2 0 0 0 0 0 0 0 0 0 0
≥ -27 -22 -17 -12 -7 -2 0 0 0 0 0 0 0 0 0 0
220
Table 152: Catastrophic OPC for 1x Metal Levels (Mx)
The corrections are from two sides
Mx Litho Retargetting
Design Space
≥
130
45 50 55 60 65 70 75 80 85 90 95 100 105 110 120
Design Width 45 0 0 3 6 9 12 15 18 20 21 24 27 30 33 36 40
50 0 0 2 4 7 10 13 16 18 20 22 25 28 30 33 37
55 0 0 0 2 5 8 11 14 16 19 20 23 26 27 30 33
60 -5 0 0 0 2 6 9 12 14 17 18 21 23 24 27 29
65 -5 0 0 0 0 4 7 10 12 15 16 17 20 21 24 25
70 -5 0 0 0 0 2 5 8 10 13 14 17 17 18 21 21
75 -5 0 0 0 0 0 3 6 8 11 12 14 14 15 17 17
80 -5 0 0 0 0 0 2 4 6 9 10 11 11 12 13 13
85 -5 -2 0 0 0 0 0 2 4 7 8 8 8 9 9 9
Mx Litho Retargetting
Design Space
90 -5 -4 0 0 0 0 0 0 2 5 5 5 5 5 5 5
95 -5 -5 -2 0 0 0 0 0 0 2 2 2 2 2 2 2
100 -12 -7 -2 0 0 0 0 0 0 0 0 0 0 0 0 0
105 -20 -15 -10 -5 0 0 0 0 0 0 0 0 0 0 0 0
110 -20 -15 -10 -5 0 0 0 0 0 0 0 0 0 0 0 0
120 -20 -15 -10 -5 0 0 0 0 0 0 0 0 0 0 0 0
130 -20 -15 -10 -5 0 0 0 0 0 0 0 0 0 0 0 0
140 -20 -15 -10 -5 0 0 0 0 0 0 0 0 0 0 0 0
160 -20 -15 -10 -5 0 0 0 0 0 0 0 0 0 0 0 0
180 -20 -15 -10 -5 0 0 0 0 0 0 0 0 0 0 0 0
200 -20 -15 -10 -5 0 0 0 0 0 0 0 0 0 0 0 0
-27 -22 -17 -12 -7 -2 0 0 0 0 0 0 0 0 0 0
≥
220
Table 153: Catastrophic OPC for 2x Metal Levels
The corrections are from one side
2x Edge Width (nm)
Bias
Matrix
W'Des >
268
168 <
W'Des
≤ 268
145 <
W'Des
≤ 168
129 ≤
W'Des
≤ 145
125 ≤
W'Des
< 129
121 ≤
W'Des
< 125
117 ≤
W'Des
< 121
113 ≤
W'Des
< 117
109 ≤
W'Des
< 113
105 ≤
W'Des
< 109
101 ≤
W'Des
< 105
97 ≤
W'Des
< 101
W'Des <
97
Space
(nm)
S < 95 0 0 0 0 0 0 0 0 0 0 -2.5 -5 -6
0 0 0 0 0 0 0 0 0 0 -1.5 -3.5 -4.5
95 ≤ S
< 99
0 0 0 0 0 0 0 0 0 -1 -1.5 -2.5
99 ≤ S
< 103
1 0 0 0 0 0 0 0 0 0 0 0 0
103 ≤
S <
107
2 1 0 0 0 0 0 0 0 0 0 0 0
107 ≤
S <
111
2x Edge Width (nm)
Bias
Matrix
W'Des >
268
168 <
W'Des
≤ 268
145 <
W'Des
≤ 168
129 ≤
W'Des
≤ 145
125 ≤
W'Des
< 129
121 ≤
W'Des
< 125
117 ≤
W'Des
< 121
113 ≤
W'Des
< 117
109 ≤
W'Des
< 113
105 ≤
W'Des
< 109
101 ≤
W'Des
< 105
97 ≤
W'Des
< 101
W'Des <
97
Space
(nm)
3 2 1 0 0 0 0 0 0 0 0 0 0
111 ≤
S <
115
4 3 2 1 0 0 0 0 0 0 0 0 0
115 ≤
S <
119
5 4 3 2 1 0 0 0 0 0 0 0 0
119 ≤
S <
123
6 5 4 3 2 1 0 0 0 0 0 0 0
123 ≤
S <
127
7 6 5 4 3 2 1 0 0 0 0 0 0
127 ≤
S <
131
8 7 6 5 4 3 2 1 0 0 0 0 0
131 ≤
S <
135
9 8 7 6 5 4 3 2 1 0 0 0 0
135 ≤
S <
139
10 9 8 7 6 5 4 3 2 0 0 0 0
139 ≤
S <
143
11 10 9 8 7 6 5 4 2 0 0 0 0
143 ≤
S <
147
12 11 10 9 8 7 6 4 2 0 0 0 0
147 ≤
S <
151
13 12 11 10 9 8 7 4 2 0 0 0 0
151 ≤
S <
155
14 13 12 11 10 9 7 4 2 0 0 0 0
155 ≤
S <
159
2x Edge Width (nm)
Bias
Matrix
W'Des >
268
168 <
W'Des
≤ 268
145 <
W'Des
≤ 168
129 ≤
W'Des
≤ 145
125 ≤
W'Des
< 129
121 ≤
W'Des
< 125
117 ≤
W'Des
< 121
113 ≤
W'Des
< 117
109 ≤
W'Des
< 113
105 ≤
W'Des
< 109
101 ≤
W'Des
< 105
97 ≤
W'Des
< 101
W'Des <
97
Space
(nm)
15 14 13 12 11 9 7 4 2 0 0 0 0
159 ≤
S <
163
15 15 14 13 11 9 7 4 2 0 0 0 0
S ≥
163
There is no catastrophic OPC bias (ΔWOPC = 0) for any other line/space combination.
Note: Catastrophic OPC bias for all edges must be calculated using original design widths and spaces.
5.3.2 Wiring Capacitance Models
5.3.2.1 Quick Look-Up Wiring Capacitances for Nested Wiring Levels (3D Model)
The following table presents wiring capacitances for the various nested wiring levels. These values assume wiring at
minimum dense lines at the same level and with shielding minimum array for all metal layers above and below and not
shielding plates. All parameters are assumed to be nominal. All values in the table are for wafer dimensions.
Table 154: Interlevel Capacitances for Nested Wiring Levels
Ctotal (fF / μm)
Layer
Wiring Level Upper Level Lower Level
M1 M2 PC 0.251
M2 M3 M1 0.205
M4 OI M3 0.206
OI LB M4 0.632
M6 BA M5 0.204
BA IA M3 0.197
IA LB BA 0.321
JA JB Mx 0.355
JB LB JA 0.368
Chapter
6
Reliability Design Guidelines and Models
Topics:
• Reliability Mechanisms and Models for FEOL Devices
• Reliability Mechanisms and Models at Metallization Levels
6.1 Reliability Mechanisms and Models for FEOL Devices
This section details models derived from the 28LPSe process qualification. All models reflect the qualification criteria
for the specific methodology represented.
6.1.1 Hot-carrier Effects
Note: Hot-carrier injection can have a significant impact on circuit performance and functionality. It is imperative
that circuit designers carefully review their designs for hot carrier degradation. Cumulative degradation and process
variation must be taken into account for both burn-in and field operation.
Minimum Leff typically produces the largest hot-carrier shifts but might not be the most sensitive condition for circuit
operation and performance. For example, chips with a longer Leff that just meet time-zero performance targets might
degrade less than minimum Leff chips. With little or no performance margin, these chips are more likely to fail than
chips with a shorter Leff, large degradation, and large time-zero performance margin.
6.1.1.1 Hot-Carrier Mechanism
Hot carriers are holes or electrons that have been accelerated to a high energy by local electric fields, as well as a number
of secondary mechanisms. If such a carrier has kinetic energy in excess of the silicon-insulator barrier height, it might
surmount the barrier and enter the insulator. Once in the insulator, the electron or hole can become trapped. High-energy
carriers can also generate interface states. The accumulation of trapped charges causes shift in the threshold voltage (Vt)
of the device, and the accumulation of interface states can reduce device drain current, degrade subthreshold slope, and
increase device leakage.
Hot carriers are categorized into Conducting Hot Carriers (gate voltage > threshold voltage) and Non-Conducting Hot
Carriers (gate voltage = 0V). Conducting Hot Carriers are further broken into two types, depending on the origin of the
carriers: channel hot carriers (CHCs) and drain-avalanche hot carriers (DAHCs).
The NFET channel conducting hot-carrier effect is dominated by the generation of interface states. Significant degradation
occurs when the gate voltage is above Vt and VDS is high. The PFET channel conducting hot-carrier effect is due to a
mixture of interface state generation and charge trapping, and is more complex than NFET behavior. Significant
degradation occurs due to electron trapping when the gate voltage is between Vt and VDS and interface state generation
and/or hole trapping when VDS is high.
Device degradation is characterized by change in both threshold voltage and device drain current over time. The device
damage is localized near the drain, resulting in asymmetrical post-stress device characteristics.
Care must be taken when operating devices with persistent drain currents. In these cases, VDS must be kept low or the
associated circuits must be designed to tolerate significant degradation.
6.1.1.2 Hot Carrier Device Concerns
The following specific NFET uses must be examined in detail:
• Burn-in conditions
• Bidirectional devices (stressing a device in both directions is more severe than twice the stress time in one direction)
• DC current flow
• Heavily loaded circuits such as off-chip drivers (OCDs) and clock drivers
• Circuits such as OCDs that can experience voltage overshoots or undershoots
• Mixed-voltage interface circuits or any circuit using greater than Vnom +10% for thin-oxide (core) devices or Vnom
+10% V for medium- and thick oxide (IO) devices
• Circuits with long rise and/or fall times such as OCDs
• Circuits where Vt or ID matching is critical
6.1.1.3 Conducting Hot Carriers: N and P Channel Devices
The 28LPSe technology is qualified with the technology reliability HCI specifications shown in Reliability HCl
Table 155: Reliability HCl Qualification Specifications
Stress
Condition
T01%
ΔIdsat/Idsat
(%)
DC Lifetime
(yrs)
Junction
Temperature
(°C)
Lmin (μm)
Device Vnom (V) Vmax (V)
1.05 1.155 0.03 125 0.05 10 VGS = VDS
CORE NFET
(thin oxide,
SG)
1.05 1.155 0.03 125 0.05 10 VGS = VDS
CORE PFET
(thin oxide,
SG)
1.8 1.98 0.15 25 0.2 10 VGS @ Ibmax
IO NFET
(medium oxide,
EG)
1.8 1.98 0.15 125 0.2 10 VGS = VDS
IO PFET
(medium oxide,
EG)
3.3 3.63 0.55 25 0.2 10 VGS @ Ibmax
IO NFET
(thick oxide,
ZG)
3.3 3.63 0.44 125 0.2 10 VGS = VDS
IO PFET
(thick oxide,
ZG)
Degradation Equation for both nFET & pFET CORE (SG) and pFET IO (EG, ZG) devices:
Degradation Equation for nFET IO (EG) devices:
Degradation Equation for nFET IO (ZG) devices:
where:
ΔIdsat/Idsat(0) = relative drain current degradation in % (T0.1)
kwc = worst case factor (T0.1 / T50)
A = pre-factor
L = effective gate length (Ldrawn-ΔL) in μm
m = channel length dependence factor
Vds = drain-source stress voltage (absolute value)
Vgs = gate-source stress voltage (absolute value)
Vdg = drain-gate voltage
p = voltage acceleration factor
Ea = temperature activation energy
C = saturation factor
B = gate voltage dependence
T = temperature in K
k = Boltzmann constant : 8.62e-5 eV/K
t = stress time (in hours)
n = time exponent
The HCI Idsat coefficients for the above model listed in the table below.
Table 156: HCI Idsat Degradation Coefficients
p m n
Ea A B C
kwc Transistor Vnom Vmax
1.05 1.155 1.297 1.817E4 -1.582 0.008 -0.036 -16.860 -1.560 0.407
CORE
NFET
(thin
oxide,
SG)
1.05 1.155 1.254 1.390E4 -3.558 0.020 -0.065 -9.838 -0.444 0.258
CORE
PFET
(thin
oxide,
SG)
1.8 1.98 1.299 4.875E3 -0.286 0.002 0.010 -29.744 -2.537 0.453
IO NFET
(medium
oxide,
EG)
1.8 1.98 1.218 9.642E2 -1.653 0.009 -0.057 -19.222 -2.342 0.300
IO PFET
(medium
oxide,
EG)
3.3 3.63 1.252 7.622E4 -0.250 0.015 0.060 -63.063 -2.809 0.589
IO NFET
(thick
oxide,
ZG)
3.3 3.63 1.242 1.304E4 -0.800 0.005 -0.032 -42.070 -3.091 0.353
IO PFET
(thick
oxide,
ZG)
• The degradation parameters B, C, Ea, p, m, n above are based on Qualification HW stress measurements.
• The pre-factor A is adjusted to match the Qualification Plan with regards to HCI reliability specifications (DM)
• If significant undershoot occurs (that is, VDS increases beyond VDD by more than 50 mV), use the peak VDS instead
of VDD in the equation shown in Degradation Equation.
• Care must be taken when operating devices with persistent drain currents. In these cases, VDS must be kept low or
the associated circuits must be designed to tolerate significant degradation.
6.1.2 Gate Dielectric Integrity
Gate dielectric integrity is mainly driven by random process defects. Therefore, reliability failure rates will depend on
the total gate-oxide area. To reduce the impact of reliability failures caused by these defects, the following rules must
be observed. The more recommended rules one follows, the lower the impact of gate-oxide defects on overall chip
reliability.
6.1.2.1 Technology Vmax for Core and I/O Gate Dielectrics
The 28LPSe CORE gate dielectric is qualified for a maximum use voltage of Vnom+5% = 1.32V for thin oxide, at a
temperature of 125°C, a total oxide area of 10 mm2, a lifetime of 10 years (3.15E+8 seconds), and a 100% duty factor
to a 1000 ppm cumulative failure percentage.
The 28LPSe IO gate dielectric (medium oxide, EG) is qualified for a maximum use voltage of Vnom+10% = 2.3 V at
a temperature of 125°C, a total oxide area of 1 mm2, a lifetime of 10 years (3.15E+8 seconds), and a 100% duty factor
to a 1000 ppm cumulative failure percentage.
The 28LPSe IO gate dielectric (thick oxide, ZG) is qualified for a maximum use voltage of Vnom+10% = 3.63 V at a
temperature of 125°C, a total oxide area of 1 mm2, a lifetime of 10 years (3.15E+8 seconds), and a 100% duty factor to
a 1000 ppm cumulative failure percentage.
Exceeding these maximum conditions can result in severe device degradation and gate-dielectric failure. The maximum
permitted voltages across the gate dielectric are defined by the following equation.
Table 157: 28LPSe Technology Reliability TDDB Qualification Specifications
DC Lifetime (yrs)
Cumulative Failure
Rate (ppm)
Junction Temperature (°C)
Vmax (V) Gate Area (mm2)
Device
1.155 10 125 1000 10
CORE NFET
(thin oxide, SG)
1.155 10 125 1000 10
CORE PFET
(thin oxide, SG)
1.98 1 125 1000 10
IO NFET
(medium oxide,
EG)
1.98 1 125 1000 10
IO PFET
(medium oxide,
EG)
3.63 1 125 1000 10
IO NFET
(thick oxide, ZG)
3.63 1 125 1000 10
IO PFET
(thick oxide, ZG)
where,
tdb = time to break down
t63 = time to failure for the 63rd percentile of the Weibull distribution at reference stress condition
VG = gate voltage
Vref = reference stress voltage
Tref = reference stress temperature,
T = temperature in K
Aref = reference stress area
A = stress area
m = voltage acceleration exponent (POWER LAW)
β = slope of the Weibull distribution
Ea = temperature activation energy
T = temperature in K
k = Boltzmann constant: 8.62e-5 eV/K
F = failure rate
The maximum permitted voltages across the gate dielectric are defined with the following model parameters.
Table 158:TDDB Model Parameters
Ea (eV) Tref (°C)
β
Aref (μm2 )
m
Vref (V) t63 (hrs)
Device Type
125
1.1 0.49
1
2.8 2.21E-4 46
CORE NFET
(thin oxide, SG)
3.2 1.37E-5 38.4 1.4 0.5
CORE PFET
(thin oxide, SG)
3.9 6.5E-5 48.0 1.80 0.50
IO NFET
(medium oxide, EG)
4.6 9.75E-6 42 1.66 0.68
IO PFET
(medium oxide, EG)
6.0 5.5 38 2.2 0.41
IO NFET
(thick oxide, ZG)
7.5 7.96E-3 34 2.45 0.39
IO PFET
(thick oxide, ZG)
• The degradation parameters m, beta, Ea above are based on Qualification HW TDDB stress measurements.
• The pre-factor t63 is adjusted to match the Qualification Plan with regards to the TDDB reliability specification of
10 years lifetime (DM based).
6.1.3 Negative Bias Temperature Instability (NBTI)
MOSFETs are subject to bias temperature instabilities (BTI) - threshold voltage increase or drive current decrease during
operation (inversion mode) at high temperature (below F-N tunneling), NBTI for PMOS. This effect becomes increasingly
prominent as CMOS technology further scales. The mechanism of BTI, is widely believed to be related to diffusion
limited, hole assisted Si-H bond dissociation through electro-chemical reaction that produces donor-type interface states
and positive fixed charges, as well as due to hole-trapping in the gate oxide.
Table 159: 28LPSe Technology Reliability BTI Specifications
Channel Length Lifetime (yrs) T0.1% ΔIdsat (%)
(μm)
Junction
Temperature (°C)
Vmax (V)
Device Vnom (V)
1.05 1.155 125 0.03 5 10
Core PFET
(thin oxide, SG)
1.80 1.98 125 0.15 5 10
IO PFET
(medium oxide, EG)
IO PFET 3.30 3.63 125 0.44 5 10
Channel Length Lifetime (yrs) T0.1% ΔIdsat (%)
(μm)
Junction
Temperature (°C)
Vmax (V)
Device Vnom (V)
(thick oxide, ZG)
Where:
ΔIdsat/Idsat(0) = relative drain current degradation in % (T0.1)
kwc = worst case factor ( T0.1 / T50)
A = pre-factor
L = gate length in μm
b = gate length dependence exponent
Vg = gate stress voltage (absolute value)
a = voltage acceleration (POWER LAW)
Ea = temperature activation energy
W = gate width in μm
d = gate width dependence exponent
T = temperature in K
k = Boltzmann constant: 8.62e-5 eV/K
t = stress time (in hours)
n = time exponent
A, a, b, Ea, d, e, n: model parameters given in the table below.
Table 160: BTI Model Coefficients
d n
Ea A a b
Vnom Vmax kwc
Device
1.05 1.155 1.36 11.92 3.9 0.27 0.09 -0.08 0.138
CORE PFET
(thin oxide, SG)
1.80 1.98 1.18 0.436 4.09 0.24 0.06 -0.19 0.136
IO PFET
(medium oxide, EG)
3.30 3.63 1.43 1.37E-2 4.48 0.24 0.07 -0.08 0.167
IO PFET
(thick oxide, ZG)
• The degradation parameters a, b, d, Ea, n above are based on Qualification HW stress measurements.
• The pre-factor A is adjusted to match Qualification Plan BTI reliability specifications (DM).
6.1.4 P+ Polysilicon OP Resistor Reliability
Resistor Current Limits:
The P+ polysilicon OP resistor instantaneous current is not to exceed 0.5 mA/μm of resistor width. Doing so can
permanently damage the device. Operating the devices at 125°C for 100,000 hrs at the maximum allowed current density
will result in P+ polysilicon OP resistor shift up to 8%.
6.2 Reliability Mechanisms and Models at Metallization Levels
Mechanisms affecting the reliability of designs at the metallization levels include electromigration and corrosion.
6.2.1 Electromigration (EM)
Electromigration refers to the gradual degradation of interconnects due to the combined effects of current and temperature.
The following guidelines provide designers with the information needed to ensure that electro-migration will have a
negligible impact on the reliability of designs.
These guidelines do not address the protection of circuits against extraordinary current and temperature situations, such
as electrostatic discharge or electrical overloads.
6.2.1.1 Design Analysis Strategy
Electromigration is analyzed by dividing interconnect networks into simplified elements: metal lines of a given width,
contacts and vias that serve as interlevel connections to lines, and C4 solder balls that connect the chip to the package.
The designer must make sure that the electromigration guidelines are followed for all design elements.
Designers should include the following activities in their design methodology:
current limits for the circuit application being considered.
• Use the capacitive load of the circuit and the operating frequency to calculate the currents expected in the metal lines
limits. This simple check can be performed for each circuit node capacitance listed in the chip timing simulations.
• Use a circuit simulator (for example, ASX or SPICE) to calculate the currents in the metal interconnects where an
electromigration problem is suspected or where greater accuracy is required. Particular attention should be paid to
the following cases (this is not an exhaustive list):
• Off chip drivers that might have to drive very large loads
• Power buses (check for hot spots where demands for current from several circuits accumulate along the length
of a bus line)
• Any circuit where a dc current is present
Because the electromigration rules are generic, they contain embedded assumptions that might be overly conservative
for particular designs. Thus, in addition to general rule adjustments based on different applications, a limited number of
exceptions that allow marginal violation of the rules is permitted in particular design circumstances. Any exceptions
should be reviewed by your GLOBALFOUNDRIES technical representative.
6.2.1.2 Application Assumptions and Rule Adjustments
The rules as listed are based on an assumed product life of 100,000 power-on hours (POH) and an assumed junction
temperature of 100°C. Adjustment factors for other lifetimes and temperatures are given. When applications are more
stringent, the adjustment factors must be applied. When applications are less stringent, adjustment factors should be
used only when it is absolutely certain that the designs will never be used at more stringent conditions.
6.2.1.3 Equivalent Current Formulas
Current operating frequency (fsw ) 1/ tsw
Equivalent average dc current (Idc )
(For pure ac current, Idc is zero)
Minimum time between successive current switching operations
Operating switching time (tsw )
RMS current (Irms )
Switching factor (s) Fraction of operating cycles over the life of the product during which time a given circuit switches
6.2.1.4 Equivalent DC Average Current Translations into Capacitances
When simple static CMOS circuits are used to charge and discharge capacitances, the following formula links the Idc
limit and the Irms limit to the maximum capacitive load on the circuit output:
For a pure ac current:
Note: The results of these equations are approximate; the designer should assess the need for accurate capacitance
limits before using these equations. For example, these equations do not account for the cross-over current that
flows directly from VDD to ground while the circuit is switching, the difference between gate capacitance and
parasitic capacitance, or circuits with high leakage through keeper devices. If effects such as these add significant
current, then the above equations must be modified accordingly.
6.2.1.5 Electromigration Failure Types and Corresponding Currents
Rules are given to protect against two types of current-induced failures: standard electromigration and local heating
enhanced electromigration. For standard electromigration, the rules define a maximum Idc. For local heating enhanced
electromigration, the rules define a maximum Irms. The values of any calculated Idc or Irms currents in any simplified
elements of an interconnection network must not exceed the values given in the following tables.
Note: The Idc limit should never exceed the Irms limit. If the calculated Idc limit is higher than the listed Irms limit,
use the Irms limit as the maximum current limit.
The metal widths (or W) in the following sections refer to the as-designed width, and not the shrunk, or on-wafer widths.
The parameters and/or values given in the following sections are tentative estimations, significant changes might occur
after the technology qualification.
6.2.1.6 General Rules at 100°C/100,000 POH
The following table provides the maximum permitted Idc and Irms value for each wiring level. Note that an Idc limit is
not stated for PC because standard electromigration should not be a concern for this level.
Table 161: General Idc and Irms Current Limits at 100°C
Ipeak
(mA)
Minimum
W
Irms (mA)
Minimum
W
Idc (mA)
Minimum
W
Idc (mA) Irms (mA) Ipeak (mA)
Minimum W
(μm)
Metal
Level
1.078
– 0.135
0.2536 + 3.32sqrt(WDES) +
8.3224(WDES)
0.0317 + 0.415sqrt(WDES)
– + 1.0403(WDES)
0.03
PC
5.633
0.704
0.021
-1.096 +
20.4976sqrt(WDES) +
42.9096(WDES)
-0.137 + 2.5622sqrt(WDES)
+ 5.3637(WDES)
-0.0281 +
(0.000991/WDES) +
0.587(WDES)
0.05
M1
4.638
0.580
-1.464 +
19.8928sqrt(WDES) +
33.0848(WDES)
-0.183 + 2.4866sqrt(WDES)
+ 4.1356(WDES)
-0.0329 +
(0.00115/WDES) +
0.614(WDES)
M2
4.440
0.555
-1.488 + 19.96sqrt(WDES)
+ 29.304(WDES)
-0.186 + 2.495sqrt(WDES)
M3 + 3.663(WDES)
4.292
0.536
-1.496 +
19.9264sqrt(WDES) +
26.6368(WDES)
-0.187 + 2.4908sqrt(WDES)
M4 + 3.3296(WDES)
4.177
0.522
-1.496 +
19.8648sqrt(WDES) +
24.6136(WDES)
-0.187 + 2.4831sqrt(WDES)
M5 + 3.0767(WDES)
0.510 4.082
-1.496 +
19.8008sqrt(WDES) +
23.0016(WDES)
-0.187 + 2.4751sqrt(WDES)
+ 2.8752(WDES)
M6
10.886
0.088 1.361
-2.48 + 34.0504sqrt(WDES)
+ 25.984(WDES)
-0.31 + 4.2563sqrt(WDES)
+ 3.248(WDES)
-0.0817 +
(0.00454/WDES) +
1.24(WDES)
0.1
BA
1.648 10.599 84.794
4.992 + 92.368sqrt(WDES)
+ 53.4592(WDES)
0.624 + 11.546sqrt(WDES)
-0.392 + + 6.6824(WDES)
5.0993(WDES)
IA 0.4
1.648 9.727 77.812
2.48 + 92.312sqrt(WDES) +
42.3728(WDES)
0.31 + 11.539sqrt(WDES) +
5.2966(WDES)
IB 0.4
Ipeak
(mA)
Minimum
W
Irms (mA)
Minimum
W
Idc (mA)
Minimum
W
Idc (mA) Irms (mA) Ipeak (mA)
Minimum W
(μm)
Metal
Level
3.978 14.418 115.342
5.00408 +
122.376sqrt(WDES) +
47.6104(WDES)
0.62551 +
15.297sqrt(WDES) +
-0.489 + 5.9513(WDES)
8.9324(WDES)
JA 0.5
3.978 13.097 104.773
3.25968 +
115.512sqrt(WDES) +
39.6688(WDES)
0.40746 +
14.439sqrt(WDES) +
4.9586(WDES)
JB 0.5
483.811
42.464 60.476
12.27016 +
212.8112sqrt(WDES) +
85.2904(WDES)
1.53377 +
26.6014sqrt(WDES) +
10.6613(WDES)
-0.00149 +
21.2329(WDES)
2
OI
267.732
3.527 33.466
27.384 + 115.9sqrt(WDES)
+ 38.24(WDES)
3.423 + 14.484sqrt(WDES)
+ 4.78(WDES)
-0.1856 +
1.856(WDES)
2
LB thin
6.821 33.466 267.732
27.384 + 115.9sqrt(WDES)
+ 38.24(WDES)
3.423 + 14.484sqrt(WDES)
+ 4.78(WDES)
-0.359 + 3.59(WDES)
2
LB
thick
WDES is defined as the design width in μm.
6.2.1.7 Idc Exceptions to the General Rules for Vias
This topic describes Idc exceptions to the general rules for vias. These Idc exceptions are tentative until qualified. For
multiple vias, the permitted Idc current is given by the permissible current per via times the number of vias. For stacked
vias or any other configuration of lines and vias, the current through any single via must not exceed the values listed in
the following table.
Table 162: Maximum Idc Current Limit for Vias at 100°C
Idc Current Limit per Via (mA)
Level
CA 0.172
Vx (1X vias) 0.042
VxBAR 0.084
VxLRG 0.168
WT (1x - 2x transition via) 0.116
YX (1x - 8x transition via) 0.510
YZ (2x - 8x transition via) 1.020
Idc Current Limit per Via (mA)
Level
YS (1x - 10x transition via) 0.538
YR (2x - 10x transition via) 1.076
XA (8x) 3.147
XD (10x) 5.026
JQ (1x/8x - 30x transition via) 2.540
VV (2 μm x 2 μm) 13.3
VV (3 μm x 3 μm) 30
Note: Exceptions to YX, YZ, YS, YR via Idc limits: An increase up to 1.2 mA at 100°C may be used if a stack of
Mx / Vx or Bx / Wx levels (rather than a single Mx or Bx level) is designed to supply the current to YX, YZ, YS
or YR. The designer must model the current distributions among all the Mx (Bx) and Vx (Wx) levels to ensure that
the general Idc and Irms rules for each Mx (Bx) or Vx (Wx) level are followed.
6.2.1.8 Idc Exceptions to the General Rules for Short Line Lengths
Line lengths < Lc μm with widths < (3 × Wmin) can have increased Idc values. Lc values are listed in the following
table. Any line within these limits can operate at higher Idc limits. The via Idc limits in Idc Exceptions to the General
To calculate the Idc limit for a line length < Lc μm with an actual width < (3 × Wmin), use the calculated Idc values
factors in Electromigration Rule Adjustments.
Table 163: Maximum Idc Current Limit for Short Line-Length Adjustments
Maximum Current Limits (mA)
Lc (μm)
Level
Imax = -0.117 + 0.00413/WDes + 2.4442×WDes
M1 16.7
Imax = -0.137 + 0.00479/WDes + 2.5593×WDes
Mx 16.7
If Idc is less than the maximum current limit given in the preceding table, apply the following equation:
Idc (ShortLength) = Idc (Calculated) × (Lc/Length)
not to exceed maximum current limits. If Idc is greater than Imax due to time and temperature adjustments, then short
line-length adjustments do not apply. The result of the short line-length adjustment must not exceed the maximum current
limits listed in the preceding table.
For proper implementation of electromigration design rules, three conditions must be met:
time, temperature, and short line lengths.
6.2.1.9 Electromigration for C4 Terminals
C4 terminal pad types are defined as follows:
C4 pad at a higher voltage potential than the chip metallization, with current
flowing from the chip to the package.
Positive C4 pad(VDD
pad)
C4 pad at a lower voltage potential than the chip metallization, with current
flowing from the package to the chip.
Negative C4 pad(ground
pad)
6.2.1.9.1 Lead-Free C4 Terminals
The following table shows the maximum Idc values for electromigration for lead-free C4 terminals with electron flow
from chip to carrier.
The current carrying capability must be verified for C4 terminals with electron flow from the carrier because this
capability varies based on the particular carrier pad preparation and chip join processes.
Table 164: Positive-Feed, Lead-Free C4 Terminals at 100°C Operating Temperature for 100 KPOH
LV Diameter Maximum Idc Target (mA) for Lead-Free C4 with SnAg Solder
Minimum
Design Size (μm)
C4 Pitch/C4
Size (μm)
Carrier and
Attach Solder
Organic with 3 mil/150 47 40 KPOH: 145
attach solder
4 mil/200
and 225
Package reliability grade 1 = 100 ppm for 100 KPOH, where package = C4 interconnect + carrier + associated hardware, and grade 1 package
reliability = 1 failure in time (FIT) per device, where 1 FIT = 1 ppm for 1000 hours.
6.2.1.9.2 C4 Redundancy
Note that C4 redundancy can be used to enable a higher current-carrying limit, assuming the following:
• A set of n C4 pads is considered redundant when the failure of an arbitrary (n - 1) pad creates voltage and current
shifts that do not cause the chip to malfunction.
• Unlimited use over the product lifetime is enabled only when the failure of an arbitrary (n - 1) pad does not cause
the currents on the remaining pads to exceed the maximum current limit (corresponding to more than 20°C of localized
joule heating).
The following table shows C4 redundancy corrections.
Table 165: C4 Redundancy Correction
Number of redundant C4s Current Increase (%)
1 0
2 5
3 8
Number of redundant C4s Current Increase (%)
4 15
>5 20
Note: The permissible maximum adjusted current is 200mA per C4 terminal for organic products and 350mA per
C4 terminal for ceramic products.
6.2.1.10 Electromigration Rule Adjustments
The Idc limits in the preceding tables for 100°C / 100,000 POH / CDF = 1e-9% can be adjusted for cases with product
lifetimes other than 100,000 hours, junction temperature limits other than 100°C, and CDF targets other than 1e-9% as
indicated in the following tables and figures. For CDF adjustments, N (number of standard deviations) is found by taking
the inverse normal distribution of the CDF fraction (not the percent).
N = normsin v(CDF)
Note: Adjustment for local-heating electromigration (Irms) is prohibited.
Table 166: Adjustment Factors for Idc only for temperature, time and CDF
Adjustment for Multiplier
Temperature for Cu wiring (all levels) and vias (all levels)
Time for Cu wiring (all levels) and vias (all levels)
CDF for Cu wiring (all levels) and vias (all levels) F(CDF) = (14.62e (0.4N) )0.7692
Temperature for VV / LB
Time for VV / LB
CDF for VV/LB F(CDF) = (14.62e(0.4N) )0.5
Note: Using the temperature, lifetime and CDF adjustment factors to justify higher current usages should be
contemplated only when the lower application end-of-life, temperature or CDF target is certain. Designing with
such a derivation in effect inherently limits the applications of the product.
The Idc limit for interconnects for a given junction temperature, T, and for a given product lifetime, EOL actual, and for
a given CDF target can be calculated using the following relation:
where Idco = Idc limit at 100°C, 100,000 POH and CDF = 1e-9%. Example values of F(T), F(EOLactual) and F(CDF)
as obtained from the functions listed in above table for contacts, vias, and lines are given in the preceding tables.
Table 167: Idc Temperature Adjustment Factors
Temperature (oC) Cu Multiplier Al Multiplier
50 51.74 9.65
60 21.4 5.81
70 9.32 3.60
80 4.25 2.29
90 2.03 1.50
100 1.00 1.00
110 0.517 0.683
120 0.275 0.475
125 0.203 0.399
Table 168: Idc Time Adjustment Factors
POH Cu Multiplier Al Multiplier
40,000 2.05 1.59
50,000 1.73 1.43
75,000 1.26 1.16
100,000 1.00 1.00
110,000 0.924 0.950
150,000 0.711 0.802
200,000 0.556 0.684
Table 169: Idc CDF Adjustment Factors
CDF (%) N Cu Multiplier Al Multiplier
0.1 -3.0902 3.04 2.06
0.01 -3.7190 2.51 1.82
0.001 -4.2649 2.12 1.63
1E-4 -4.7532 1.82 1.48
1E-5 -5.1993 1.59 1.35
CDF (%) N Cu Multiplier Al Multiplier
1E-6 -5.6120 1.40 1.24
1E-7 -5.9978 1.24 1.15
1E-8 -6.3613 1.11 1.07
1E-9 -6.7060 1.00 1.00
1E-10 -7.0345 0.904 0.936
6.2.2 Corrosion
For corrosion protection, exposed metal lines (other than wire-bond pads, if applicable) are prohibited. In addition, all
edges must be protected with a triple crack_stop to prevent oxidation.
Chapter
7
Electrostatic Discharge (ESD) Protection
Topics:
• ESD Metallization Requirements
• ESD Checking
These topics provide guidance on protecting against electrostatic discharge (ESD).
7.1 ESD Metallization Requirements
All RX diffusions of ESD devices within (ESD_HBM, ESDSCR_HBM, ESD_CLAMP) must be connected to I/O pads
with metal stack levels that meet the requirements in the following tables. Use appropriate checking tools to verify these
connections.
Table 170: ESD CA and Via Requirements
100 ns Transmission Line Pulse Ifail
CA / Via Level
≥ 1875mA / μm2
CA ≥ 3mA / CA
≥ 2400mA / μm2
V1-V4 (1x) ≥ 6mA / via
Minimum required CA / via area = target Iesd / current density.
Table 171: ESD Metal Requirements
100 ns Transmission Line Pulse Ifail (mA / μm)
Metal Level
M1 (1x) ≥ 80
M2–M5 (1x) ≥ 120
E1 (4x) TBD
OI (30x) TBD
100 ns Transmission Line Pulse Ifail (mA / μm)
Metal Level
LB ≥ 800
Minimum required metal width = target Iesd / current density
7.2 ESD Checking
This section describes ESD design requirements checked using a programmable electrical rule checking (PERC) tool.
The following illustration shows a typical schematic of a bidirectional I/O signal pad with Human Body Model (HBM)
and charged-device model (CDM) double diodes. The schematic also shows an ESD power clamp connected to the
power bus.
All I/O signal pads must be connected to either:
Rule ESD0d
- One or more HBM down diodes satisfying Rule ESD01a and one or more HBM
up diodes satisfying Rule ESD01b, or
- An HBM NFET satisfying Rule ESD01c and a single HBM down diode
satisfying Rule ESD01a.
All LC power supply pads must be connected to either:
Rule ESD0e
- A single HBM down diode satisfying Rule ESD01a and one or more HBM up
diodes satisfying Rule ESD01b, or
- An RC-triggered power clamp satisfying Rule ESD01d and a single HBM down
diode satisfying Rule ESD01a.
Any two different types of ground pads (for example, digital/logic ground pads
and analog ground pads) must be connected with an ESD back-to-back diode
Rule ESD0f
with a single HBM diode satisfying Rule ESD01a and a single HBM diode
satisfying Rule ESD01b.
An HBM down diode must have a minimum area of 120 pm2.
Rule ESD01a
An HBM up diode must have a minimum area of 120 pm2.
Rule ESD01b
An HBM NFET must have a minimum width of 330 μm.
Rule ESD01c
Each instance of an RC-triggered power clamp must have an NFET with a
minimum width of 4000 μm.
Rule ESD01d
A 1.0V RVT ESD NFET may have a maximum gate length of 0.045 μm.
Rule ESD11d
A 1.5V EGV ESD NFET may have a maximum gate length of 0.15 μm.
Rule ESD11e
A 1.8V EG ESD NFET may have a maximum gate length of 0.225 μm.
Rule ESD11f
An HBM down diode may have a maximum anode-to-cathode spacing of 0.2
μm.
Rule ESD17a
An HBM up diode may have a maximum anode-to-cathode spacing of 0.2 μm.
Rule ESD17b
Only the following ESD FET options are permitted:
Rule ESD21
- Fully silicide-blocked, gate-non-silicided (GNS), single NFET or PFET.
- Fully silicide-blocked GNS stacked NFET or PFET.
ESD NFETs should have source SBLK = 0.2 μm.
Rule ESD24
1.0V RVT ESD NFETs should have drain SBLK ≥ 1.5 μm.
Rule ESD25a
1.8V EG ESD NFETs should have drain SBLK ≥ 1.5 μm.
Rule ESD25b
All receiver gates connected to an I/O signal pad should be connected through a
CDM resistor.
Rule ESD30a
All receiver gates connected to an I/O signal pad should be connected to CDM
devices.
Rule ESD30b
All circuits containing cross domain FETs must have:(a) a 25Ω resistor and
a 5 μm wide grounded gate NFET drain connected to the gate of the cross
domain FET and its source connected to the same source as that of the cross
domain FET, or (b) a 25Ω resistor and a 5 μm up and down diode (each)
connected to the gate of the cross domain FET.
Rule ESD45
Notes:
1. A cross domain FET is a FET with its source/drain pins connecting to a power domain, but its gate pin connected
to FET source/drain pins that are connected to a different power domain.
2. Power domain is a ground and power pair that supplies one or more devices.
Table 172: ESD Structure and Device/Model Names
ESD Structure Device / Model Names
P+ polysilicon OP resistor opppcres
HBM or CDM down (n+) / up (p+) diode esdpdnw_sti, esdvnpn_sti, esdndsx_sti;
esdegpdnw_sti, esdegvnpn_sti, esdegndsx_sti;
esdzgpdnw_sti, esdzgvnpn_sti, esdzgndsx_sti;
HBM or CDM NFET esdnfet: esdnsh + esdndres + (nfet, egvnfet, egnfet, and so forth)
Stacked HBM NFET esdnfet: esdnsh_stk + esdndres + (nfet, egvnfet, egnfet, and so forth)
HBM PFET esdpfet: esdpsh + esdpdres + (pfet, egvpfet, egpfet, and so forth)
Stacked HBM PFET esdnfet: esdpsh_stk + esdpdres + (pfet, egvpfet, egpfet, and so forth)
RC-triggered power clamp rc_clamp (miniature circuits, no separate models)
Chapter
8
Calibre Keywords
The following figures illustrate the keywords used by the Mentor Graphics Calibre chip design and verification tool syntax.
Chapter
9
SRAM Device and Design Information
Topics:
• SRAM Device Dimensions
• Physical Design Rules for SRAM Devices
• SRAM Redundancy Requirements (Node 1)
• SRAM Redundancy Requirements (Node 2)
This topic introduces SRAM information for this technology. This information is only accessible with the appropriate
entitlements.
All non-SRAM-specific layout guidelines, syntax definitions, design and reliability rules, logic design models and chip design
submission requirements are presented elsewhere in the design manual and are not repeated here.
DPP315 and TPP240LR are used for internal experiment only.
9.1 SRAM Device Dimensions
Table 173: SRAM Device Dimensions (before Shrink Dimensions)
Device SRAM Cells
28nm Cells P127HD P155HC TPP240LR TPP240LV
Device (Before 0.127 μm2 0.155 μm2 0.240 μm2 0.240 μm2
Shrink Dimensions)
Device (Before Wd (μm) Ld (μm) Wd (μm) Ld (μm) Wd (μm) Ld (μm) Wd (μm) Ld (μm)
Shrink Dimensions)
Access (NFET) 0.068 0.047 0.104 0.047 0.104 0.047 0.104 0.047
Pull-down (NFET) 0.098 0.047 0.146 0.047 0.146 0.047 0.146 0.047
Load (PFET) 0.050 0.047 0.060 0.047 0.060 0.047 0.060 0.047
Device SRAM Cells
- - - - 0.210 0.041 0.210 0.041
NFET Read 1 L/W
(nm)
- - - - 0.170 0.041 0.100 0.041
NFET Read 1 L/W
(nm)
Device SRAM Cells
28nm Cells P240 TPP240MX DPP315 DPD315
Device (Before 0.240 μm2 0.240 μm2 0.315 μm2 0.315 μm2
Shrink Dimensions)
Device (Before Wd (μm) Ld (μm) Wd (μm) Ld (μm) Wd (μm) Ld (μm) Wd (μm) Ld (μm)
Shrink Dimensions)
Access (NFET) 0.232 0.047 0.128 0.047 0.145 0.047 0.145 0.047
Pull-down (NFET) 0.276 0.047 0.146 0.047 0.360 0.047 0.360 0.047
Load (PFET) 0.106 0.047 0.060 0.047 0.060 0.047 0.060 0.047
- - 0.225 0.046 - - - -
NFET Read 1 L/W
(nm)
- - 0.211 0.046 - - - -
NFET Read 1 L/W
(nm)
9.2 Physical Design Rules for SRAM Devices
The following design rule topics apply to SRAM devices.
The following table shows the SRAM cell names used for each cell type.
Table 174: SRAM Cell Names
Cell Names
Type
SRAM Device
Dense SRAM P127HD
High Current SRAM P155HC
LV Two-port SRAM TPP240LV
LR Two-port SRAM TPP240LR
High Performance SRAM P240HP
MX Two-port SRAM TPP240MX
DPP Dual port SRAM DPP315
DPD Dual port SRAM DPD315
9.2.1 Waiver Design Rules for SRAM Cells
Table 175:Waiver Design Rules for SRAM Cells
SRAM0 1 The 6-transistor SRAM core must be within CELLSNR. ≥ 0.2
≥ 0
The 6-transistor SRAM core known as P155HC must be within
SRAM_SB.
SRAM2 2
≥ 0
The 6-transistor SRAM core known as P127HD must be within
SRAM_SA.
SRAM3 3
≥ 0
The 8-transistor SRAM core known as TPP240LV must be within
SRAM_SD.
SRAM4 4
≥ 0
The 8-transistor SRAM core known as TPP240LR must be within
SRAM_SE.
SRAM4b 5
- -
CELLSNR must coincide with SRAM_SA or SRAM_SB or
SRAM_SD or SRAM_SE.
SRAM8 -
- -
SRAM_SA touching (SRAM_SB, SRAM_SD, SRAM_SE) is
prohibited.
SRAM9 -
SRAM10 - SRAM_SB touching ( SRAM_SD, SRAM_SE) is prohibited. - -
SRAM16 - SRAM_SD touching SRAM_SE is prohibited. - -
SRAM18 - CELLSNR must touch CA_NODECOMP. - -
- -
(Gate touching CELLSNR) must be oriented in the same direction,
either vertical or horizontal.
SRAM107a 1, 6
SRAM234 - CA minimum space to (CA_E1, CA_E2, CAREC_E1, CAREC_E2). ≥ 0.086
Notes:
1. It is the Designer's responsibility to place the CELLSNR marker level. The presence of the CELLSNR level cannot
be DRC checked.
2. It is the Designer's responsibility to place the SRAM_SB marker level. The presence of the SRAM_SB level cannot
be DRC checked.
3. It is the Designer's responsibility to place the SRAM_SA marker level. The presence of the SRAM_SA level cannot
be DRC checked.
4. It is the Designer's responsibility to place the SRAM_SD marker level. The presence of the SRAM_SD level cannot
be DRC checked.
5. It is the Designer's responsibility to place the SRAM_SE marker level. The presence of the SRAM_SE level cannot
be DRC checked.
6. The gate orientation is checked independently within each CELLSNR shape.
9.2.2 Alternate Design Rules for Approved SRAM Cells
CELLSNR is used as a marker to identify the areas where the alternate rules apply.
In the following table, the base value is listed for reference in the Description column followed by the required value
for each SRAM cell. The value listed in the Design column is the value used in design rule checking (DRC) to enable
the specified SRAM cells to pass the rule. A dash in the Design column indicates that the rule does not require alternate
values beyond those contained in the description.
To check interactions between shapes inside the SRAM cell versus shapes outside the SRAM cell, the base value must
be used. For example, V2 within CELLSNR must meet the base rule (Rule 553a) for space to V2 outside CELLSNR.
Table 176: Alternate Design Rules for Approved SRAM Cells
SRPCE2.W.1a - PC_E2 vertical exact width. ≡ 0.054
SRPCE2.W.1b - PC_E2 minimum horizontal length. ≥ 0.270
SRPCE2.EX.PC.1 - PC_E2 minimum overlap past PC. ≥ 0.044
SRPCE2.OL.PC.1 - PC minimum overlap of PC_E2. ≥ 0.027
SRPCE2.S.PC.1 - PC_E2 minimum space to PC. ≥ 0.010
SRPCE2.S.PC.2 - PC_E2 minimum horizontal space to PC. ≥ 0.010
SRPCE2.S.PC.3 - PC_E2 minimum space to horizontal PC. ≥ 0.010
≥ 0.035
PC_E2 minimum space to (RX touching (PC or PCZFILL)) along gate
width direction (This rule does not apply to SRAM)
SRPCE2.S.RX.1 -
≥ 0.023
PC_E2 minimum space to {gate edge coincident with [RX edge
touching (RX inner vertex)]} when gate to RX inner vertex space ≤
0.050 μm.
SRPCE2.S.RX.2 -
≥ 0.068
NFET gate minimum width. [Base: 0.100], P127HD = 0.068, P155HC
= 0.104, TPP240LR = 0.104, TPP240LV = 0.104.
SR10 -
≥ 0.050
PFET gate minimum width. [Base: 0.080], P127HD = 0.050, P155HC
= 0.060, TPP240LR = 0.060, TPP240LV = 0.060.
SR11 -
SR50 - RX minimum width. ≥ 0.040
≥ 0.078
[(RX n+ junction, RX p+ junction) touching CA] minimum width for
run length (> 0 um and < 0.125 um), (RX with exact two outer vertices)
SR50a - and [(at least one edge perpendicular to the width direction, this edge
need to be connected one inner vertex) < 0.06μm] is exempt from this
rule. (This rule 50a does not apply to SRAM)
SR52 - RX minimum space. [Base ≥ 0.060]. ≥ 0.050
≥ 0.070
RX minimum space (for runlength > 0) (This rule does not apply to the
SRAM)
SR52c -
SR52d - RXend minimum space to RX, checked projecting from Rxend. ≥ 0.060
≥ 0.060
(RX edge with span > 0.086 μm) minimum space to RX. [Base ≥ 0.070],
P127HD = 0.065, P155HC = 0.068, TPP240LR = 0.068, TPP240LV
= 0.068.
SR52faa -
≥ 0.060 (RX edge with span < 0.050 μm) minimum space to RX. [Base ≥ 0.090],
P127HD = 0.060, P155HC = -, TPP240LR = -, TPP240LV = -.
SR52g -
≥ 0.060
(RX edge with ≥ 0.050 span < 0.060 μm) minimum space to RX. [Base
≥ 0.080], P127HD = 0.060, P155HC = 0.062, TPP240LR = 0.062,
TPP240LV = 0.062.
SR52h -
≥ 0.060
(RX edge with ≥ 0.060 span < 0.070 μm) minimum space to RX. [Base
≥ 0.07], P127HD = -, P155HC = 0.062, TPP240LR = 0.062, TPP240LV
= 0.062.
SR52i -
SR100a - [(PC not over EFUSE) oriented along the X-Direction] minimum width. ≥ 0.046
≥ 0.088
(PC with span ≥ 0.03 μm) minimum space to PC (summed run length
> 0.100 μm).
SR102a -
≥ 0.050
[(PC inner vertex) over PC_E2] minimum space to gate when PC
touching gate.
SR103b -
≥ 0.084
SRAM NFET (Access or Pull-down) gate minimum space (run length
> 0) over RX. [Base ≥ 0.1].
SR104a 6
≥ 0.084
SRAM PFET (Load) gate minimum space (run length > 0) over RX.
[Base ≥ 0.1].
SR104b 7
≥ 0.084 (Gate_side for gates with channel length < 0.050 μm) minimum space
to PC.
SR104c -
≥ 0.002 RX minimum overlap past PC. [Base ≥ 0.076], P127HD = 0.014,
P155HC = 0.024, TPP240LR = 0.009, TPP240LV = 0.009.
SR110 2
≥ 0.023 PC minimum overlap past RX. [Base ≥ 0.057], P127HD = 0.216,
P155HC = 0.026, TPP240LR = 0.026, TPP240LV = 0.026.
SR111 1
≥ 0.08
(PC not PC end) minimum overlap past RX when (PC to RX inner
vertex space ≤ 0.050 μm). [Base: 0.095]
SR111c -
SR113 - PC minimum space to RX. ≥ 0.019
≥ 0.216 NW minimum width. [Base ≥ 0.26], P127HD = 0.220, P155HC = 0.242,
TPP240LR = 0.242, TPP240LV = 0.242.
SR250 -
≥ 0.030 RX p+ junction minimum within NW. [Base ≥ 0.056], P127HD = 0.030,
P155HC = 0.030, TPP240LR = 0.030 TPP240LV = 0.030.
SR260 -
SR261 - RX n-well contact minimum within NW. [Base ≥ 0.065]. ≥ 0.035
≥ 0.030 RX n+ junction minimum space to NW. - [Base ≥ 0.056], P127HD =
0.030, P155HC = 0.034, TPP240LR = 0.034, TPP240LV = 0.034.
SR265 -
SR266 - (RX p-well contact) minimum space to NW ≥ 0.056
≥ 0.030
RX p+ junction minimum within PPLUS. If RX straddles PPLUS then
the ESD Poly-Bounded Diode or butted-junction design rules apply.
SR353 -
[Base ≥ 0.056], P127HD = 0.030, P155HC = 0.030, TPP240LR = 0.030,
TPP240LV = 0.030.
≥ 0.030 RX n+ junction minimum space to PPLUS. [Base ≥ 0.056], P127HD
= 0.030, P155HC = 0.034, TPP240LR = 0.034, TPP240LV = 0.034.
SR355 -
SR356a - PPLUS inner vertex minimum space to RX n-well contact outer vertex. ≥ 0.030
≥ 0.030 Gate minimum space to PPLUS. [Base ≥ 0.056], P127HD = 0.030,
P155HC = 0.034, TPP240LR = 0.034, TPP240LV = 0.034.
SR370 -
≥ 0.03
(Gate not over ESD_POLYB) minimum within PPLUS. [Base ≥ 0.056],
P127HD = 0.035, P155HC = 0.034, TPP240LR = 0.034, TPP240LV
= 0.034.
SR371 2
SR372b - RX butted n-well contact minimum overlap of NPLUS. ≥ 0.035
≥ 0.055
RX butted n+ junction minimum overlap past PPLUS. [Base ≥ 0.056],
P127HD = 0.149, P155HC = 0.149, TPP240LR = 0.055, TPP240LV
= 0.055.
SR382 -
≥ 0.034
Butted RX p+ junction minimum overlap of PPLUS. [Base ≥ 0.056],
P127HD = 0.035, P155HC = 0.034, TPP240LR = 0.044, TPP240LV
= 0.044.
SR383 -
≥ 0.065
RX n+ junction minimum within NPLUS. If RX straddles NPLUS then
the ESD Poly-Bounded Diode or butted-junction design rules apply.
(This rule does not apply to SRAM)
SR453 -
≥ 0.065
RX p+ junction minimum space to NPLUS. If RX straddles NPLUS
then the ESD Poly-Bounded Diode or butted-junction design rules
apply. (This rule does not apply to SRAM)
SR455 -
≥ 0.030
Gate minimum space to NPLUS. [Base: 0.056], P127HD = 0.035,
P155HC = 0.034, TPP240LR = 0.034, TPP240LV = 0.034.
SR470 -
≥ 0.030
(Gate not over ESD_POLYB) minimum within NPLUS. [Base=0.056],
P127HD = 0.030, P155HC = 0.034, TPP240LR = 0.034, TPP240LV
= 0.034.
SR471 2
≥ 0.0081 M1 minimum area, [Base ≥ 0.0093], P127HD = 0.00868, P155HC =
0.01116, TPP240LR = 0.01116, TPP240LV = 0.01116.
SR501a -
≥ 0.050
M1_LE minimum space to M1 side if: 1. [M1_end_1 + (M1_LS space
to M1)] is = 0.120 μm on both sides. Or 2. [M1_end_1 + (M1_LS space
to M1)] is < 0.120μm on only one side.
SR502a2 -
Each V1 per M1 and M2 intersection containing V1 must meet Rule - -
SR572b or SR572c1.
SR572_or -
≥ 0.013
M1 minimum overlap past V1 for two opposite sides with the other
two sides ≥ 0.010 μm.
SR572b -
≥ 0.014
M1 minimum overlap past V1 for two opposite sides with the other
two sides ≥ 0.000 μm.
SR572c1 -
≥ 0.0105 M2 minimum area. [Base ≥ 0.014], P127HD = 0.01155, P155HC =
0.014, TPP240LR = 0.0147, TPP240LV = 0.0147.
SR601a_M2 -
≥ 0.056
Mx_LE minimum space to Mx side, if: 1. [Mx_end _1+ (Mx_LS space
to Mx)] is = 0.115 μm on both sides, where x = 2-6. Or 2. [Mx_end_1
SR602a2 4, 5
+ (Mx_LS space to Mx)] is < 0.115 μm on only one side, where x =
2-6.
- -
Each Vx per Mx and M(x + 1) intersection containing a Vx must meet
Rule 611a, 611b, 611c or SR611g where x = 1-5. For all rules, an Mx
rectangular enclosure must be used.
SR611_or -
≥ 0.011
M(x+1) minimum overlap past Vx for two opposite sides with the other
two sides ≥ 0.004 μm, where x = 1-5. Mx rectangular enclosure must
be used.
SR611g -
- -
(VxBAR end) must meet one of the following rules 670c, 670d, 670e,
or SR670f.
SR670_or -
≥ 0.015
(VxBAR end) must be within Mx, for two opposite sides with the other
two sides ≥ 0.010 μm, where x = 2-5.
SR670f -
Notes:
1. This rule does not apply when the PC and RX are connected to the same CAREC_E2.
2. This rule does not apply to SRAM under CAREC_E2.
3. (VxBAR side) is defined as the line edge corresponding to (VxBAR length). (VxBAR end) is defined as the line
edge corresponding to (VxBAR width), where x = 1-5.
4. Mx_end_1 is defined as (Mx edge with length < 0.07 μm) between two (outer vertices connected to edges of length
> 0.020 μm).
5. Mx_LE = Mx_end_1 extended out by 0.020 μm on each side. Mx_LS = 0.050 μm Metal side extended out beyond
Mx_end_1 by 0.020 μm.
6. SRAM NFET (Access or Pull-down) gate = ({[(PC NOT PC_E2) touching (CA_E2 or CAREC_E2)] over RX} over
NPLUS) not over NW.
7. SRAM PFET (Load) gate = ({[(PC NOT PC_E2) touching CAREC_E2] over RX} over PPLUS) over NW.
9.2.3 Additional SRAM Design Rules
Table 177: SRAM Design Rules for SRAM Cells
AD02 - AD minimum width. ≥ 0.260
CA_E1_1 - CA_E1 must be within CELLSNR. ≥ 0
CA_E1_2 - CA_E1 must be within CA_NODECOMP. ≥ 0
CA_E1_3 - CA_E1 exact width and length. ≡ 0.040
CA_E1_5 - CA_E1 center minimum distance to CA_E2 center. ≥ 0.124
CA_E1_6 - CA_E1 minimum center to center distance. ≥ 0.120
CA_E1_7 - CA_E1 minimum space to CAREC_E2. ≥ 0.055
CA_E1_204 - (CA_E1 over RX) minimum within RX. ≥ 0
CA_E1_207 - (CA_E1 over RX) minimum space to PC. ≥ 0.024
CA_E1_503 - (CA_E1 over RX) minimum space to M1. ≥ 0.057
CA_E1_503a - (CA_E1 or CA_E2 over PC) minimum space to M1. ≥ 0.060
CA_E1_505 - (CA_E1 over RX) must be within M1. ≥ 0.005
CA_E2_1 - CA_E2 must be within CELLSNR. ≥ 0
CA_E2_2 - CA_E2 must be within CA_NODECOMP. ≥ 0
CA_E2_3 - CA_E2 exact width and length. ≡ 0.040
CA_E2_6 - CA_E2 minimum center to center distance. ≥ 0.120
CA_E2_207 - (CA_E1 or CA_E2 over PC) minimum within PC. ≥ -0.002
CA_E2_208 - CA_E2 minimum space to RX. ≥ 0.03
CA_E2_505 - (CA_E1 or CA_E2 over PC) must be within M1. ≥ 0.005
CA_NODECOMP2 - CA_NODECOMP must be within CELLSNR. ≥ 0
CAREC_E2_1 - CAREC_E2 must be within CELLSNR. ≥ 0
CAREC_E2_2 - CAREC_E2 must be within CA_NODECOMP. ≥ 0
CAREC_E2_3 - CAREC_E2 minimum space. ≥ 0.065
CAREC_E2_207 - CAREC_E2 minimum space to PC. ≥ 0.024
≥ 0.045
CAREC_E2 minimum space to RX. Rule does not apply when
CAREC_E2 and RX are touching.
CAREC_E2_208 -
CAREC_E2_503 - CAREC_E2 minimum space to (M1 touches the same CAREC_E2). ≥ 0.021
≥ 0.040
CAREC_E2 minimum space to (M1 touches not the same
CAREC_E2).
CAREC_E2_503b -
CELLACT1 - CELLACTIVE must be covered by CELLSNR. - -
- -
CELLACTIVE rectangles must have two edges that straddle CA_E1
and two edges that straddle CA_E2.
CELLACT2 -
CELLACT3 - CELLACTIVE must be an orthogonal rectangle. - -
SRAM.NWTAP.1 1 SRAM_NW_tap must not be within PPLUS. - -
SRAM_ROM - CELLSNR touching STD_ROM_GF is prohibited. - -
Notes:
1. SRAM_NW_tap is defined as ({[(RX over CELLSNR) not touching CELLACTIVE] not touching PC} over NW)
touching CA_E1.
9.2.4 SRAM Design Hierarchy
Placement of the CELLSNR marker level should be in the top cell of all cells that comprise the SRAM device and should
not include cells that are not part of the SRAM array block. Failure to place CELLSNR correctly can lead to errors in
DRC and design finishing.
9.3 SRAM Redundancy Requirements (Node 1)
The following tables define the SRAM redundancy and repair requirements. The requirements take into account both
defectivity-limited yield and voltage limited yield. The minimum number of redundant elements and the number of
repairs can be far less than the total number of redundant elements.
Table 178: 28LPSe Redundancy Requirements
28LPSe Bitcell Array Size 4
HD127 16 Mb (64Bits/BL)
Max Unrepairable Bits
HC155 32 Mb (128bits/BL)
P240 16 Mb (256bits/BL)
DPx315 16 Mb (256bits/BL)
TPP240LV/ TPP240MX 16 Mb (256bits/BL)
Total ≤ 16 Mb 3
Min Available Elements 1 Total ≤ 64 Mb 2 1 Element / 16Mb
Min Available Repairs N/A 1 Repair / 16Mb
Notes:
1. Repair elements may consist of rows or columns. It is recommend that each repair element consists of 2 or more
adjacent rows or columns to repair multi-bit faults.
2. For products containing HD127 > 16Mb or Total > 64Mb, contact GLOBALFOUNDRIES for design guidelines.
3. Total is the sum of all bits across all cell types other then HC155 w/ 128bits/BL within one chip.
4. at Vmin=0.945V and VdipR=0.8925V from 0C to 85C.
9.4 SRAM Redundancy Requirements (Node 2)
The following tables define the SRAM redundancy and repair requirements. The requirements take into account both
defectivity-limited yield and voltage limited yield. The minimum number of redundant elements and the number of
repairs can be far less than the total number of redundant elements.
Table 179: 28LPSe Redundancy Requirements
28LPSe Bitcell Array Size 4
HD127 16 Mb (64Bits/BL)
Max Unrepairable Bits
HC155 32 Mb (128bits/BL)
P240 16 Mb (256bits/BL)
DPD315 16 Mb (256bits/BL)
TPP240LV/ TPP240MX 16 Mb (256bits/BL)
Total ≤ 16 Mb 3
Min Available Elements 1 Total ≤ 64 Mb 2 1 Element / 16Mb
Min Available Repairs N/A 1 Repair / 16Mb
Notes:
1. Repair elements may consist of rows or columns. It is recommend that each repair element consists of 2 or more
adjacent rows or columns to repair multi-bit faults.
2. For products containing HD127 > 16Mb or Total > 64Mb, contact GLOBALFOUNDRIES for design guidelines.
3. Total is the sum of all bits across all cell types within one chip
4. at Vmin=0.945V and VdipR=0.8925V from -40C to 125C
Chapter
10
Fill Generation Design Rules
Topics:
• FEOL Fill Design Rules (UFD0.8)
• FEOL Fill Design Rules (CFILL0.9)
• BEOL Metal Fill Design Rules
• Local Pattern Design Rules
Design submitted to GLOBALFOUNDRIES must pass all design rules including the following density rules and the fill rules.
GLOBALFOUNDRIES does not provide fill generation service during tapeout.
CFILL0.9 is the default FEOL fill design for 28LPSe. UFD0.8 is an obsolescent FEOL fill design.
CFILL0.9 must not be mixed with UFD0.8 within the same chip design.
Chips with different fill designs are allowed on the same MPW as long as each chip receives independent design rule checks.
Please refer to 28LPSe Calibre DRC Release Notes for information on switching between CFILL0.9 or UFD0.8 design rule
check.
10.1 FEOL Fill Design Rules (UFD0.8)
Table 180: FEOL Fill Design Rules
≥ 0.2
ALL_HIP_EQUALIZER minimum space to (RXFILL, PCFILL,
RXZFILL, PCZFILL) with touching prohibited
EQFILL.EXCLS.1.GF
≥ 0.28
ALL_HIP_EQUALIZER minimum space to CTFILL with touching
prohibited
EQFILL.EXCLS.2.GF
≥ 0.35
ALL_HIP_EQUALIZER minimum space to NWFILL with touching
prohibited
EQFILL.EXCLS.3.GF
≥ 0.6
ALL_HIP_EQUALIZER minimum space to (PCEXCLUD,
PCCRITEXCL, RXEXCLUD, RXCRITEXCL) with straddling
prohibited
EQFILL.EXCLS.4.GF
≥ 0.35
ALL_HIP_EQUALIZER minimum space to (PROTECT,
LOGOBND, KERFEXCL, NWEXCLUD) with straddling prohibited
EQFILL.EXCLS.5.GF
≥ 2.76
ALL_HIP_EQUALIZER minimum space to [(RX, PC, NWRES,
PC_E2) not touching (TCDMRK_FH, TCDMRK_FV)] with touching
prohibited
EQFILL.EXCLS.6.GF
EQFILL.EXCLS.7.GF ALL_HIP_EQUALIZER minimum space to (EG, ZG) ≥ 0.35
≥ 0.35
ALL_HIP_EQUALIZER minimum within (EG, ZG) with straddling
prohibited
EQFILL.EXCLS.8.GF
≥ 0.35
ALL_HIP_EQUALIZER minimum space to (NW, PPLUS, NPLUS)
with touching prohibited
EQFILL.EXCLS.9.GF
≥ 0.6
ALL_HIP_EQUALIZER minimum space to (NW touching EG)
with touching prohibited
EQFILL.EXCLS.10.GF
≥ 0.8
ALL_HIP_EQUALIZER minimum space to (NW touching ZG)
with touching prohibited
EQFILL.EXCLS.11.GF
≥ 0.4
ALL_HIP_EQUALIZER minimum space to (CELLSNR, LVTN,
LVTP, ELVTN, ELVTP, ZVT)
EQFILL.EXCLS.12.GF
≥ 0.4
ALL_HIP_EQUALIZER minimum within (CELLSNR, LVTN,
LVTP, ELVTN, ELVTP, ZVT) with straddling prohibited
EQFILL.EXCLS.13.GF
≥ 0.4
ALL_HIP_EQUALIZER minimum space to (CELLACTIVE, AD)
with touching prohibited
EQFILL.EXCLS.15.GF
≥ 0.35
ALL_HIP_EQUALIZER minimum space to (JFET, HAVAR) with
touching prohibited
EQFILL.EXCLS.16.GF
≥ 0.35
ALL_HIP_EQUALIZER minimum space to (BFMOAT, IND,
BIPOLAR, OP) touching prohibited
EQFILL.EXCLS.17.GF
≥ 2.76
ALL_HIP_EQUALIZER minimum space to (DRES, PRES) touching
prohibited
EQFILL.EXCLS.18.GF
≥ 0.35
ALL_HIP_EQUALIZER minimum space to (NCAP, PCAP, DIODE,
ED, SCHKY)
EQFILL.EXCLS.19.GF
≥ 0.35
ALL_HIP_EQUALIZER minimum within (NCAP, PCAP, DIODE,
ED, SCHKY) with straddling prohibited
EQFILL.EXCLS.20.GF
≥ 0.65
ALL_HIP_EQUALIZER minimum space to (EFUSE, PCFUSE)
with touching prohibited
EQFILL.EXCLS.21.GF
≥ 2.76
ALL_HIP_EQUALIZER minimum space to (ESD_POLYB,
ESD_HBM, ESD_CDM) with touching prohibited
EQFILL.EXCLS.22.GF
≥ 0.35
ALL_HIP_EQUALIZER minimum space to ESDSCR_HBM with
touching prohibited
EQFILL.EXCLS.23.GF
≥ 0.8
ALL_HIP_EQUALIZER minimum space to (SRAM_SE,
SRAM_SA, RDSTK_8TLV, RDSTK_8TLR) with touching
prohibited
EQFILL.EXCLS.24.GF
EQFILL.EXCLS.26.GF ALL_HIP_EQUALIZER minimum space to STD_ROM ≥ 0.4
≥ 0.4
ALL_HIP_EQUALIZER minimum within STD_ROM with
straddling prohibited
EQFILL.EXCLS.27.GF
≥ 0
ALL_HIP_EQUALIZER minimum space to (TCDMRK_FH,
TCDMRK_FV, INDIEOVL1) with incurring prohibited.
EQFILL.EXCLS.28.GF
≥ 0.2
RXGFILLOPC minimum space to (RXFILL, PCFILL, NWFILL,
RXZFILL, PCZFILL) with touching prohibited
RXGFILL.EXCLS.1.GF
RXGFILL.EXCLS.2.GF RXGFILLOPC minimum space to CTFILL with touching prohibited ≥ 0.1
≥ 0.2
RXGFILLOPC minimum space to (RXEXCLUD, RXCRITEXCL)
with straddling prohibited
RXGFILL.EXCLS.3.GF
≥ 0.2
RXGFILLOPC minimum space to (PROTECT, LOGOBND,
KERFEXCL, NWRES) with touching prohibited
RXGFILL.EXCLS.4.GF
RXGFILL.EXCLS.5.GF RXGFILLOPC minimum space to RX with touching prohibited ≥ 0.3
RXGFILL.EXCLS.6.GF RXGFILLOPC minimum space to PC with touching prohibited ≥ 0.24
RXGFILL.EXCLS.7.GF RXGFILLOPC minimum space to PC_E2 with touching prohibited ≥ 0.1
≥ 0.12
RXGFILLOPC minimum space to (NW, EG, ZG, DRES, PRES,
OP, CELLSNR, BFMOAT, IND)
RXGFILL.EXCLS.8.GF
≥ 0.12
RXGFILLOPC minimum within (NW, EG, ZG, DRES, PRES, OP,
CELLSNR, BFMOAT, IND) with straddling prohibited
RXGFILL.EXCLS.9.GF
RXGFILL.EXCLS.10.GF RXGFILLOPC minimum space to (NW touching EG) ≥ 0.26
≥ 0.26
RXGFILLOPC minimum within (NW touching EG) with straddling
prohibited
RXGFILL.EXCLS.11.GF
RXGFILL.EXCLS.12.GF RXGFILLOPC minimum space to (NW touching ZG) ≥ 0.44
≥ 0.44
RXGFILLOPC minimum within (NW touching ZG) with straddling
prohibited
RXGFILL.EXCLS.13.GF
RXGFILL.EXCLS.14.GF RXGFILLOPC minimum space to SCHKY ≥ 0.35
RXGFILL.EXCLS.15.GF RXGFILLOPC minimum within SCHKY with straddling prohibited ≥ 0.35
≥ 0.35
RXGFILLOPC minimum space to BIPOLAR with touching
prohibited
RXGFILL.EXCLS.16.GF
RXGFILL.EXCLS.17.GF RXGFILLOPC minimum space to (NCAP, PCAP) ≥ 0.2
≥ 0.2
RXGFILLOPC minimum within (NCAP, PCAP) with straddling
prohibited
RXGFILL.EXCLS.18.GF
≥ 0.65
RXGFILLOPC minimum space to (EFUSE, PCFUSE) with touching
prohibited
RXGFILL.EXCLS.19.GF
≥ 0.8
RXGFILLOPC minimum space to (RDSTK_8TLV, RDSTK_8TLR)
with touching prohibited
RXGFILL.EXCLS.20.GF
RXGFILL.EXCLS.22.GF RXGFILLOPC minimum space to STD_ROM ≥ 0.12
≥ 0.12
RXGFILLOPC minimum within STD_ROM with straddling
prohibited
RXGFILL.EXCLS.23.GF
≥ 0.35
RXGFILLOPC minimum space to (JFET, HAVAR) with touching
prohibited
RXGFILL.EXCLS.24.GF
≥ 0
RXGFILLOPC minimum space to (TCDMRK_FH, TCDMRK_FV,
INDIEOVL1) with incurring prohibited.
RXGFILL.EXCLS.25.GF
≥ 0.2
(PCGFILLOPC not touching ALL_HIP_EQUALIZER) minimum
space to (RXFILL, PCFILL, CTFILL, RXZFILL, PCZFILL) with
touching prohibited
PCGFILL.EXCLS.1.GF
≥ 0.2
(PCGFILLOPC not touching ALL_HIP_EQUALIZER) minimum
space to (PCEXCLUD, PCCRITEXCL) with straddling prohibited
PCGFILL.EXCLS.2.GF
≥ 0.2
(PCGFILLOPC not touching ALL_HIP_EQUALIZER) minimum
space to (PROTECT, LOGOBND, KERFEXCL) with touching
prohibited
PCGFILL.EXCLS.3.GF
≥ 0.24
(PCGFILLOPC not touching ALL_HIP_EQUALIZER) minimum
space to (RX, PC) with touching prohibited
PCGFILL.EXCLS.4.GF
≥ 0.23
(PCGFILLOPC not touching ALL_HIP_EQUALIZER) minimum
space to PC_E2 with touching prohibited
PCGFILL.EXCLS.5.GF
≥ 0.12
(PCGFILLOPC not touching ALL_HIP_EQUALIZER) minimum
space to (DRES, PRES, OP)
PCGFILL.EXCLS.6.GF
≥ 0.12
(PCGFILLOPC not touching ALL_HIP_EQUALIZER) minimum
within (DRES, PRES, OP) with straddling prohibited
PCGFILL.EXCLS.7.GF
≥ 0.35
(PCGFILLOPC not touching ALL_HIP_EQUALIZER) minimum
space to BIPOLAR with touching prohibited
PCGFILL.EXCLS.8.GF
≥ 0.2
(PCGFILLOPC not touching ALL_HIP_EQUALIZER) minimum
space to (NCAP, PCAP, SCHKY)
PCGFILL.EXCLS.9.GF
≥ 0.2
(PCGFILLOPC not touching ALL_HIP_EQUALIZER) minimum
within (NCAP, PCAP, SCHKY) with straddling prohibited
PCGFILL.EXCLS.10.GF
≥ 0.65
(PCGFILLOPC not touching ALL_HIP_EQUALIZER) minimum
space to (EFUSE, PCFUSE) with touching prohibited
PCGFILL.EXCLS.11.GF
≥ 0.35
PCGFILLOPC minimum space to (JFET, HAVAR) with touching
prohibited
PCGFILL.EXCLS.12.GF
≥ 0
(PCGFILLOPC not touching ALL_HIP_EQUALIZER) minimum
space to (TCDMRK_FH, TCDMRK_FV, INDIEOVL1) with
incurring prohibited.
PCGFILL.EXCLS.13.GF
≥ 0.1
(CTGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (RXFILL, RXZFILL) with touching prohibited
CTGFILL.EXCLS.1.GF
≥ 0.2
(CTGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (PCFILL, PCZFILL) with touching prohibited
CTGFILL.EXCLS.2.GF
≥ 0.28
(CTGFILL not touching ALL_HIP_EQUALIZER) minimum space
to CTFILL with touching prohibited
CTGFILL.EXCLS.3.GF
≥ 0.2
(CTGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (PCEXCLUD, PCCRITEXCL, PROTECT, LOGOBND,
KERFEXCL) with straddling prohibited
CTGFILL.EXCLS.4.GF
≥ 0.38
(CTGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (RX, PC) with touching prohibited
CTGFILL.EXCLS.5.GF
≥ 0.26
(CTGFILL not touching ALL_HIP_EQUALIZER) minimum space
to PC_E2 with touching prohibited
CTGFILL.EXCLS.6.GF
≥ 0
(CTGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (TCDMRK_FH, TCDMRK_FV, INDIEOVL1) with incurring
prohibited
CTGFILL.EXCLS.7.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (RXFILL, NWFILL, RXZFILL) with touching prohibited
TJGFILL.EXCLS.1.GF
≥ 0.2
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to NWEXCLUD with straddling prohibited
TJGFILL.EXCLS.2.GF
≥ 0.13
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to RXEXCLUD with straddling prohibited
TJGFILL.EXCLS.3.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (PROTECT, LOGOBND, KERFEXCL, NWRES) with touching
prohibited
TJGFILL.EXCLS.4.GF
≥ 0.23
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to RX with touching prohibited
TJGFILL.EXCLS.5.GF
≥ 0.17
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to PC with touching prohibited
TJGFILL.EXCLS.6.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (EG, ZG)
TJGFILL.EXCLS.7.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum within
(EG, ZG) with straddling prohibited
TJGFILL.EXCLS.8.GF
≥ 0.3
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (NW, PPLUS, NPLUS) with touching prohibited
TJGFILL.EXCLS.9.GF
≥ 0.6
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (NW touching EG) with touching prohibited
TJGFILL.EXCLS.10.GF
≥ 0.8
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (NW touching ZG) with touching prohibited
TJGFILL.EXCLS.11.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (CELLSNR, LVTN, LVTP, ELVTN, ELVTP, ZVT)
TJGFILL.EXCLS.12.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum within
(CELLSNR, LVTN, LVTP, ELVTN, ELVTP, ZVT) with straddling
prohibited
TJGFILL.EXCLS.13.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (CELLACTIVE, AD) with touching prohibited
TJGFILL.EXCLS.14.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (JFET, HAVAR) with touching prohibited
TJGFILL.EXCLS.15.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (DRES, PRES, BIPOLAR, OP, BFMOAT, IND) with touching
prohibited
TJGFILL.EXCLS.16.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (NCAP, PCAP, DIODE, ED, SCHKY)
TJGFILL.EXCLS.17.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum within
(NCAP, PCAP, DIODE, ED, SCHKY) with straddling prohibited
TJGFILL.EXCLS.18.GF
≥ 0.58
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (EFUSE, PCFUSE) with touching prohibited
TJGFILL.EXCLS.19.GF
≥ 0
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (TCDMRK_FH, TCDMRK_FV, INDIEOVL1) with incurring
prohibited
TJGFILL.EXCLS.20.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to ESDSCR_HBM with touching prohibited
TJGFILL.EXCLS.21.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (ESD_POLYB, ESD_HBM, ESD_CDM)
TJGFILL.EXCLS.22.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum within
(ESD_POLYB, ESD_HBM, ESD_CDM) with straddling prohibited
TJGFILL.EXCLS.23.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (SRAM_SE, SRAM_SA, RDSTK_8TLV, RDSTK_8TLR) with
touching prohibited
TJGFILL.EXCLS.24.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to STD_ROM
TJGFILL.EXCLS.26.GF
≥ 0.35
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum within
STD_ROM with straddling prohibited
TJGFILL.EXCLS.27.GF
≥ 0.07
ALL_HIP_EQUALIZER minimum space to RXGFILLOPC with
touching prohibited
HIPFILL.SPACE.1.GF
≥ 0.045
ALL_HIP_EQUALIZER minimum space to PCGFILLOPC with
straddling prohibited
HIPFILL.SPACE.2.GF
≥ 0.28
ALL_HIP_EQUALIZER minimum space to (CTGFILL not touching
ALL_HIP_EQUALIZER).
HIPFILL.SPACE.3.GF
≥ 0.42
ALL_HIP_EQUALIZER minimum space to (TJGFILL not touching
ALL_HIP_EQUALIZER).
HIPFILL.SPACE.4.GF
≥ 0.12
(RXGFILLOPC with width = 0.14) minimum space to
(RXGFILLOPC with width = 0.1) with touching prohibited
HIPFILL.SPACE.5.GF
≥ 0.12
(RXGFILLOPC with width = 0.14) minimum space to
(PCGFILLOPC with width = 0.06) with touching prohibited
HIPFILL.SPACE.6.GF
≥ 0.1
((PCGFILLOPC not touching ALL_HIP_EQUALIZER) with width
= 0.04) minimum space to (RXGFILLOPC with width = 0.1) with
touching prohibited
HIPFILL.SPACE.7.GF
≥ 0.1
((PCGFILLOPC not touching ALL_HIP_EQUALIZER) with width
= 0.04) minimum space to (PCGFILLOPC with width = 0.06) with
touching prohibited
HIPFILL.SPACE.8.GF
≥ 0.19
(CTGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (PCGFILLOPC with width = 0.06) with touching prohibited
HIPFILL.SPACE.9.GF
≥ 0.05
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (RXGFILLOPC with width = 0.1) with touching prohibited
HIPFILL.SPACE.10.GF
- -
RXGFILL in dummy_gate_length direction must have exact width
= 0.56 or exact width = 0.70
EQFILL.SHAPE.1.GF 1
EQFILL.SHAPE.2.GF 2 RXGFILL minimum width in dummy_gate_width direction ≥ 0.3
- -
[PCGFILLOPC touching ALL_HIP_EQUALIZER] must be
(PCGFILLER_finger or PCGFILLER_strap).
EQFILL.SHAPE.3.GF 3, 4
= 0.02
PCGFILLOPC exact overlap past RXGFILL in dummy_gate_length
direction
EQFILL.SHAPE.4.GF 1
≥ 0.035
PCGFILLOPC minimum overlap past RXGFILL in
dummy_gate_width direction
EQFILL.SHAPE.5.GF 2
EQFILL.SHAPE.6.GF (TJGFILL touching ALL_HIP_EQUALIZER) exact width = 0.79
EQFILL.SHAPE.7.GF (TJGFILL touching ALL_HIP_EQUALIZER) exact length = 0.84
EQFILL.SHAPE.8.GF RXGFILL minimum space ≥ 0.14
≥ 0.07
RXGFILL minimum within (TJGFILL touching
ALL_HIP_EQUALIZER) with straddling prohibited
EQFILL.SHAPE.9.GF
≥ 0.07
RXGFILL minimum space to (TJGFILL touching
ALL_HIP_EQUALIZER)
EQFILL.SHAPE.10.GF
EQFILL.SHAPE.11.GF CTGFILL minimum overlap past (PCGFILLOPC with width = 0.04) ≥ 0.05
EQFILL.SHAPE.12.GF CTGFILL vertex is prohibited over (PCGFILL or PCGFILLOPC). - -
CELL.SHAPE.1.GF (HIP_EQUALIZER, HIP_EQUALIZER1) exact width = 0.84
CELL.SHAPE.2.GF (HIP_EQUALIZER, HIP_EQUALIZER1) exact length = 1.26
CELL.SHAPE.3.GF (HIP_EQUALIZER2, HIP_EQUALIZER3) exact width = 0.09
CELL.SHAPE.4.GF HIP_EQUALIZER2 exact length = 0.98
CELL.SHAPE.5.GF HIP_EQUALIZER3 exact length = 0.7
= 0.045
HIP_EQUALIZER2 exact overlap of (HIP_EQUALIZER,
HIP_EQUALIZER1) in dummy_gate_width direction
CELL.SHAPE.6.GF
= 0.045
HIP_EQUALIZER3 exact overlap of (HIP_EQUALIZER,
HIP_EQUALIZER1) in dummy_gate_width direction
CELL.SHAPE.7.GF
- -
[HIP_EQUALIZER touching (HIP_EQUALIZER2 or
HIP_EQUALIZER3)] must abut HIP_EQUALIZER1 with straddling
prohibited
CELL.SHAPE.8.GF
- -
HIP_EQUALIZER2 must touch (HIP_EQUALIZER,
HIP_EQUALIZER1)
CELL.SHAPE.9.GF
- -
HIP_EQUALIZER3 must touch (HIP_EQUALIZER,
HIP_EQUALIZER1)
CELL.SHAPE.10.GF
- -
(HIP_EQUALIZER1, HIP_EQUALIZER2, HIP_EQUALIZER3,
HIP_EQUALIZER) must be orthogonal rectangle
CELL.SHAPE.11.GF
RXGFILL.WIDTH.1.GF RXGFILLOPC must have exact width = 0.14 or exact width = 0.1 - -
RXGFILL.LENGTH.1.GF (RXGFILLOPC with width = 0.14) exact length = 0.49
RXGFILL.LENGTH.2.GF (RXGFILLOPC with width = 0.1) exact length = 0.46
≥ 0.14
(RXGFILLOPC with width = 0.14) minimum space to
RXGFILLOPC.
RXGFILL.SPACE.1.GF
RXGFILL.SPACE.2.GF (RXGFILLOPC with width = 0.1) minimum space. ≥ 0.1
≥ 0.11 [(RXGFILLOPC with width = 0.1) edge with span = 0.1 μm]
minimum space.
RXGFILL.SPACE.3.GF
PCGFILL.WIDTH.1.GF PCGFILLOPC minimum width ≥ 0.04
PCGFILL.LENGTH.1.GF 4 PCGFILLER_strap minimum length ≥ 0.382
≥ 0.48
[(PCGFILLOPC not touching ALL_HIP_EQUALIZER) with width
= 0.04] minimum length
PCGFILL.LENGTH.2.GF
PCGFILL.LENGTH.3.GF (PCGFILLOPC with width = 0.06) exact length = 0.46
≥ 0.1 [(PCGFILLOPC with width = 0.04) edge with span = 0.04 μm]
minimum space.
PCGFILL.SPACE.1.GF
PCGFILL.SPACE.2.GF PCGFILLOPC minimum space. ≥ 0.09
≥ 0.15 [(PCGFILLOPC with width = 0.06) edge with span = 0.06 μm]
minimum space.
PCGFILL.SPACE.3.GF
≥ 0.1
(PCGFILLOPC with width = 0.06) minimum space to
PCGFILLOPC.
PCGFILL.SPACE.3a.GF
CTGFILL.WIDTH.1.GF (CTGFILL not touching ALL_HIP_EQUALIZER) exact width = 0.08
- -
(CTGFILL touching ALL_HIP_EQUALIZER) must have exact
length = 0.7 or exact length = 0.98
CTGFILL.LENGTH.1.GF
CTGFILL.LENGTH.2.GF (CTGFILL not touching ALL_HIP_EQUALIZER) minimum length ≥ 0.28
CTGFILL.SPACE.1.GF (CTGFILL not touching ALL_HIP_EQUALIZER) minimum space ≥ 0.28
TJGFILL.WIDTH.1.GF (TJGFILL not touching ALL_HIP_EQUALIZER) exact width = 0.56
TJGFILL.LENGTH.1.GF (TJGFILL not touching ALL_HIP_EQUALIZER) exact length = 0.63
TJGFILL.SPACE.1.GF (TJGFILL not touching ALL_HIP_EQUALIZER) minimum space ≥ 0.42
= 0.02
{[(PCGFILLOPC not touching ALL_HIP_EQUALIZER) with width
= 0.04] touching RXGFILLOPC} over (RXGFILLOPC with width
= 0.14) exact width.
SECOND.SHAPE.1.GF
= 0.04
(PCGFILLOPC touching RXGFILLOPC) exact width with
coinciding prohibited.
SECOND.SHAPE.1a.GF
= 0.49
(PCGFILLOPC touching RXGFILLOPC) over RXGFILLOPC exact
length.
SECOND.SHAPE.1b.GF
- -
(PCGFILLOPC touching RXGFILLOPC) must touch RXGFILLOPC
outer vertex
SECOND.SHAPE.2.GF
≥ 0.025
[(PCGFILLOPC not touching ALL_HIP_EQUALIZER) with width
= 0.04] minimum overlap past {[(PCGFILLOPC touching
RXGFILLOPC) over RXGFILLOPC] when width = 0.02}
SECOND.SHAPE.3.GF
- -
(TJGFILL not touching ALL_HIP_EQUALIZER) must be coincident
with {[least enclosed rectangle of (RXGFILLOPC touching
TJGFILL)] sized by +0.07}
SECOND.SHAPE.4.GF
≥ 0.07
(RXGFILLOPC with width = 0.14) minimum space to (TJGFILL
not touching ALL_HIP_EQUALIZER)
SECOND.SHAPE.5.GF
≥ 0.05
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to {[(PCGFILLOPC not touching ALL_HIP_EQUALIZER) with
width = 0.04] edge with span = 0.04 μm}.
SECOND.SHAPE.6.GF
≥ 0.045
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to (PCGFILLOPC not touching ALL_HIP_EQUALIZER).
SECOND.SHAPE.6b.GF
≥ 0.05
(TJGFILL not touching ALL_HIP_EQUALIZER) minimum space
to {[(PCGFILLOPC not touching ALL_HIP_EQUALIZER) with
width = 0.06] edge with span = 0.06 μm}.
SECOND.SHAPE.6c.GF
= 0.04
(TJGFILL not touching ALL_HIP_EQUALIZER) exact overlap of
(CTGFILL not toucing ALL_HIP_EQUALIZER) in
dummy_gate_width direction
SECOND.SHAPE.7.GF 2
≥ 0.025
(PCGFILLOPC with width = 0.06) minimum space to
(RXGFILLOPC with width = 0.1).
THIRDFILL.SHAPE.1.GF
≥ 0.1
[(PCGFILLOPC with width = 0.06) edge with span > 0.06 μm]
minimum space to [(RXGFILLOPC with width = 0.1) edge with
span > 0.1 μm].
THIRDFILL.SHAPE.2.GF
- -
(PCGFILLOPC with width = 0.04, RXGFILLOPC with width =
0.14) must have width in same direction as [gate not over (EG or
FILL.SHAPE.1a.GF
ZG or NCAP or PCAP or HOR_GATE or ALVTor (CELLSNR
AND NW)) length].
- -
(PCGFILLOPC with width = 0.04, RXGFILLOPC with width =
0.14) must have the width aligned along the X-axis, when
GUARDEDG is present.
FILL.SHAPE.2a.GF
- -
(PCGFILLOPC with width = 0.06) must have width in the
perpendicular direction as (PCGFILLOPC with width = 0.04) width
FILL.SHAPE.3.GF
- -
(RXGFILLOPC with width = 0.1) must have width in the
perpendicular direction as (RXGFILLOPC with width = 0.14) width
FILL.SHAPE.4.GF
- -
(PCGFILLOPC touching ALL_HIP_EQUALIZER) must be
orthogonal. This check is only for $DESIGN_TYPE = CHIP or
POSTFILL_CHIP.
FILL.SHAPE.5.GF
- -
(RXGFILLOPC, xxGFILL) must be orthogonal rectangle, where xx
= RX, CT, TJ. This check is only for $DESIGN_TYPE = CHIP or
POSTFILL_CHIP.
FILL.SHAPE.5a.GF
- -
(PCGFILLOPC not touching ALL_HIP_EQUALIZER) must be
orthogonal rectangle. This check is only for $DESIGN_TYPE =
CHIP or POSTFILL_CHIP.
FILL.SHAPE.5b.GF
- -
(xxGFILLOPC, xzGFILL, ALL_HIP_EQUALIZER) must be within
CHIPEDGE, where xx = RX, PC; xz = RX, CT, TJ. This check is
only for $DESIGN_TYPE = CHIP or POSTFILL_CHIP.
FILL.SHAPE.6.GF
Note:
1. dummy_gate_length is defined the distance from (PCGFILLOPC edge to PCGFILLOPC edge) over RXGFILL
2. dummy_gate_width is defined The distance from (RXGFILL edge to RXGFILL edge) over PCGFILLOPC
3. PCGFILLER_finger = (PCGFLLOPC touching ALL_HIP_EQUALIZER) with exact width = 0.040 μm
4. PCGFILLER_strap = [(PCGFLLOPC touching ALL_HIP_EQUALIZER) NOT PCGFILLER_finger] with exact
width = 0.056 μm.
10.2 FEOL Fill Design Rules (CFILL0.9)
Table 181: FEOL Fill Design Rules
≥ 0.2
HIP_EQUALIZER minimum space to (RXFILL, PCFILL,
RXZFILL, PCZFILL) with touching prohibited.
EQFILL.EXCLS.1.GF.CFILL -
≥ 0.28
HIP_EQUALIZER minimum space to CTFILL with touching
prohibited.
EQFILL.EXCLS.2.GF.CFILL -
≥ 0.35
HIP_EQUALIZER minimum space to NWFILL with touching
prohibited.
EQFILL.EXCLS.3.GF.CFILL -
≥ 0.6
HIP_EQUALIZER minimum space to (PCEXCLUD, PCCRITEXCL,
RXEXCLUD, RXCRITEXCL) with straddling prohibited.
EQFILL.EXCLS.4.GF.CFILL -
≥ 0.35
HIP_EQUALIZER minimum space to (PROTECT, LOGOBND,
KERFEXCL, NWEXCLUD) with straddling prohibited.
EQFILL.EXCLS.5.GF.CFILL -
≥ 1.65
HIP_EQUALIZER minimum space to [(RX, PC, NWRES, PC_E2)
not touching (TCDMRK_FH, TCDMRK_FV)] with touching
prohibited.
EQFILL.EXCLS.6.GF.CFILL -
EQFILL.EXCLS.7.GF.CFILL - HIP_EQUALIZER minimum space to (EG, ZG). ≥ 0.35
≥ 0.35
HIP_EQUALIZER minimum within (EG, ZG) with straddling
prohibited.
EQFILL.EXCLS.8.GF.CFILL -
EQFILL.EXCLS.9.GF.CFILL - HIP_EQUALIZER minimum space to NW with touching prohibited. ≥ 0.35
EQFILL.EXCLS.9a.GF.CFILL - HIP_EQUALIZER minimum space to (PPLUS, NPLUS). ≥ 0.35
EQFILL.EXCLS.9b.GF.CFILL - HIP_EQUALIZER minimum within (PPLUS, NPLUS). ≥ 0.35
≥ 0.6
HIP_EQUALIZER minimum space to (NW touching EG) with
touching prohibited.
EQFILL.EXCLS.10.GF.CFILL -
≥ 0.8
HIP_EQUALIZER minimum space to (NW touching ZG) with
touching prohibited.
EQFILL.EXCLS.11.GF.CFILL -
≥ 0.4
HIP_EQUALIZER minimum space to (CELLSNR, LVTN, LVTP,
ELVTN, ELVTP, ZVT).
EQFILL.EXCLS.12.GF.CFILL -
≥ 0.4
HIP_EQUALIZER minimum within (CELLSNR, LVTN, LVTP,
ELVTN, ELVTP, ZVT) with straddling prohibited.
EQFILL.EXCLS.13.GF.CFILL -
≥ 0.4
HIP_EQUALIZER minimum space to (CELLACTIVE, AD) with
touching prohibited.
EQFILL.EXCLS.15.GF.CFILL -
≥ 0.35
HIP_EQUALIZER minimum space to (JFET, HAVAR) with
touching prohibited.
EQFILL.EXCLS.16.GF.CFILL -
≥ 0.35
HIP_EQUALIZER minimum space to (BFMOAT, IND, BIPOLAR,
OP) touching prohibited.
EQFILL.EXCLS.17.GF.CFILL -
≥ 2.76
HIP_EQUALIZER minimum space to (DRES, PRES) touching
prohibited.
EQFILL.EXCLS.18.GF.CFILL -
≥ 0.35
HIP_EQUALIZER minimum space to (NCAP, PCAP, DIODE, ED,
SCHKY).
EQFILL.EXCLS.19.GF.CFILL -
≥ 0.35
HIP_EQUALIZER minimum within (NCAP, PCAP, DIODE, ED,
SCHKY) with straddling prohibited.
EQFILL.EXCLS.20.GF.CFILL -
≥ 0.65
HIP_EQUALIZER minimum space to (EFUSE, PCFUSE) with
touching prohibited.
EQFILL.EXCLS.21.GF.CFILL -
≥ 2.76
HIP_EQUALIZER minimum space to (ESD_POLYB, ESD_HBM,
ESD_CDM) with touching prohibited.
EQFILL.EXCLS.22.GF.CFILL -
≥ 0.35
HIP_EQUALIZER minimum space to ESDSCR_HBM with touching
prohibited.
EQFILL.EXCLS.23.GF.CFILL -
≥ 0.8
HIP_EQUALIZER minimum space to (SRAM_SE, SRAM_SA,
RDSTK_8TLV, RDSTK_8TLR) with touching prohibited.
EQFILL.EXCLS.24.GF.CFILL -
EQFILL.EXCLS.26.GF.CFILL - HIP_EQUALIZER minimum space to STD_ROM. ≥ 0.4
≥ 0.4
HIP_EQUALIZER minimum within STD_ROM with straddling
prohibited.
EQFILL.EXCLS.27.GF.CFILL -
≥ 0
HIP_EQUALIZER minimum space to (TCDMRK_FH,
TCDMRK_FV, INDIEOVL1) with incurring prohibited.
EQFILL.EXCLS.28.GF.CFILL -
EQFILL.SHAPE.12.GF.CFILL - CTGFILL vertex is prohibited over (PCGFILL or PCGFILLOPC). - -
≥ 0.2
RXGFILLOPC minimum space to (RXFILL, PCFILL, NWFILL,
- RXZFILL, PCZFILL) with touching prohibited. RXGFILL.EXCLS.1.GF.CFILL
RXGFILL.EXCLS.2.GF.CFILL - RXGFILLOPC minimum space to CTFILL with touching prohibited. ≥ 0.1
≥ 0.2
RXGFILLOPC minimum space to (RXEXCLUD, RXCRITEXCL)
- with straddling prohibited. RXGFILL.EXCLS.3.GF.CFILL
≥ 0.2
RXGFILLOPC minimum space to (PROTECT, LOGOBND,
- KERFEXCL, NWRES) with touching prohibited. RXGFILL.EXCLS.4.GF.CFILL
RXGFILL.EXCLS.5.GF.CFILL - RXGFILLOPC minimum space to RX with touching prohibited. ≥ 0.3
RXGFILL.EXCLS.6.GF.CFILL - RXGFILLOPC minimum space to PC with touching prohibited. ≥ 0.24
RXGFILL.EXCLS.7.GF.CFILL - RXGFILLOPC minimum space to PC_E2 with touching prohibited. ≥ 0.1
≥ 0.12
RXGFILLOPC minimum space to (NW, EG, ZG, DRES, PRES,
- OP, CELLSNR, BFMOAT, IND). RXGFILL.EXCLS.8.GF.CFILL
≥ 0.12
RXGFILLOPC minimum within (NW, EG, ZG, DRES, PRES, OP,
- CELLSNR, BFMOAT, IND) with straddling prohibited. RXGFILL.EXCLS.9.GF.CFILL
- RXGFILLOPC minimum space to (NW touching EG). ≥ 0.26
RXGFILL.EXCLS.10.GF.CFIL
L
≥ 0.26
RXGFILLOPC minimum within (NW touching EG) with straddling
- prohibited.
RXGFILL.EXCLS.11.GF.CFIL
L
- RXGFILLOPC minimum space to (NW touching ZG). ≥ 0.44
RXGFILL.EXCLS.12.GF.CFIL
L
≥ 0.44
RXGFILLOPC minimum within (NW touching ZG) with straddling
- prohibited.
RXGFILL.EXCLS.13.GF.CFIL
L
- RXGFILLOPC minimum space to SCHKY. ≥ 0.35
RXGFILL.EXCLS.14.GF.CFIL
L
- RXGFILLOPC minimum within SCHKY with straddling prohibited. ≥ 0.35
RXGFILL.EXCLS.15.GF.CFIL
L
≥ 0.35
RXGFILLOPC minimum space to BIPOLAR with touching
- prohibited.
RXGFILL.EXCLS.16.GF.CFIL
L
- RXGFILLOPC minimum space to (NCAP, PCAP). ≥ 0.2
RXGFILL.EXCLS.17.GF.CFIL
L
≥ 0.2
RXGFILLOPC minimum within (NCAP, PCAP) with straddling
- prohibited.
RXGFILL.EXCLS.18.GF.CFIL
L
≥ 0.65
RXGFILLOPC minimum space to (EFUSE, PCFUSE) with touching
- prohibited.
RXGFILL.EXCLS.19.GF.CFIL
L
≥ 0.8
RXGFILLOPC minimum space to (RDSTK_8TLV, RDSTK_8TLR)
- with touching prohibited.
RXGFILL.EXCLS.20.GF.CFIL
L
- RXGFILLOPC minimum space to STD_ROM. ≥ 0.12
RXGFILL.EXCLS.22.GF.CFIL
L
≥ 0.12
RXGFILLOPC minimum within STD_ROM with straddling
- prohibited.
RXGFILL.EXCLS.23.GF.CFIL
L
≥ 0.35
RXGFILLOPC minimum space to (JFET, HAVAR) with touching
- prohibited.
RXGFILL.EXCLS.24.GF.CFIL
L
≥ 0
RXGFILLOPC minimum space to (TCDMRK_FH, TCDMRK_FV,
INDIEOVL1) with incurring prohibited.
-
RXGFILL.EXCLS.25.GF.CFIL
L
≥ 0.2
PCGFILLOPC minimum space to (RXFILL, PCFILL, CTFILL,
RXZFILL, PCZFILL) with touching prohibited.
PCGFILL.EXCLS.1.GF.CFILL -
≥ 0.2
PCGFILLOPC minimum space to (PCEXCLUD, PCCRITEXCL)
with straddling prohibited.
PCGFILL.EXCLS.2.GF.CFILL -
≥ 0.2
PCGFILLOPC minimum space to (PROTECT, LOGOBND,
KERFEXCL) with touching prohibited.
PCGFILL.EXCLS.3.GF.CFILL -
PCGFILL.EXCLS.4.GF.CFILL - PCGFILLOPC minimum space to (RX, PC) with touching prohibited. ≥ 0.24
PCGFILL.EXCLS.5.GF.CFILL - PCGFILLOPC minimum space to PC_E2 with touching prohibited. ≥ 0.23
PCGFILL.EXCLS.6.GF.CFILL - PCGFILLOPC minimum space to (DRES, PRES, OP). ≥ 0.12
≥ 0.12
PCGFILLOPC minimum within (DRES, PRES, OP) with straddling
prohibited.
PCGFILL.EXCLS.7.GF.CFILL -
≥ 0.35
PCGFILLOPC minimum space to BIPOLAR with touching
prohibited.
PCGFILL.EXCLS.8.GF.CFILL -
PCGFILL.EXCLS.9.GF.CFILL - PCGFILLOPC minimum space to (NCAP, PCAP, SCHKY). ≥ 0.2
≥ 0.2
PCGFILLOPC minimum within (NCAP, PCAP, SCHKY) with
- straddling prohibited.
PCGFILL.EXCLS.10.GF.CFIL
L
≥ 0.65
PCGFILLOPC minimum space to (EFUSE, PCFUSE) with touching
prohibited.
-
PCGFILL.EXCLS.11.GF.CFIL
L
≥ 0.35
PCGFILLOPC minimum space to (JFET, HAVAR) with touching
prohibited.
-
PCGFILL.EXCLS.12.GF.CFIL
L
≥ 0
PCGFILLOPC minimum space to (TCDMRK_FH, TCDMRK_FV,
INDIEOVL1) with incurring prohibited.
-
PCGFILL.EXCLS.13.GF.CFIL
L
≥ 0.1
(CTGFILL not touching HIP_EQUALIZER) minimum space to
(RXFILL, RXZFILL) with touching prohibited.
CTGFILL.EXCLS.1.GF.CFILL -
≥ 0.2
(CTGFILL not touching HIP_EQUALIZER) minimum space to
(PCFILL, PCZFILL) with touching prohibited.
CTGFILL.EXCLS.2.GF.CFILL -
≥ 0.28
(CTGFILL not touching HIP_EQUALIZER) minimum space to
CTFILL with touching prohibited.
CTGFILL.EXCLS.3.GF.CFILL -
≥ 0.2
(CTGFILL not touching HIP_EQUALIZER) minimum space to
(PCEXCLUD, PCCRITEXCL, PROTECT, LOGOBND,
KERFEXCL) with straddling prohibited.
CTGFILL.EXCLS.4.GF.CFILL -
≥ 0.38
(CTGFILL not touching HIP_EQUALIZER) minimum space to
(RX, PC) with touching prohibited.
CTGFILL.EXCLS.5.GF.CFILL -
≥ 0.26
(CTGFILL not touching HIP_EQUALIZER) minimum space to
PC_E2 with touching prohibited.
CTGFILL.EXCLS.6.GF.CFILL -
≥ 0
(CTGFILL not touching HIP_EQUALIZER) minimum space to
(TCDMRK_FH, TCDMRK_FV, INDIEOVL1) with incurring
prohibited.
CTGFILL.EXCLS.7.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(RXFILL, NWFILL, RXZFILL) with touching prohibited.
TJGFILL.EXCLS.1.GF.CFILL -
≥ 0.2
(TJGFILL not touching HIP_EQUALIZER) minimum space to
NWEXCLUD with straddling prohibited.
TJGFILL.EXCLS.2.GF.CFILL -
≥ 0.13
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(RXEXCLUD, RXCRITEXCL) with straddling prohibited.
TJGFILL.EXCLS.3.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(PROTECT, LOGOBND, KERFEXCL, NWRES) with touching
prohibited.
TJGFILL.EXCLS.4.GF.CFILL -
≥ 0.23
(TJGFILL not touching HIP_EQUALIZER) minimum space to RX
with touching prohibited.
TJGFILL.EXCLS.5.GF.CFILL -
≥ 0.17
(TJGFILL not touching HIP_EQUALIZER) minimum space to PC
with touching prohibited.
TJGFILL.EXCLS.6.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum space to (EG,
ZG).
TJGFILL.EXCLS.7.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum within (EG,
ZG) with straddling prohibited.
TJGFILL.EXCLS.8.GF.CFILL -
≥ 0.3
(TJGFILL not touching HIP_EQUALIZER) minimum space to NW
with touching prohibited.
TJGFILL.EXCLS.9.GF.CFILL -
≥ 0.3
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(PPLUS, NPLUS) with touching prohibited.
TJGFILL.EXCLS.9a.GF.CFILL -
≥ 0.3
(TJGFILL not touching HIP_EQUALIZER) minimum within
(PPLUS, NPLUS).
TJGFILL.EXCLS.9b.GF.CFILL -
≥ 0.6
(TJGFILL not touching HIP_EQUALIZER) minimum space to (NW
touching EG) with touching prohibited.
TJGFILL.EXCLS.10.GF.CFILL -
≥ 0.8
(TJGFILL not touching HIP_EQUALIZER) minimum space to (NW
touching ZG) with touching prohibited.
TJGFILL.EXCLS.11.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(CELLSNR, LVTN, LVTP, ELVTN, ELVTP, ZVT).
TJGFILL.EXCLS.12.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum within
(CELLSNR, LVTN, LVTP, ELVTN, ELVTP, ZVT) with straddling
prohibited.
TJGFILL.EXCLS.13.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(CELLACTIVE, AD) with touching prohibited.
TJGFILL.EXCLS.14.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(JFET, HAVAR) with touching prohibited.
TJGFILL.EXCLS.15.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(DRES, PRES, BIPOLAR, OP, BFMOAT, IND) with touching
prohibited.
TJGFILL.EXCLS.16.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(NCAP, PCAP, DIODE, ED, SCHKY).
TJGFILL.EXCLS.17.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum within
(NCAP, PCAP, DIODE, ED, SCHKY) with straddling prohibited.
TJGFILL.EXCLS.18.GF.CFILL -
≥ 0.58
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(EFUSE, PCFUSE) with touching prohibited.
TJGFILL.EXCLS.19.GF.CFILL -
≥ 0
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(TCDMRK_FH, TCDMRK_FV, INDIEOVL1) with incurring
prohibited.
TJGFILL.EXCLS.20.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum space to
ESDSCR_HBM with touching prohibited.
TJGFILL.EXCLS.21.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(ESD_POLYB, ESD_HBM, ESD_CDM).
TJGFILL.EXCLS.22.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum within
(ESD_POLYB, ESD_HBM, ESD_CDM) with straddling prohibited.
TJGFILL.EXCLS.23.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(SRAM_SE, SRAM_SA, RDSTK_8TLV, RDSTK_8TLR) with
touching prohibited.
TJGFILL.EXCLS.24.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum space to
STD_ROM.
TJGFILL.EXCLS.26.GF.CFILL -
≥ 0.35
(TJGFILL not touching HIP_EQUALIZER) minimum within
STD_ROM with straddling prohibited.
TJGFILL.EXCLS.27.GF.CFILL -
≥ 0.07
HIP_EQUALIZER minimum space to RXGFILLOPC with touching
prohibited.
HIPFILL.SPACE.1.GF.CFILL -
≥ 0.17
HIP_EQUALIZER minimum space to PCGFILLOPC with straddling
prohibited.
HIPFILL.SPACE.2.GF.CFILL -
≥ 0.28
HIP_EQUALIZER minimum space to (CTGFILL not touching
HIP_EQUALIZER).
HIPFILL.SPACE.3.GF.CFILL -
≥ 0.42
HIP_EQUALIZER minimum space to (TJGFILL not touching
HIP_EQUALIZER).
HIPFILL.SPACE.4.GF.CFILL -
≥ 0.12
(RXGFILLOPC with width = 0.14) minimum space to
- (RXGFILLOPC with width = 0.1) with touching prohibited. HIPFILL.SPACE.5.GF.CFILL
≥ 0.12
(RXGFILLOPC with width = 0.14) minimum space to
- (PCGFILLOPC with width = 0.06) with touching prohibited. HIPFILL.SPACE.6.GF.CFILL
≥ 0.1
(PCGFILLOPC with width = 0.04) minimum space to
(RXGFILLOPC with width = 0.1) with touching prohibited.
HIPFILL.SPACE.7.GF.CFILL -
≥ 0.1
[(PCGFILLOPC not touching HIP_EQUALIZER) with width =
0.04] minimum space to (PCGFILLOPC with width = 0.06) with
touching prohibited.
HIPFILL.SPACE.8.GF.CFILL -
≥ 0.19
(CTGFILL not touching HIP_EQUALIZER) minimum space to
(PCGFILLOPC with width = 0.06) with touching prohibited.
HIPFILL.SPACE.9.GF.CFILL -
≥ 0.05
(TJGFILL not touching HIP_EQUALIZER) minimum space to
(RXGFILLOPC with width = 0.1) with touching prohibited.
HIPFILL.SPACE.10.GF.CFILL -
- -
RXGFILL must be orthogonal rectangle with length and width either
(1.05 x 0.378) or (1.225 x 0.252).
RXGFILL.SHAPE.1.GF.CFILL -
PCGFILL.SHAPE.1.GF.CFILL 3, 4 PCGFILL must be (PCGFILLER_finger or PCGFILLER_strap). - -
- -
PCGFILL exact overlap past RXGFILL in dummy_gate_length
direction is either 0.046 or 0.049.
PCGFILL.EX.RX.1.GF.CFILL 1
≥ 0.159
PCGFILL minimum overlap past RXGFILL in dummy_gate_width
direction.
PCGFILL.EX.RX.2.GF.CFILL 2
RXGFILL.S.1.GF.CFILL - RXGFILL minimum space. ≥ 0.175
≥ 0.087
RXGFILL minimum within (TJGFILL touching HIP_EQUALIZER)
with straddling prohibited.
RXGFILL.EN.TJ.1.GF.CFILL -
≥ 0.168
RXGFILL minimum space to (TJGFILL touching
HIP_EQUALIZER).
RXGFILL.S.TJ.1.GF.CFILL -
PCGFILL.S.1.GF.CFILL - PCGFILL minimum space. ≥ 0.08
- -
(HIP_EQUALIZER sized by 0.1) must be coincident with
- HIP_EQUALIZER2. CELL.SHAPE.2.GF.CFILL
RXGFILL.WIDTH.1.GF.CFILL - RXGFILLOPC must have exact width = 0.14 or exact width = 0.1. - -
- (RXGFILLOPC with width = 0.14) exact length. = 0.49
RXGFILL.LENGTH.1.GF.CFIL
L
- (RXGFILLOPC with width = 0.1) exact length. = 0.46
RXGFILL.LENGTH.2.GF.CFIL
L
≥ 0.14
(RXGFILLOPC with width = 0.14) minimum space to
- RXGFILLOPC. RXGFILL.SPACE.1.GF.CFILL
RXGFILL.SPACE.2.GF.CFILL - (RXGFILLOPC with width = 0.1) minimum space. ≥ 0.1
≥ 0.11 [(RXGFILLOPC with width = 0.1) edge with span = 0.1 μm]
minimum space.
RXGFILL.SPACE.3.GF.CFILL -
PCGFILL.WIDTH.1.GF.CFILL - PCGFILLOPC must have exact width = 0.04 or 0.06. - -
- (PCGFILLOPC with width = 0.04) minimum length. ≥ 0.54
PCGFILL.LENGTH.2.GF.CFIL
L
- (PCGFILLOPC with width = 0.06) exact length. = 0.46
PCGFILL.LENGTH.3.GF.CFIL
L
≥ 0.1 [(PCGFILLOPC with width = 0.04) edge with span = 0.04 μm]
minimum space.
PCGFILL.SPACE.1.GF.CFILL -
PCGFILL.SPACE.2.GF.CFILL - PCGFILLOPC minimum space. ≥ 0.09
≥ 0.15 [(PCGFILLOPC with width = 0.06) edge with span = 0.06 μm]
minimum space.
PCGFILL.SPACE.3.GF.CFILL -
≥ 0.1
(PCGFILLOPC with width = 0.06) minimum space to
PCGFILLOPC.
PCGFILL.SPACE.3a.GF.CFILL -
CTGFILL.WIDTH.1.GF.CFILL - (CTGFILL not touching HIP_EQUALIZER) exact width. = 0.08
CTGFILL.WIDTH.2.GF.CFILL - (CTGFILL touching HIP_EQUALIZER) exact width. = 0.14
- (CTGFILL touching HIP_EQUALIZER) minimum length. ≥ 1.4
CTGFILL.LENGTH.1.GF.CFIL
L
- (CTGFILL not touching HIP_EQUALIZER) minimum length. ≥ 0.28
CTGFILL.LENGTH.2.GF.CFIL
L
CTGFILL.SPACE.1.GF.CFILL - (CTGFILL not touching HIP_EQUALIZER) minimum space. ≥ 0.28
CTGFILL.SPACE.2.GF.CFILL - (CTGFILL touching HIP_EQUALIZER) minimum space. ≥ 1.12
≥ 0.05
(CTGFILL not touching HIP_EQUALIZER) minimum overlap past
PCGFILLOPC.
CTGFILL.EX.PC.1.GF.CFILL -
≥ 0.05
(CTGFILL touching HIP_EQUALIZER) minimum overlap past
PCGFILL in dummy_gate_length direction.
CTGFILL.EX.PC.2.GF.CFILL 1
≥ 0.042
(CTGFILL touching HIP_EQUALIZER) minimum overlap past
PCGFILL in dummy_gate_width direction.
CTGFILL.EX.PC.3.GF.CFILL 2
TJGFILL.WIDTH.1.GF.CFILL - (TJGFILL not touching HIP_EQUALIZER) exact width. = 0.56
TJGFILL.WIDTH.2.GF.CFILL - (TJGFILL touching HIP_EQUALIZER) exact width. = 0.63
- (TJGFILL not touching HIP_EQUALIZER) exact length. = 0.63
TJGFILL.LENGTH.1.GF.CFIL
L
- (TJGFILL touching HIP_EQUALIZER) minimum length. ≥ 1.4
TJGFILL.LENGTH.2.GF.CFIL
L
TJGFILL.SPACE.1.GF.CFILL - (TJGFILL not touching HIP_EQUALIZER) minimum space. ≥ 0.42
TJGFILL.SPACE.2.GF.CFILL - (TJGFILL touching HIP_EQUALIZER) minimum space. ≥ 0.63
= 0.02
[(PCGFILLOPC with width = 0.04) touching RXGFILLOPC] over
RXGFILLOPC exact width.
SECOND.SHAPE.1.GF.CFILL -
= 0.04
(PCGFILLOPC touching RXGFILLOPC) exact width with
coinciding prohibited.
SECOND.SHAPE.1a.GF.CFILL -
= 0.49
(PCGFILLOPC touching RXGFILLOPC) over RXGFILLOPC exact
length.
-
SECOND.SHAPE.1b.GF.CFIL
L
- -
(PCGFILLOPC touching RXGFILLOPC) must touch RXGFILLOPC
outer vertex.
SECOND.SHAPE.2.GF.CFILL -
≥ 0.025
(PCGFILLOPC with width = 0.04) minimum overlap past
{[(PCGFILLOPC touching RXGFILLOPC) over RXGFILLOPC]
when width = 0.02}.
SECOND.SHAPE.3.GF.CFILL -
- -
(TJGFILL not touching HIP_EQUALIZER) must be coincident with
{[least enclosed rectangle of (RXGFILLOPC touching TJGFILL)]
sized by +0.07}.
SECOND.SHAPE.4.GF.CFILL -
≥ 0.07
(RXGFILLOPC with width = 0.14) minimum space to (TJGFILL
not touching HIP_EQUALIZER).
SECOND.SHAPE.5.GF.CFILL -
≥ 0.05
(TJGFILL not touching HIP_EQUALIZER) minimum space to
[(PCGFILLOPC with width = 0.04) edge with span = 0.04 μm].
SECOND.SHAPE.6.GF.CFILL -
≥ 0.045
(TJGFILL not touching HIP_EQUALIZER) minimum space to
PCGFILLOPC.
-
SECOND.SHAPE.6b.GF.CFIL
L
≥ 0.05
(TJGFILL not touching HIP_EQUALIZER) minimum space to
[(PCGFILLOPC with width = 0.06) edge with span = 0.06 μm].
SECOND.SHAPE.6c.GF.CFILL -
= 0.04
(TJGFILL not touching HIP_EQUALIZER) exact overlap of
(CTGFILL not toucing HIP_EQUALIZER) in dummy_gate_width
direction.
SECOND.SHAPE.7.GF.CFILL 2
≥ 0.025
(PCGFILLOPC with width = 0.06) minimum space to
(RXGFILLOPC with width = 0.1).
-
THIRDFILL.SHAPE.1.GF.CFI
LL
≥ 0.1
[(PCGFILLOPC with width = 0.06) edge with span > 0.06 μm]
minimum space to [(RXGFILLOPC with width = 0.1) edge with
span > 0.1 μm].
-
THIRDFILL.SHAPE.2.GF.CFI
LL
- -
(PCGFILLER_finger, PCGFILLOPC with width = 0.04,
RXGFILLOPC with width = 0.14) must have width in same direction
FILL.SHAPE.1a.GF.CFILL -
as [gate not over (EG or ZG or NCAP or PCAP or HOR_GATE or
ALVT or (CELLSNR AND NW)) length].
- -
(PCGFILLER_finger, PCGFILLOPC with width = 0.04,
RXGFILLOPC with width = 0.14) must have the width aligned along
the X-axis, when GUARDEDG is present.
FILL.SHAPE.2a.GF.CFILL -
- -
(PCGFILLOPC with width = 0.06) must have width in the
- perpendicular direction as (PCGFILLOPC with width = 0.04) width. FILL.SHAPE.3.GF.CFILL
- -
(RXGFILLOPC with width = 0.1) must have width in the
- perpendicular direction as (RXGFILLOPC with width = 0.14) width. FILL.SHAPE.4.GF.CFILL
- -
(PCGFILL touching HIP_EQUALIZER) must be orthogonal. This
- check is only for $DESIGN_TYPE = CHIP or POSTFILL_CHIP. FILL.SHAPE.5.GF.CFILL
- -
(xyGILLOPC, xxGFILL) must be orthogonal rectangle, where xx
= RX, CT, TJ; xy = RX, PC. This check is only for $DESIGN_TYPE
= CHIP or POSTFILL_CHIP.
FILL.SHAPE.5a.GF.CFILL -
- -
(xxGFILLOPC, xzGFILL, HIP_EQUALIZER, HIP_EQUALIZER2)
must be within CHIPEDGE, where xx = RX, PC; xz = RX, PC, CT,
FILL.SHAPE.6.GF.CFILL -
TJ. This check is only for $DESIGN_TYPE = CHIP or
POSTFILL_CHIP.
Note:
1. dummy_gate_length is defined the distance from (PCGFILL edge to PCGFILL edge) over RXGFILL.
2. dummy_gate_width is defined The distance from (RXGFILL edge to RXGFILL edge) over PCGFILL.
3. PCGFILLER_finger = PCGFILL with exact width = 0.095 μm.
4. PCGFILLER_strap = PCGFILL NOT PCGFILLER_finger with exact width = 0.085 μm.
10.3 BEOL Metal Fill Design Rules
Table 182: BEOL Metal Fill Design Rules
- -
[Union (xxFILL, xxOPCFILL)] must not touch [Union (xx, xxZFILL,
KERFEXCL, LOGOBND, PROTECT)], where xx = M1-M6, BA,
IA, IB, JA, JB and OI.
DS500 1
xxFILL must not touch xxOPCFILL, where xx = M1-M6, BA, IA, - -
IB, JA, JB and OI.
DS501 1
(xxFILL, xxOPCFILL) straddling xxEXCLUD is prohibited, xx = - -
M1-M6, BA, IA, IB, JA, JB and OI.
DS503 4
≥ 0.48
(M1FILL, M1OPCFILL) minimum space to PCFUSE with touching
prohibited.
DS502
≥ 0
(MxFILL, MxZFILL, MxOPCFILL) minimum space to
TCDMRK_FM with incurring prohibited, where Mx = M1-M6.
DS511a
≥ 0.15
(MxFILL, MxOPCFILL) minimum space to (Mx or MxZFILL) with
run length > 0.2 μm, where Mx = M1-M6.
DS511b
≥ 0.13
(MxFILL, MxOPCFILL) minimum space to (Mx or MxZFILL),
where Mx = M1-M6.
DS511d
≥ 0
(MxFILL, MxZFILL, MxOPCFILL) minimum space to INDIEOVL1
with incurring prohibited, where Mx = M1, M2
DS511e
≥ 0.2
(MxFILL, MxOPCFILL) minimum space to (KERFEXCL,
LOGOBND, MxEXCLUD, MxCRITEXCL, PROTECT), where
Mx = M1-M6.
DS512 4
≥ 0.116
(MxFILL, MxOPCFILL) minimum space to MxFILL, where Mx =
M1- M6.
DS515
DS515OPC MxOPCFILL minimum space, where Mx = M1- M6. ≥ 0.08
DS515IND (MxFILL touching IND) minimum space, where Mx = M1- M6. ≥ 0.32
DS517 MxOPCFILL maximum length, where Mx = M1- M6. ≤ 1.5
DS518 MxFILL minimum area, where Mx = M1- M6. ≥ 0.0256
DS518OPC MxOPCFILL minimum area, where Mx = M1- M6. ≥ 0.02
= 0.4704
[MLAST1xFILL touching (YXFILL or YSFILL or JQFILL)] exact
area.
DS518a 3
= 0.28
(MxFILL not touching IND) exact width and length, where Mx =
M1- M6.
DS519 2
DS519OPC MxOPCFILL minimum width, where Mx = M1- M6. ≥ 0.08
= 0.16
(MxFILL touching IND) exact width and length, where Mx = M1-
M6.
DS519IND
- -
[MxFILL touching (YXFILL, JQFILL)] inner vertex must be
connected to two short edge with exact length = 0.14 and exact length
= 0.42, where Mx = M4- M6.
DS519a
≥ 0.2
(BAFILL, BAOPCFILL) minimum space to (BA or BAZFILL),
with run length > 0.4 μm
DS521a_L
DS521d_L (BAFILL, BAOPCFILL) minimum space to (BA or BAZFILL). ≥ 0.16
≥ 0.28
(BAFILL, BAOPCFILL) minimum space to (BAEXCLUD,
BACRITEXCL, KERFEXCL, LOGOBND, PROTECT)
DS522_L
DS525_L (BAFILL, BAOPCFILL) minimum space to BAFILL ≥ 0.28
DS525OPC_L BAOPCFILL minimum space ≥ 0.2
DS525IND_L (BAFILL touching IND) minimum space ≥ 0.5
DS527_L (BAFILL not touching IND) exact width and length = 0.56
DS527OPC_L BAOPCFILL minimum width ≥ 0.16
DS527IND_L (BAFILL touching IND) exact width and length = 0.25
DS528_L BAOPCFILL maximum length ≤ 3
DS529_L BAFILL minimum area ≥ 0.0625
DS529OPC_L BAOPCFILL minimum area ≥ 0.08
≥ 0.64
(IxFILL, IxOPCFILL) minimum space to (Ix or IxZFILL), with run
length > 1.6 μm, where Ix = IA, IB.
DS561a
≥ 0.48
(IxFILL, IxOPCFILL) minimum space to (Ix or IxZFILL), where
Ix = IA, IB.
DS561d
≥ 1.12
(IxFILL, IxOPCFILL) space to (KERFEXCL, LOGOBND,
PROTECT, IxEXCLUD, IxCRITEXCL), where Ix = IA, IB.
DS562 4
≥ 1.12
IxFILL minimum space to (IxFILL, IxOPCFILL), where Ix = IA,
IB.
DS565
DS565OPC IxOPCFILL minimum space, where Ix = IA, IB. ≥ 0.8
DS565IND (IxFILL touching IND) minimum space, where Ix = IA, IB. ≥ 2.0
= 2.24
(IxFILL not touching IND) exact width and length, where Ix = IA,
IB.
DS567
DS567OPC IxOPCFILL minimum width, where Ix = IA, IB. ≥ 0.64
DS567IND (IxFILL touching IND) exact width and length, where Ix = IA, IB. = 1.0
DS568 IxOPCFILL maximum length, where Ix = IA, IB. ≤ 12
DS569 IxFILL minimum area, where Ix = IA, IB. ≥ 1.0
DS569OPC IxOPCFILL minimum area, where Ix = IA, IB. ≥ 1.28
≥ 0.80
(JxFILL, JxOPCFILL) minimum space to (Jx or JxZFILL), with run
length > 2.00 μm, where Jx = JA, JB.
DS571a
≥ 0.60
(JxFILL, JxOPCFILL) minimum space to (Jx or JxZFILL), where
Jx = JA, JB.
DS571d
≥ 1.40
(JxFILL, JxOPCFILL) space to (KERFEXCL, LOGOBND,
PROTECT, JxEXCLUD, JxCRITEXCL), where Jx = JA, JB.
DS572
≥ 1.12
JxFILL minimum space to (JxFILL, JxOPCFILL), where Jx = JA,
JB.
DS575
DS575OPC JxOPCFILL minimum space, where Jx = JA, JB. ≥ 0.80
DS575IND (JxFILL touching IND) minimum space, where Jx = JA, JB. ≥ 3.00
= 2.24
(JxFILL not touching IND) exact width and length. JxFILL must be
orthogonal rectangle, where Jx = JA, JB.
DS577
DS577OPC JxOPCFILL minimum width, where Jx = JA, JB. ≥ 0.80
= 1.50
(JxFILL touching IND) exact width and length. JxFILL must be
orthogonal rectangle, where Jx = JA, JB.
DS577IND
DS578 JxOPCFILL maximum length, where Jx = JA, JB. ≤ 15.00
DS579OPC JxOPCFILL minimum area, where Jx = JA, JB. ≥ 2.00
DS581a ((OIFILL, OIOPCFILL) with width > 6 μm) minimum space to OI. ≥ 2.4
DS581b ((OIFILL, OIOPCFILL) with width ≤ 6 μm) minimum space to OI. ≥ 1.6
≥ 5.6 (OIFILL, OIOPCFILL) space to (KERFEXCL, LOGOBND,
PROTECT, OIEXCLUD, OICRITEXCL).
DS582
DS585 OIFILL minimum space to (OIFILL, OIOPCFILL) ≥ 2.24
DS585OPC OIOPCFILL minimum space. ≥ 2.56
DS585IND (OIFILL touching IND) minimum space. ≥ 4
DS587 (OIFILL not touching IND) exact width and length. = 4.48
DS587OPC OIOPCFILL minimum width ≥ 2.4
DS587IND (OIFILL touching IND) exact width and length. = 2
DS588 (OIFILL, OIOPCFILL) maximum length. ≤ 45
DS589 OIFILL minimum area. ≥ 4
(xxFILL, xxOPCFILL) must be orthogonal rectangle, where xx = - -
M1-M6, BA, IA, IB, JA, JB and OI.
DS598 2
≥ 0 (xxFILL, xxOPCFILL) must be within CHIPEDGE, where xx =
M1-M6, BA, IA, IB, JA, JB and OI.
DS599 5
xxOPCFILL touching IND is prohibited, where xx = M1-M6, BA, - -
IA, IB, JA, JB and OI.
INDFILL245
Notes:
1. This rule is to check same metal level for xx and xxFILL.
2. (MLAST1xFILL with area = 0.4704) is exempted from this check.
3. JQFILL only refers to the via for connecting MLAST1xFILL to OIFILL in this rule.
4. This check is only for cell-level fill checking example $DESIGN_TYPE = CELL.
5. The rule is checked at chip level only.
Table 183: BEOL Via Fill Design Rules
- -
VxFILL must not touch (LOGOBND, PROTECT, KERFEXCL),
where Vx=V1-V5, WT, YX, YZ, XA, YS, YR, XD, JQ.
DS700
- -
VxFILL straddling VxEXCLUD is prohibited, where Vx=V1-V5,
WT, YX, YZ, XA, YS, YR, XD, JQ.
DS701 1
- -
[MxFILL over M(x+1)FILL] with width ≥ 0.130 μm must contain
at least one VxFILL, where x=1-5; {[MxFILL over M(x+1)FILL]
DS710
with width >= 0.130 um} incurring [(VxEXCLUD sized by 0.2 μm),
IND] is exempted from this check.
≥ 0.04
VxFILL must be within MxFILL, where Vx=V1-V5 and Mx=metal
level below Vx.
DS711
≥ 0.04
VxFILL must be within MyFILL, where Vx=V1-V5 and My=metal
level above Vx.
DS712
DS713 VxFILL space, where Vx=V1-V5. ≥ 0.1
DS714 VxFILL length and width, where Vx=V1-V5. = 0.05
DS721_L WTFILL must be within BAFILL ≥ 0.02
DS723_L WTFILL space. ≥ 0.32
DS724_L WTFILL exact length and width. = 0.1
≥ 0.02
WTFILL must be within MxFILL, where Mx=MLAST1X metal
level below Wx.
DS725_L
DS741 XAFILL must be within IxFILL, where Ix=IA-IB. ≥ 0.08
DS742 XAFILL space. ≥ 1.28
DS743 XAFILL exact length and width. = 0.36
≥ 0.1
YXFILL must be within MxFILL, where Mx=MLAST1X metal
level below YX.
DS744a
DS745a YXFILL must be within IAFILL. ≥ 0.1
DS746a YXFILL space. ≥ 0.76
DS747a YXFILL exact length and width. = 0.36
≥ 0.1
YZFILL must be within BxFILL, where Bx=BLAST2X metal level
below YZ.
DS744b
DS745b YZFILL must be within IAFILL. ≥ 0.1
DS746b YZFILL space. ≥ 0.48
DS747b YZFILL exact length and width. = 0.36
DS751 XDFILL must be within JxFILL, where Jx = JA, JB. ≥ 0.08
DS752 XDFILL minimum space. ≥ 1.16
DS753 XDFILL exact length and width. = 0.46
≥ 0.05
YSFILL must be within MxFILL, where Mx = MLAST1x metal
level below YS.
DS754a
≥ 0.05
YRFILL must be within BxFILL, where Bx = BLAST2x metal level
below YR.
DS754b
DS755a YSFILL must be within JAFILL. ≥ 0.33
DS755b YRFILL must be within JAFILL. ≥ 0.33
DS756a YSFILL minimum space. ≥ 0.66
DS756b YRFILL minimum space. ≥ 0.66
DS757a YSFILL exact length and width. = 0.46
DS757b YRFILL exact length and width. = 0.46
≥ 0.08
JQFILL must be within (MLAST1xFILL, ILAST8xFILL), where
(MLAST1xFILL, ILAST8xFILL) metal level below JQFILL.
DS771
DS772 JQFILL must be within OIFILL. ≥ 0.08
DS773 JQFILL space. ≥ 0.76
DS774 JQFILL exact length and width. = 0.36
≥ 0
(VxFILL, VxZFILL, VxZFILLLRG, WTZFILL) space to
TCDMRK_FM with incurring prohibited, where Vx=V1-V5.
DS797
- -
VxFILL must be orthogonal square, where Vx=V1-V5, WT, YX,
YZ, XA, YS, YR, XD, JQ.
DS798
- -
VxFILL must be within CHIPEDGE, where Vx=V1-V5, WT, YX,
2 YZ, XA, YS, YR, XD, JQ. DS799
≥ 0
(V1FILL, V1ZFILL, V1ZFILLLRG) space to INDIEOVL1 with
incurring prohibited
DS800
- -
(VxFILL, VyZFILL, VzZFILLLRG) touching IND is prohibited,
where Vx=V1-V5, WT, YX, YZ, XA, YS, YR, XD, JQ, Vy=V1-V5,
WT, Vz=V1-V5.
INDFILL225
Notes:
1. This check is only for cell-level fill checking example $DESIGN_TYPE = CELL.
2. The rule is checked at chip level only.
10.4 Local Pattern Design Rules
Table 184: Local Pattern Design Rules
≥ 20
Minimum Density (%) (RX, RXFILL, RXZFILL, RXGFILL,
RXGFILLOPC) with 100 um tiling, 50 um step.
RXDENS.MIN.3 2
≥ 20
Minimum Density (%) (RX, RXFILL, RXZFILL, RXGFILL,
RXGFILLOPC) with 125 um tiling, 62.5 um step.
RXDENS.MIN.3b 2
≥ 20
Minimum Density (%) (RX, RXFILL, RXZFILL, RXGFILL,
RXGFILLOPC) with 100 um tiling, 50 um step within RXEXCLUD.
RXDENS.EXMIN.3 2
≤ 90
Maximum Density (%) (RX, RXFILL, RXZFILL, RXGFILL,
RXGFILLOPC) with 100 um tiling, 50 um step.
RXDENS.MAX.3 -
≤ 85
Maximum Density (%) (RX, RXFILL, RXZFILL, RXGFILL,
RXGFILLOPC) with 100 um tiling, 50 um step.
RXDENS.MAX.3b -
≤ 80
Maximum Density (%) (RX, RXFILL, RXZFILL, RXGFILL,
RXGFILLOPC) with 125 um tiling, 62.5 um step, when Density
(%) (EG, ZG) > 25
RXDENS.MAX.4a -
≤ 70
Maximum Density (%) (RX, RXFILL, RXZFILL, RXGFILL,
RXGFILLOPC) with 125 μm tiling, 62.5 μm step, when Density
(%) (EG, ZG) ≤ 25
RXDENS.MAX.4b -
≤ 70
Maximum Density (%) (RX, RXFILL, RXZFILL, RXGFILL,
RXGFILLOPC) with 250 um tiling, 125 um step.
RXDENS.MAX.5 -
≥ 0.004
Minimum Density (%) {[(RX, RXFILL, RXZFILL, RXGFILL,
RXGFILLOPC) sized by 0.530 um] not [(RX, RXFILL, RXZFILL,
RXPDEN.MIN.2.GF.R 1
RXGFILL, RXGFILLOPC) sized by 0.529 um]} with 50 um tiling,
25 um step.
≤ 15
[BOUNDARY not (RX, RXFILL, RXZFILL, RXGFILL,
RXGFILLOPC)] width.
RXEMTW.MAX.GF.R -
≥ 5
[Summed (PC_E2 OR CTGFILL) area across full chip] /
(GUARDEDG area) minimum density (%).
CTDENS.MIN.1.R
≥ 15
Minimum Density (%) {(PC not over PC_E2), (PCFILL not over
CTFILL), (PCZFILL not over CTZFILL), (PCGFILLOPC not over
PCDENS.MIN.3 2
CTGFILL), (PCGFILL not over CTGFILL)} with 25 um tiling, 12.5
um step.
≥ 15
Minimum Density (%) {(PC not over PC_E2), (PCFILL not over
CTFILL), (PCZFILL not over CTZFILL), (PCGFILLOPC not over
PCDENS.EXMIN.1 3
CTGFILL), (PCGFILL not over CTGFILL)} with 25 um tiling, 12.5
um step within PCEXCLUD.
≤ 70
Maximum Density (%) {(PC not over PC_E2), (PCFILL not over
CTFILL), (PCZFILL not over CTZFILL), (PCGFILLOPC not over
PCDENS.MAX.1 -
CTGFILL), (PCGFILL not over CTGFILL)} with 25 um tiling, 12.5
um step.
≥ 20
Minimum Density (%) {[(PC, PCFILL, PCZFILL, PCGFILLOPC,
PCGFILL) sized by 0.032 um] not (PC, PCFILL, PCZFILL,
PCGFILLOPC, PCGFILL)} with 250 um tiling, 125 um step.
PCPDEN.MIN.5.GF.R 2
≤ 56
Maximum Density (%) [(PC, PCFILL, PCZFILL, PCGFILLOPC,
PCGFILL) sized by 0.032 um] not (PC, PCFILL, PCZFILL,
PCGFILLOPC, PCGFILL) with 250 um tiling, 125 um step.
PCPDEN.MAX.5.GF.R -
≤ 15
[BOUNDARY not (PC, PCFILL, PCZFILL, PCGFILLOPC,
PCGFILL)] width.
PCEMTW.MAX.GF.R -
≥ 35
Minimum Density % [Union (PC, PCFILL, PCGFILL,
PCGFILLOPC, PCZFILL) sized by +0.015μm] across full chip.
PDPCb -
≥ 1.6
Minimum Density % {[Union(PC, PCFILL, PCGFILL, PCZFILL,
PCGFILLOPC) over Union(PC_E2, CTFILL, CTGFILL, CTZFILL)]
or PC_CT_SRAM} across full chip.
PDPCE2 4
≥ 9
Minimum Density (%) {[TJ (as generated by Boolean) and (RX or
RXGFILLOPC or RXZFILL or RXGFILL or RXFILL)] NOT [[(PC
eSiGEDENS.MIN.1 5, 6 or PCGFILLOPC or PCZFILL or PCGFILL or PCFILL) sized by
0.014 μm] NOT (PC_E2 or CTGFILL)]} across full chip.
≤ 12
Maximum Density (%) {[TJ (as generated by Boolean) and (RX or
RXGFILLOPC or RXZFILL or RXGFILL or RXFILL)] NOT [[(PC
eSiGEDENS.MAX.1 5, 6 or PCGFILLOPC or PCZFILL or PCGFILL or PCFILL) sized by
0.014 μm] NOT (PC_E2 or CTGFILL)]} across full chip.
≥ 10
Minimum Density (%) (Mx, MxFILL, MxOPCFILL, MxZFILL)
with 125 μm tiling, 62.5 μm step, where x = 1-6.
MXDENS.MIN.2 -
≥ 20
Minimum density (%) (Mx, MxFILL, MxOPCFILL, MxZFILL)
with 125 μm tiling, 62.5 μm step, where x = 1-6.
MXDENS.MIN.2R -
≥ 1
Minimum Density (%) (Mx, MxFILL, MxOPCFILL, MxZFILL)
with 50 μm tiling, 25 μm step, where x = 1-6.
MXDENS.MIN.3 -
≥ 15
Minimum sum of density values (%) Union [Mx, MxFILL,
MxOPCFILL, MxZFILL, M(x+1), M(x+1)FILL, M(x+1)OPCFILL,
MXDENS.MIN.4 - M(x+1)ZFILL, M(x+2), M(x+2)FILL, M(x+2)OPCFILL,
M(x+2)ZFILL] with 30 μm tiling, 15 μm step, where x = 1-4.
≤ 85
Maximum Density (%) (Mx, MxFILL, MxOPCFILL, MxZFILL)
with 125 μm tiling, 62.5 μm step, where x = 1-6.
MXDENS.MAX.2a -
≤ 245
Maximum sum of density values (%) Union [Mx,
MxFILL,MxOPCFILL, MxZFILL, M(x+1), M(x+1)FILL,
MXDENS.MAX.3 - M(x+1)OPCFILL, M(x+1)ZFILL, M(x+2), M(x+2)FILL,
M(x+2)OPCFILL, M(x+2)ZFILL] with 60 μm tiling, 30 μm step,
where x = 1-4.
≤ 45
Density difference (%) (Mx, MxFILL, MxOPCFILL, MxZFILL)
for adjacent windows with 200 μm tiling, 200 μm step, where x =
1-6.
MXGRAD.MAX.4 -
≥ 10
Minimum Density (%) (BA, BAFILL, BAOPCFILL, BAZFILL)
with 125 μm tiling, 62.5 μm step.
BADENS.MIN.2_L -
≥ 20
Minimum density (%) (BA, BAFILL, BAOPCFILL, BAZFILL)
with 125 μm tiling, 62.5 μm step.
BADENS.MIN.2R_L -
≥ 1
Minimum Density (%) (BA, BAFILL, BAOPCFILL, BAZFILL)
with 50 μm tiling, 25 μm step.
BADENS.MIN.3_L -
≤ 85
Maximum Density (%) (BA, BAFILL, BAOPCFILL, BAZFILL)
with 125 μm tiling, 62.5 μm step.
BADENS.MAX.2a_L -
≤ 45
Density difference (%) (BA, BAFILL, BAOPCFILL, BAZFILL)
for adjacent windows with 200 μm tiling, 200 μm step.
BAGRAD.MAX.4_L -
≥ 10
Minimum Density (%) (Ix, IxFILL, IxOPCFILL, IxZFILL) with
125 μm tiling, 62.5 μm step, where x = A, B.
IXDENS.MIN.2 -
≥ 20
Minimum density (%) (Ix, IxFILL, IxOPCFILL, IxZFILL) with 125
μm tiling, 62.5 μm step, where x = A, B.
IXDENS.MIN.2R -
≤ 85
Maximum Density (%) (Ix, IxFILL, IxOPCFILL, IxZFILL) with
125 μm tiling, 62.5 μm step, where x = A, B.
IXDENS.MAX.2a -
≤ 50
Density difference (%) (Ix, IxFILL, IxOPCFILL, IxZFILL) for
adjacent windows with 200 μm tiling, 200 μm step, where x = A,
B.
IXGRAD.MAX.4 -
≥ 10
Minimum Density (%) (Jx, JxFILL, JxOPCFILL, JxZFILL) with
125 μm tiling, 62.5 μm step, where x = A, B.
JXDENS.MIN.2 -
≥ 20
Minimum density (%) (Jx, JxFILL, JxOPCFILL, JxZFILL) with
125 μm tiling, 62.5 μm step, where x = A, B.
JXDENS.MIN.2R -
≤ 85
Maximum Density (%) (Jx, JxFILL, JxOPCFILL, JxZFILL) with
125 μm tiling, 62.5 μm step, where x = A, B.
JXDENS.MAX.2a -
≤ 50
Density difference (%) (Jx, JxFILL, JxOPCFILL, JxZFILL) for
adjacent windows with 200 μm tiling, 200 μm step, where x = A,
B.
JXGRAD.MAX.4 -
≥ 10
Minimum Density (%) (OI, OIFILL, OIOPCFILL, OIZFILL) with
125 μm tiling, 62.5 μm step.
OIDENS.MIN.2 -
≥ 20
Minimum density (%) (OI, OIFILL, OIOPCFILL, OIZFILL) with
125 μm tiling, 62.5 μm step.
OIDENS.MIN.2R -
≤ 85
Maximum Density (%) (OI, OIFILL, OIOPCFILL, OIZFILL) with
125 μm tiling, 62.5 μm step.
OIDENS.MAX.2a -
≤ 50
Density difference (%) (OI, OIFILL, OIOPCFILL, OIZFILL) for
adjacent windows with 200 μm tiling, 200 μm step.
OIGRAD.MAX.4 -
Notes:
1. Tiles incurring (PROTECT, IND) are exempt.
2. Tiles incurring PROTECT are exempt.
3. Tiles incurring (PROTECT, MOB) are exempt.
4. PC_CT_SRAM = (PC over CELLSNR) space <= 0.06μm with runlength > 0 rectangular area.
5. Please refer to Block Implant Level Generation for TJ level Boolean generation.
6. The rule is checked at chip level only.
For minimum density rules, small partial tiles at the boundary which are <= 1/2 full tile area are excluded.
For maximum density rules, small partial tiles at the boundary which are < 1/2 full tile area are excluded.
Note: For $DESIGN_TYPE = CELL. All density, density gradient, and maximum empty region rules are checked
inside of DB_EXTENT (BOUNDARY = DB_EXTENT) unless specified otherwise. For $DESIGN_TYPE = CHIP,
the rules are checked inside of GUARDEDG if present (BOUNDARY = GUARDEDG) and within DB_EXTENT
if GUARDEDG is absent (BOUNDARY = DB_EXTENT) unless specified otherwise.

Appendix
A
Definitions of Process-Related Terms
Back end of line; all processing steps for metal and via levels starting with
M1.
BEOL
The difference between the nominal wafer dimension and the design
dimension:
bias
Bias = Wafer Nominal - Design Dimension.
A positive bias means that the dimension of the image on the wafer is larger
than the corresponding design shape. A negative bias means that the
bias sign
dimension of the image on the wafer is smaller than the corresponding design
shape.
The minimum design dimension permitted by photo, etch, fill, and electrical
considerations. This is the design minimum given in the design rules in
design minimum
urn:ditastudio:reference:_a51a9b51-a316-4e15-83ec-8f762f7b2514#_88bea6c3-7f8f-4f0b-aa66-fb8017027b64:version:@
Far back end of line; the processing steps for wire-bond pads and flip-chip
packages.
far BEOL
FEOL Front end of line; all processing steps up to and including contacts.
FIT Failure in time; the number of failures per 109 device hours.
When a more negative bias exists at the end of a narrow line than at the
sides.
foreshortening
hole Where the resist is removed by the photo process.
island Where the resist remains after the photo process.
The bias and tolerance used in physical design rules. For bias, this is the
algebraic sum of the component biases. For tolerance, this is the
net bias and tolerance
root-sum-square (RSS) of the component tolerances. Components include
photo, etch, slope, and film thickness.
SER Soft-error rate.
Variation in the process gives rise to variation in the feature dimension
specified in the design rule tables. The extent of this variation above or below
tolerance
the nominal is called the tolerance. Tolerance as used in this document means
“net tolerance.” The tolerance specified in this document is a 3σ value. For
calculating design rules, this tolerance is multiplied by 4/3 to arrive at a 4σ
value, which is approximated to be the 4.5σ for a batch population used in
the Motorola 6σ methodology.
total bias Same as “net bias”.
wafer nominal The nominal or target dimension of a design shape as measured on the wafer.
Appendix
B
Topics:
ch2.10.2 Design Truth Table (Node 2) Updated Figure
ch3.7.2 Definitions Relating to Antenna Design Removed Gate oxide area
3.3V/5V EG LDFET Device Design Rules Modified rules LDFET06C
BEOL Metal Fill Design Rules Modified rules DS599
BEOL Via Fill Design Rules Modified rules DS799
Chip Guard Ring and PROTECT Design Rules Modified rules 990p, 990q, 999s
Modified rules MOB05, MOB06, MOB07, MOB09, MOB09a_L,
MOB10a, MOB10b, MOB11, MOB12, MOB12a_L, MOB14, MOB14c,
MOB17a_L, MOB19, MOB19a, MOB19c, MOB20, MOB22, MOB23
Common Crack Stop (MOB) Design Rules
Common Crack Stop MOB_CS Design Rules Modified rules MOB_4a, MOB_CS_DV, MOB_CS_LV
Crack Stop (MOB) Design Rules Removed rules MOB21
Crack Stop MOB_GA Design Rules Removed rules MOB_GA_RX
DV Design Rules Modified rules 658ab
ESD Design Rules Modified rules ESDCUST
Modified rules CTGFILL.EXCLS.4.GF, CTGFILL.EXCLS.4.GF.CFILL,
EQFILL.EXCLS.4.GF, EQFILL.EXCLS.4.GF.CFILL,
FEOL Fill Design Rules
EQFILL.EXCLS.5.GF, EQFILL.EXCLS.5.GF.CFILL,
PCGFILL.EXCLS.2.GF, PCGFILL.EXCLS.2.GF.CFILL,
RXGFILL.EXCLS.3.GF, RXGFILL.EXCLS.3.GF.CFILL,
TJGFILL.EXCLS.2.GF, TJGFILL.EXCLS.2.GF.CFILL,
TJGFILL.EXCLS.3.GF, TJGFILL.EXCLS.3.GF.CFILL
Removed rules CELL.SHAPE.1.GF.CFILL
Guard Edge Design Rules Added rules CE003NC, CE005NC
Modified rules CE003, CE005
Inductor Design Rules Modified rules IND798JQ, IND998
Local Pattern Design Rules Modified rules eSiGEDENS.MAX.1, eSiGEDENS.MIN.1
Added rules NCMOB01, NCMOB02, NCMOB03, NCMOB04,
NCMOB08, NCMOB12b_L, NCMOB14a, NCMOB15, NCMOB16,
NCMOB17, NCMOB24
Narrow Crack Stop (MOB) Design Rules
Narrow Crack Stop MOB_GA_NC Design Rules Added rules NCMOB_G1, NCMOB_GA_Mx1
OI and JQ Design Rules Modified rules 30x90_JQ, 30x90a_JQ, 30x91_JQ, 30x91a_JQ, 30x99_JQ
PCD Design Rules for PCD Target Cells Modified rules PCD8d
Modified rules MOB01, MOB02, MOB03, MOB04, MOB08,
MOB12b_L, MOB12c_L, MOB14a, MOB15, MOB16, MOB17
Standard Crack Stop (MOB) Design Rules
Standard Crack Stop MOB_GA Design Rules Modified rules MOB_G1, MOB_GA_Mx1
V1 and Vx Design Rules Modified rules 590a, 591, 591a
Wire-bond Common Design Rules Modified rules WB.DV.EN.1
BEOL Via Fill Design Rules Modified rule INDFILL225
Crack Stop MOB_GA Design Rules Modified rule MOB_GA_Mx1
FEOL Fill Design Rules Modified rule PCGFILL.SPACE.3a.GF
Design Truth Table (Node 1) Updated Table
Illustration of MOB_GA, and MOB_CS Marker Shapes Updated Figure
Illustration of 3.3V LDPFET Design Rule (cross section) Updated Figure
Conducting Hot Carriers: N and P Channel Devices Updated Table
BEOL Via Fill Design Rules Modified rule DS710
Device Design and Utility Levels Modified JAVDD5V0
Modified rules HVTN1, HVTN1a, HVTN2, HVTN2a, HVTP1, HVTP1a,
HVTP2, HVTP2a
High-Vt Device Design Rules
Added rules HVTP8c, HVTP9c
Added Figure
M1 Design Rules Modified rules 503a, 503b
5.2 Electrical Parameters and Models for Passive Devices (Node 2) Updated Table
1.2 Ordering Information (Node 1) Updated Table
2.8.3 BEOL Metallization Options Updated Table
9 SRAM Device and Design Information Modified wording
1.3 Ordering Information (Node 2) Updated Table
2.10.4 Data Preparation Truth Table (Node 2) Updated Figure
Table 180: BEOL Via Fill Design Rules Modified footnote1
3.3V/5V EG LDFET Device Design Rules Modified rules LDFET04B
ESD Design Rules Modified rules ESD25e
Modified rules PCD0a, PCD0b, PCD0c, PCD20, PCD21, PCD25,
PCD26, PCD27, PCD28, PCD6b, PCD6c, PCD7a, PCD7b, PCD8a,
PCD8b, PCD8c, PCD8d
PCD Design Rules for PCD Target Cells
Removed rules PCD11, PCD12
Resistor Design Rules Modified rules 712, 713, 736, 737, 738c
Design Truth Table (Node 2) Updated Table
5.1 Electrical Parameters and Models for Passive Devices (Node 1) Added chapter
5.2 Electrical Parameters and Models for Passive Devices (Node 2) Added chapter
5.3 Electrical Parameters and Models for Passive Devices (Common to Modified chapter
both Node 1 and Node 2)
3.3 Glossary of Design Rule Terminology Modified SBLK
Alternate Design Rules for Approved SRAM Cells Added rules SR50a
APMOM Design Rules Modified rules APMOM3
BEOL Via Fill Design Rules Modified rules DS710
BIPOLAR Design Rules Modified rules BT11, BT9
eLVT NFET Device Design Rules Modified rules ELVTN13, ELVTN14
eLVT PFET Device Design Rules Modified rules ELVTP13, ELVTP14
ESD Design Rules Modified rules ESD21, ESD25a, ESD25b, ESD25c, ESD25e
Modified rules SB725, SB726, SB727, SB728, SB729a, SB729b, SB730,
SB730a, SB730b, SB730c, SB730d, SB731, SB731a, SB731b, SB732,
SB733, SB734, SB740, SB741a, SB741b, SB742a
ESD Silicide-Blocking Design Rules
High-Vt NFET Device Design Rules Modified rules HVTN13
High-Vt PFET Device Design Rules Modified rules HVTP13
Low-Vt NFET Device Design Rules Modified rules LVTN13
Low-Vt PFET Device Design Rules Modified rules LVTP13
NCAP Design Rules Modified rules NC24
Non-Round Copper Pillar Rules for 111.111 <= p < 166.667 Modified rules BUMP4P100.2NB.C.2
Non-Round Copper Pillar Rules for 88.889 <= p < 111.111 Modified rules BUMP4P80.2NB.C.2
PC Design Rules Modified rules 1130, 113f, 113g
PCAP Design Rules Modified rules PC24
Round Copper Pillar Rules for 111.111 <= p < 166.667 Modified rules BUMP2P100.2NB.C.2
RX Design Rules Modified rules 50a, RX.HV
Vertical NPN Bipolar Transistor Design Rules Modified rules NPN12, NPN13
Vertical PNP Bipolar Transistor Design Rules Modified rules PNP12, PNP13
Design Truth Table (Node 1) Updated Table
Design Truth Table (Node 2) Updated Table
Data Preparation Truth Table (Node 2) Updated Table
Added Mx_finger, Mx_strap_APMOM, LDNFET3P3V_DRAIN,
LDNFET3P3V_GATE, LDPFET3P3V_BODY, LDPFET3P3V_GATE,
Glossary of Design Rule Terminology
LDPFET3P3V_SOURCE, LDNFET5P0V_DRAIN ,
LDNFET5P0V_GATE, LDPFET5P0V_BODY, LDPFET5P0V_GATE,
LDPFET5P0V_SOURCE
Modified Gate
Removed LDNFET_DRAIN, LDPFET_GATE, LDPFET_SOURCE
Reliability Design Guidelines and Models Updated Table
SRAM Redundancy Requirements (Node1) Modified table
SRAM Redundancy Requirements (Node2) Added chapter
Truth Table for DRC Maximum Voltage When No VDD Marker Is Updated Table
Present
Modified rules LDFET04, LDFET04A, LDFET04B, LDFET04C,
LDFET04D, LDFET05, LDFET05a, LDFET07, LDFET08A,
3.3V/5V EG LDFET Device Design Rules
LDFET08B, LDFET09, LDFET12, LDFET12a, LDFET13, LDFET13A,
LDFET14, LDFET14A, LDFET15, LDFET16, LDFET18, LDFET19a,
LDFET20a, LDFET34
Modified rules SR10, SR103b, SR104a, SR104b, SR11, SR370, SR371,
SR470, SR471, SRPCE2.S.RX.1, SRPCE2.S.RX.2
Alternate Design Rules for Approved SRAM Cells
Modified rules ALVT1, ALVT10, ALVT2, ALVT24, ALVT25,
ALVT265b, ALVT3
ALVT Device Design Rules
Modified rules 130a, 130b, 131_1, 131_2, 131a, 131b1, 131b2, 131c,
131f, 131h, 131i, 131j, 131k, 131x, 131xa_or, 131xa_or_1, 131xb,
131xb_1, 131xc, 131xc_1, 131xd, 131xd_1, 131y, 131z, 134a, 135a
Antenna Design Rules
Modified rules APMOM1, APMOM11, APMOM13, APMOM16a,
APMOM16b, APMOM18, APMOM1a, APMOM1b, APMOM3,
APMOM Design Rules
APMOM3a, APMOM3b, APMOM4, APMOM5a, APMOM6,
APMOM6a, APMOM7R, APMOM8R, APMOM9
BEOL Via Fill Design Rules Modified rules DS710
Butted-junction Design Rules Modified rules 375, 376, 384R, 385R
CA Design Rules Modified rules 207b, 211, PC_canyon_def
Design for Manufacturability Rules Modified rules 10R_GF, 113naR_GF, 113paR_GF, 11R_GF
eLVT NFET Device Design Rules Modified rules ELVTN8a, ELVTN8b, ELVTN9a, ELVTN9b
eLVT PFET Device Design Rules Modified rules ELVTP8a, ELVTP8b, ELVTP9a, ELVTP9b
Modified rules ESD01c, ESD01cR, ESD01d, ESD21, ESD25a, ESD25b,
ESD25c, ESD25e, ESD530
ESD Design Rules
ESD Silicide-Blocking Design Rules Modified rules SB730a, SB730b, SB730c, SB730d, SB731a, SB731b
FEOL Fill Design Rules Modified rules FILL.SHAPE.1a.GF, FILL.SHAPE.1a.GF.CFILL
Modified rules EG1, EG10, EG15, EG1a, EG1c, EG2, EG24, EG25,
EG265b, EG2a, EG2c, EG3
High-speed I/O Device Design Rules
High-Vt NFET Device Design Rules Modified rules HVTN14, HVTN8a, HVTN8b, HVTN9a, HVTN9b
High-Vt PFET Device Design Rules Modified rules HVTP14, HVTP8a, HVTP8b, HVTP9a, HVTP9b
Inductor Design Rules Modified rules IND11
Low-Vt NFET Device Design Rules Modified rules LVTN8a, LVTN8b, LVTN9a, LVTN9b
Low-Vt PFET Device Design Rules Modified rules LVTP8a, LVTP8b, LVTP9a, LVTP9b
Mx and Vx Design Rules Modified rules 602k1, 602k2, 602k3, 602k4, 602k5
Modified rules NC10a, NC1a, NC1b, NC28, NC29, NC29b, NC29c,
NC30, NC32
NCAP Design Rules
Non-Round Copper Pillar Common Rules Modified rules BUMP4.RS.C.3
NPLUS Design Rules Modified rules 454, 469a, 469b, 470, 471
N-Well and Latchup Design Rules Modified rules 270, 271
PC Design Rules Added rules 113f, 113g
Modified rules 102i, 103b, 104a, 104aR, 104b, 104bR, 104c, 104cR,
104d, 104e, 107, 107a, 110R, 110aR, 115, 115b, 132, 132a, 141, 142,
145, 148, PCE2.S.RX.1, PCE2.S.RX.2
PCAP Design Rules Modified rules PC10a, PC1a, PC28, PC29, PC29b, PC29c, PC30, PC32
PCD Design Rules for PCD Target Cells Modified rules PCD1a, PCD1b
PCZFILL Design Rules Modified rules D102i
Modified rules PB2, PB2a, PB3, PB3a, PB4, PB4a, PB5, PB5a, PB6,
PB6a
Poly-bounded ESD Diode Design Rules
PPLUS Design Rules Modified rules 369a, 369b, 370, 371
Resistor Design Rules Modified rules 701a, 706a, 736
Round Copper Pillar Bump with PSPI Common Design Rules Modified rules BUMP2.2NB.C.2, BUMP2.RS.C.1
RX Design Rules Modified rules 1, 10, 11, 12, 13, 1a, 2, 2a, RX.HV
STB Design Rules Modified rules STB12, STB13, STB14, STB15
Modified rules ZG1, ZG10, ZG102, ZG15, ZG1a, ZG1b, ZG2, ZG207,
ZG24a, ZG24b, ZG25a, ZG25b, ZG2a, ZG2b
Thick-Oxide (ZG) Device Design Rules
V1 and Vx Design Rules Modified rules 552a1, 552a2, 552a3, 552a5
Waiver Design Rules for SRAM Cells Modified rules SRAM107a
Modified rules ZVT10, ZVT12, ZVT13, ZVT13a, ZVT14, ZVT3, ZVT4,
ZVT9b
Zero-Vt NFET Design Rules
Design Truth Table (Node 1) Updated Table
Data Preparation Truth Table (Node 1) Updated Table
Design Truth Table (Node 2) Updated Table
Data Preparation Truth Table (Node 2) Updated Table
PCI Design and Utility Levels Added INDIEOVL1
Glossary of Design Rule Terminology Modified Gate, RX n+ junction, RX p+ junction
Added LDNFET_DRAIN, LDPFET_GATE, LDPFET_SOURCE
Non-Round Copper Pillar Bump with PSPI Design Rule Overview Updated Table
Device Design and Utility Levels Modified HVTN
Added MxVDD5V0, MOM_excludem1, MOM_excludem2,
MOM_excludem3, MOM_excludem4, MOM_excludem5,
MOM_excludem6
SRAM Redundancy Requirements Added Table
Ordering Information (Node2) Updated Table
Net Definitions for 1x Metal and Via Levels Updated Table
Electrical Parameters for EG LDFET Devices Added Table
Ordering Information (Node1) Updated Table
BEOL Metallization Options Updated Table & Figures
10x Via Design Rules Modified rules 10Bx57
1x to 10x Transitional Via Design Rules Modified rules 10x57_YS
1x to 8x Transitional Via Design Rules Modified rules 8x57_YX, 8x73a_YX
2x to 10x Transitional Via Design Rules Modified rules 10x57_YR
2x to 8x Transitional Via Design Rules Modified rules 8x57_YZ, 8x73a_YZ
2x Via Design Rule for Low-K Modified rules 2x57_L, 2x73a_L, 2x73b_L, 2x73c_L
Modified rules LDFET04, LDFET04A, LDFET04B, LDFET04C,
LDFET04D, LDFET05, LDFET05a, LDFET07, LDFET08A,
3.3V/5V EG LDFET Device Design Rules
LDFET08B, LDFET09, LDFET09b, LDFET09c, LDFET12, LDFET12a,
LDFET13, LDFET13A, LDFET14, LDFET14A, LDFET15, LDFET16,
LDFET18, LDFET19a, LDFET20a, LDFET34
8x Via Design Rules Modified rules 8Bx57, 8x73a_XA
Alternate Design Rules for Approved SRAM Cells Added rules SR10, SR111c, SR470, SR471
Modified rules SR103b, SR104a, SR104b, SR11, SR370, SR371,
SRPCE2.S.RX.1, SRPCE2.S.RX.2
Modified rules ALVT1, ALVT10, ALVT2, ALVT24, ALVT25,
ALVT265b, ALVT3
ALVT Device Design Rules
Modified rules 130a, 130b, 131_1, 131_2, 131a, 131b1, 131b2, 131c,
131f, 131h, 131i, 131j, 131k, 131x, 131xa_or, 131xa_or_1, 131xb,
131xb_1, 131xc, 131xc_1, 131xd, 131xd_1, 131y, 131z, 134a, 135a
Antenna Design Rules
APMOM Design Rules Modified rules APMOM23, APMOM6a
BEOL Metal Fill Design Rules Added rules DS511e
Modified rules DS598, DS599, INDFILL245
BEOL Via Fill Design Rules Added rules DS800
Modified rules DS700, DS701, DS771
Butted-junction Design Rules Modified rules 375, 376, 384R, 385R
CA Design Rules Modified rules 201, 207b, 211, PC_canyon_def
Chip Guard Ring and PROTECT Design Rules Modified rules 999
Modified rules 10R_GF, 113naR_GF, 113paR_GF, 11R_GF, 555R_GF,
574R_GF, 613R_GF
Design for Manufacturability Rules
eFUSE Design Rules Modified rules EF03
eLVT NFET Device Design Rules Modified rules ELVTN8a, ELVTN8b, ELVTN9a, ELVTN9b
eLVT PFET Device Design Rules Modified rules ELVTP8a, ELVTP8b, ELVTP9a, ELVTP9b
Modified rules ESD01c, ESD01cR, ESD01d, ESD21, ESD25a, ESD25b,
ESD25c, ESD25e, ESD530
ESD Design Rules
ESD Silicide-Blocking Design Rules Modified rules SB730a, SB730b, SB730c, SB730d, SB731a, SB731b
Modified rules CTGFILL.EXCLS.7.GF, CTGFILL.EXCLS.7.GF.CFILL,
EQFILL.EXCLS.28.GF, EQFILL.EXCLS.28.GF.CFILL,
FEOL Fill Design Rules
FILL.SHAPE.1a.GF, FILL.SHAPE.1a.GF.CFILL,
PCGFILL.EXCLS.13.GF, PCGFILL.EXCLS.13.GF.CFILL,
RXGFILL.EXCLS.25.GF, RXGFILL.EXCLS.25.GF.CFILL,
TJGFILL.EXCLS.20.GF, TJGFILL.EXCLS.20.GF.CFILL
Modified rules EG1, EG10, EG15, EG1a, EG1c, EG2, EG24, EG25,
EG265b, EG2a, EG2c, EG3
High-speed I/O Device Design Rules
High-Vt NFET Device Design Rules Modified rules HVTN14, HVTN8a, HVTN8b, HVTN9a, HVTN9b
High-Vt PFET Device Design Rules Modified rules HVTP14, HVTP8a, HVTP8b, HVTP9a, HVTP9b
M1 Design Rules Added rules 502j2
Mx and Vx Design Rules Added rules 602j2, 602k5
Modified rules 602k1, 602k2, 602k3, 602k4, 612a, 612b, 612c, 613a,
613b, 613c
Modified rules NC10a, NC1a, NC1b, NC28, NC29, NC29b, NC29c,
NC30, NC32
NCAP Design Rules
Non-Round Copper Pillar Common Rules Modified rules BUMP4.2NB.C.1, BUMP4.LV.C.1, BUMP4.RS.C.1
Modified rules BUMP4P100.2NB.C.1, BUMP4P100.LV.C.1,
BUMP4P100.RS.C.1
Non-Round Copper Pillar Rules for 111.111 <= p < 166.667
Modified rules BUMP4P150.2NB.C.1, BUMP4P150.LV.C.1,
BUMP4P150.RS.C.1
Non-Round Copper Pillar Rules for 166.667 <= p
Modified rules BUMP4P80.2NB.C.1, BUMP4P80.LV.C.1,
BUMP4P80.RS.C.1
Non-Round Copper Pillar Rules for 88.889 <= p < 111.111
NPLUS Design Rules Modified rules 469a, 469b, 470, 471, 472, 473, 474
N-Well and Latchup Design Rules Modified rules 268a, 268b, 270, 271
N-Well Resistor under STI (nwres) Design Rules Modified rules NWR07
OI and JQ Design Rules Modified rules 30x57_JQ, 30x73a_JQ
Modified rules 102i, 103b, 104a, 104aR, 104b, 104bR, 104c, 104cR,
104d, 104e, 107, 107a, 110R, 110aR, 115, 115b, 120, 132, 132a, 141,
142, 145, 148, PCE2.S.RX.1, PCE2.S.RX.2
PC Design Rules
PCAP Design Rules Modified rules PC10a, PC1a, PC28, PC29, PC29b, PC29c, PC30, PC32
Added rules PCD20, PCD21, PCD22, PCD23a, PCD23b, PCD24,
PCD25, PCD26, PCD27, PCD28, PCD7a
PCD Design Rules for PCD Target Cells
Modified rules PCD1a, PCD1b, PCD6b, PCD6c, PCD7b, PCD8b
Removed rules PCD7aR
PCZFILL Design Rules Modified rules D102i
Modified rules PB2, PB2a, PB3, PB3a, PB4, PB4a, PB5, PB5a, PB6,
PB6a
Poly-bounded ESD Diode Design Rules
PPLUS Design Rules Modified rules 369a, 369b, 370, 371
Probe Pad Design Rules Modified rules PROBE.C.2
Resistor Design Rules Modified rules 701, 701a, 706a, 736
RX Design Rules Modified rules 1, 10, 11, 12, 13, 1a, 2, 2a, RX.HV
SRAM Design Rules for SRAM Cells Modified rules CELLACT3
STB Design Rules Modified rules STB12, STB13, STB14, STB15
Modified rules ZG1, ZG10, ZG102, ZG15, ZG1a, ZG1b, ZG2, ZG207,
ZG24a, ZG24b, ZG25a, ZG25b, ZG2a, ZG2b
Thick-Oxide (ZG) Device Design Rules
V1 and Vx Design Rules Added rules 552a5
Modified rules 557
Waiver Design Rules for SRAM Cells Modified rules SRAM107a
Wire-bond Common Design Rules Modified rules WB.C.3, WB.DEN.2
Modified rules ZVT10, ZVT12, ZVT13, ZVT13a, ZVT14, ZVT3, ZVT4,
ZVT9b
Zero-Vt NFET Design Rules
Design Truth Table (Node 2) Updated Table
Data Preparation Truth Table (Node 2) Updated Table
Glossary of Design Rule Terminology Added LDFETGATE, LDFETSOURCE, OP_LDFET
Block Implant Level Generation (Node 1) Updated Table
Block Implant Level Generation (Node 2) Updated Table
Modified rules LDFET04, LDFET04A, LDFET04B, LDFET04C,
LDFET04D, LDFET05, LDFET05a, LDFET06A, LDFET07, LDFET08,
3.3V/5V EG LDFET Device Design Rules
LDFET08A, LDFET08B, LDFET09, LDFET11a, LDFET12, LDFET12a,
LDFET13, LDFET13A, LDFET14, LDFET14A, LDFET15, LDFET16,
LDFET18, LDFET19a, LDFET20a, LDFET22, LDFET28, LDFET31,
LDFET32, LDFET33, LDFET34
Renamed rules LDFET21dR
Removed rule LDFET29
Antenna Design Rules Modified rule 131xd_1
BEOL Metal Fill Design Rules Modified rules DS503, DS512, DS562
BEOL Via Fill Design Rules Modified rules DS701, DS797, INDFILL225
CA Design Rules Modified rule 207b
Chip Guard Ring and PROTECT Design Rules Modified rules 999, 999s
ESD Silicide-Blocking Design Rules Modified rule SB741b
Modified rules CTGFILL.EXCLS.4.GF, CTGFILL.EXCLS.4.GF.CFILL,
EQFILL.EXCLS.4.GF, EQFILL.EXCLS.4.GF.CFILL,
FEOL Fill Design Rules
EQFILL.SHAPE.12.GF, FILL.SHAPE.1a.GF,
FILL.SHAPE.1a.GF.CFILL, PCGFILL.EXCLS.2.GF,
PCGFILL.EXCLS.2.GF.CFILL, RXGFILL.EXCLS.3.GF,
RXGFILL.EXCLS.3.GF.CFILL, TJGFILL.EXCLS.3.GF,
TJGFILL.EXCLS.3.GF.CFILL
High-speed I/O Device Design Rules Modified rules EG260, EG265a, EG265b
Modified rules BADENS.MAX.2a_L, BADENS.MIN.2R_L,
BADENS.MIN.2_L, BADENS.MIN.3_L, IXDENS.MAX.2a,
Local Pattern Design Rules
IXDENS.MIN.2, IXDENS.MIN.2R, JXDENS.MAX.2a,
JXDENS.MIN.2, JXDENS.MIN.2R, MXDENS.MAX.2a,
MXDENS.MIN.2, MXDENS.MIN.2R, MXDENS.MIN.3,
OIDENS.MAX.2a, OIDENS.MIN.2, OIDENS.MIN.2R,
PCDENS.EXMIN.1, PCDENS.MAX.1, PCDENS.MIN.3,
PCPDEN.MAX.5.GF.R, PCPDEN.MIN.5.GF.R, PDPCE2, PDPCb,
RXDENS.EXMIN.3, RXDENS.MAX.3, RXDENS.MAX.3b,
RXDENS.MAX.4a, RXDENS.MAX.4b, RXDENS.MAX.5,
RXDENS.MIN.3, RXDENS.MIN.3b, RXPDEN.MIN.2.GF.R,
eSiGEDENS.MAX.1, eSiGEDENS.MIN.1
Modified rules BUMP4.2NB.C.1, BUMP4.2NB.C.4, BUMP4.LV.C.1,
BUMP4.RS.C.1
Non-Round Copper Pillar Common Rules
Modified rules BUMP4P100.2NB.C.1, BUMP4P100.LV.C.1,
BUMP4P100.RS.C.1
Non-Round Copper Pillar Rules for 111.111 <= p < 166.667
Modified rules BUMP4P150.2NB.C.1, BUMP4P150.LV.C.1,
BUMP4P150.RS.C.1
Non-Round Copper Pillar Rules for 166.667 <= p
Modified rules BUMP4P80.2NB.C.1, BUMP4P80.LV.C.1,
BUMP4P80.RS.C.1
Non-Round Copper Pillar Rules for 88.889 <= p < 111.111
NPLUS Design Rules Modified rules 453, 454, 472, 474
N-Well and Latchup Design Rules Modified rules 260, 261, 265, 266
PC Design Rules Modified rules 119a, 125
PCAP Design Rules Modified rules PC24
PPLUS Design Rules Modified rules 353, 354
Reserved Level Checking Design Rules Removed rules RL05, RL06, RL07, RL08
Modified rules BUMP2.2NB.C.1, BUMP2.2NB.C.2, BUMP2.2NB.C.3,
BUMP2.2NB.C.4, BUMP2.2NB.DEN.1, BUMP2.2NB.DEN.2,
Round Copper Pillar Bump with PSPI Common Design Rules
BUMP2.2NB.EN.1, BUMP2.2NB.S.LOGOBND.1, BUMP2.LV.C.1,
BUMP2.RS.C.1, BUMP2.VV.DEN.1
Short Edge Design Rules Modified rules SE7
1x to 8x Transitional Via Design Rules Removed rules 8x72b_YX, 8x72c_YX, 8x73b_YX, 8x73c_YX
Removed rules 2x00, 2x00b, 2x01a, 2x01b, 2x02, 2x03a, 2x03b, 2x04,
2x04b, 2x04e, 2x04f, 2x80, 2x81, 2x82
2x Metal Design Rules in Ultralow-K
2x to 8x Transitional Via Design Rules Removed rules 8x72b_YZ, 8x72c_YZ, 8x73b_YZ, 8x73c_YZ
Removed rules 2x50, 2x53, 2x53a, 2x53b, 2x57, 2x60, 2x60_or, 2x60a,
2x60b, 2x60c, 2x60f, 2x61, 2x61_or, 2x61a, 2x61b, 2x61c, 2x72a, 2x72b,
2x Via Design Rule
2x72c, 2x73, 2x73a, 2x73b, 2x73c, 2x74, 2x90, 2x90a, 2x91, 2x91a,
2x93
2x Via Design Rule for Low-K Modified rules 2x73a_L, 2x73b_L, 2x73c_L
Added rules LDFET01, LDFET01A, LDFET01B, LDFET01C,
LDFET02, LDFET03, LDFET04, LDFET04A, LDFET04B, LDFET04C,
3.3V/5V EG LDFET Device Design Rules
LDFET04D, LDFET05, LDFET05a, LDFET06, LDFET06A,
LDFET06B, LDFET06C, LDFET07, LDFET08, LDFET08A,
LDFET08B, LDFET09, LDFET09a, LDFET09b, LDFET09c,
LDFET09d, LDFET10, LDFET11, LDFET11a, LDFET12, LDFET12a,
LDFET13, LDFET13A, LDFET14, LDFET14A, LDFET15, LDFET16,
LDFET17, LDFET18, LDFET19, LDFET19a, LDFET19b, LDFET19c,
LDFET19dR, LDFET20, LDFET20a, LDFET20b, LDFET20c,
LDFET20dR, LDFET21, LDFET21a, LDFET21bR, LDFET22,
LDFET22a, LDFET22b, LDFET23, LDFET24, LDFET25, LDFET26,
LDFET27, LDFET28, LDFET29, LDFET30, LDFET31, LDFET32,
LDFET33, LDFET34
8x Via Design Rules Removed rules 8x72b_XA, 8x72c_XA, 8x73b_XA, 8x73c_XA
Alternative Triple Well and Latchup Design Rules Modified rules 3T06
ALVT Device Design Rules Modified rules ALVT260, ALVT265a, ALVT265b
Removed rules ALVT252a, ALVT252a3
Antenna Design Rules Modified rules 131_2, 131b2, 134a
APMOM Design Rules Modified rules APMOM31
Modified rules DS500, DS501, DS503, DS511a, DS512, DS519, DS562,
DS598, DS599, INDFILL245
BEOL Metal Fill Design Rules
Removed rules DS521a, DS521d, DS522, DS525, DS525IND,
DS525OPC, DS527, DS527IND, DS527OPC, DS528, DS529,
DS529OPC
BEOL Via Fill Design Rules Modified rules DS700, DS701, DS797, DS798, DS799, INDFILL225
Removed rules DS721, DS723, DS724, DS725
BFMOAT Design Rules Modified rules 799a
BIPOLAR Design Rules Modified rules BT4
Chip Guard Ring and PROTECT Design Rules Removed rules 990h, 990jW0, 990kYZ
Crack Stop (MOB) Design Rules Modified rules MOB09, MOB12b_L
Removed rules MOB09a, MOB12a, MOB12b, MOB12c, MOB17a
Crack Stop MOB_CS Design Rules Modified rules MOB_4a
Crack Stop MOB_GA Design Rules Modified rules MOB_G1, MOB_GA_Mx1
Design for Manufacturability Rules Modified rules 2x01aR_GF, 2x66R_GF, 8x60_YZaR_GF
eFUSE Design Rules Modified rules EF26
eLVT NFET Device Design Rules Modified rules ELVTN14, ELVTN4
eLVT PFET Device Design Rules Modified rules ELVTP14, ELVTP4
ESD Design Rules Added rules ESD25c, ESD25e
ESD Silicide-Blocking Design Rules Modified rules SB741b
Added rules EQFILL.SHAPE.12.GF, EQFILL.SHAPE.12.GF.CFILL,
PCGFILL.SPACE.3a.GF, PCGFILL.SPACE.3a.GF.CFILL,
FEOL Fill Design Rules
SECOND.SHAPE.1a.GF, SECOND.SHAPE.1a.GF.CFILL,
SECOND.SHAPE.1b.GF, SECOND.SHAPE.1b.GF.CFILL,
SECOND.SHAPE.6c.GF, SECOND.SHAPE.6c.GF.CFILL
Modified rules CELL.SHAPE.1.GF.CFILL, CTGFILL.EXCLS.4.GF,
CTGFILL.EXCLS.4.GF.CFILL, CTGFILL.EXCLS.7.GF,
FEOL Fill Design Rules
CTGFILL.EXCLS.7.GF.CFILL, EQFILL.EXCLS.28.GF,
EQFILL.EXCLS.28.GF.CFILL, EQFILL.EXCLS.4.GF,
EQFILL.EXCLS.4.GF.CFILL, , PCGFILL.EXCLS.13.GF,
PCGFILL.EXCLS.13.GF.CFILL, PCGFILL.EXCLS.2.GF,
PCGFILL.EXCLS.2.GF.CFILL, PCGFILL.LENGTH.1.GF,
PCGFILL.SPACE.1.GF, PCGFILL.SPACE.1.GF.CFILL,
PCGFILL.SPACE.2.GF, PCGFILL.SPACE.2.GF.CFILL,
PCGFILL.SPACE.3.GF, PCGFILL.SPACE.3.GF.CFILL,
RXGFILL.EXCLS.25.GF, RXGFILL.EXCLS.25.GF.CFILL,
RXGFILL.EXCLS.3.GF, RXGFILL.EXCLS.3.GF.CFILL,
RXGFILL.SPACE.1.GF, RXGFILL.SPACE.1.GF.CFILL,
RXGFILL.SPACE.2.GF, RXGFILL.SPACE.2.GF.CFILL,
RXGFILL.SPACE.3.GF, RXGFILL.SPACE.3.GF.CFILL,
SECOND.SHAPE.1.GF, SECOND.SHAPE.1.GF.CFILL,
SECOND.SHAPE.3.GF, SECOND.SHAPE.3.GF.CFILL,
SECOND.SHAPE.6.GF, SECOND.SHAPE.6.GF.CFILL,
SECOND.SHAPE.6b.GF, SECOND.SHAPE.6b.GF.CFILL,
THIRDFILL.SHAPE.1.GF, THIRDFILL.SHAPE.1.GF.CFILL,
THIRDFILL.SHAPE.2.GF, THIRDFILL.SHAPE.2.GF.CFILL,
TJGFILL.EXCLS.20.GF, TJGFILL.EXCLS.20.GF.CFILL,
TJGFILL.EXCLS.3.GF, TJGFILL.EXCLS.3.GF.CFILL
FEOL Fill Design Rules Removed rules PCGFILL.LENGTH.1.GF.CFILL
Guard Edge Design Rules Modified rules CE003, CE005
High-speed I/O Device Design Rules Modified rules EG260, EG265a, EG265b, EG32
Removed rules EG252a, EG252a1, EG252a2, EG252a3, EG252a4,
EG252a5
Added rules HVTN1, HVTN10, HVTN11, HVTN12, HVTN13,
HVTN14, HVTN1a, HVTN2, HVTN2a, HVTN3, HVTN4, HVTN8a,
HVTN8b, HVTN9a, HVTN9b
High-Vt NFET Device Design Rules
Added rules HVTP1, HVTP10, HVTP11, HVTP12, HVTP13, HVTP14,
HVTP1a, HVTP2, HVTP2a, HVTP3, HVTP4, HVTP8a, HVTP8b,
HVTP9a, HVTP9b
High-Vt PFET Device Design Rules
Inductor Design Rules Modified rules IND01b, IND01bb
Inline Wire-bond Pad Design Rules for thick LB (2.8um) Modified rules IWB2.W.1, IWB2.W.2
Inline Wire-bond Pad Design Rules for thin LB (1.45um) Modified rules IWB1.W.1, IWB1.W.2
LB and VV Design Rules Removed rules LB90
Local Pattern Design Rules Modified rules PDPCE2
Removed rules B1DENS.MAX.2a, B1DENS.MIN.2, B1DENS.MIN.2R,
B1DENS.MIN.3, B1GRAD.MAX.4
Low-Vt NFET Device Design Rules Modified rules LVTN4
Low-Vt PFET Device Design Rules Modified rules LVTP4
M1 Design Rules Modified rules 503b
Modified rules 602k1, 602k2, 602k3, 602k4, 603b, 610, 610_or, 610a,
610b, 610c, 611, 611_or, 611a, 611b, 611c, 613a, 613b, 613c
Mx and Vx Design Rules
NCAP Design Rules Modified rules NC24, NC29c
NPLUS Design Rules Modified rules 453, 454, 469a, 469b, 472
N-Well and Latchup Design Rules Modified rules 260, 261, 265, 266
Removed rules 252d
N-Well Resistor under STI (nwres) Design Rules Modified rules NWR10
OI and JQ Design Rules Removed rules 30x72b_JQ, 30x72c_JQ, 30x73b_JQ, 30x73c_JQ
PC Design Rules Modified rules 100a, 113c1R, 113c2R, 113c3R, 150
PCAP Design Rules Modified rules PC24
PCD Design Rules for PCD Target Cells Modified rules PCD6b, PCD7aR, PCD8a, PCD8c, PCD8d, PCD9
Removed rules PCD13, PCD14
PPLUS Design Rules Modified rules 353, 354, 369a, 369b
Probe Pad Design Rules Modified rules PROBE.C.2, PROBE.DV.S.1
Reserved Level Checking Design Rules Modified rules RL05, RL06
Resistor Design Rules Modified rules 700, 701a, 706a, 735a
STB Design Rules Modified rules STB10, STB11
Thick-Oxide (ZG) Device Design Rules Modified rules ZG32
Three Row Wire-bond Pad Design Rules for thick LB (2.8um) Modified rules 3RWB2.S.2, 3RWB2.W.1, 3RWB2.W.2
Three Row Wire-bond Pad Design Rules for thin LB (1.45um) Modified rules 3RWB1.S.2, 3RWB1.W.1, 3RWB1.W.2
Two Row Wire-bond Pad Design Rules for thick LB (2.8um) Modified rules 2RWB2.S.2, 2RWB2.W.1, 2RWB2.W.2
Two Row Wire-bond Pad Design Rules for thin LB (1.45um) Modified rules 2RWB1.S.2, 2RWB1.W.1, 2RWB1.W.2
V1 and Vx Design Rules Modified rules 550cd, 572_or, 572a, 572b, 572c1
VxZFILL and WTZFILL Design Rules Change chapter name (before: W0ZFILL)
Removed rules CFWx01, CFWx02, CFWx03, CFWx05
Wire-bond Common Design Rules Modified rules WB.C.3, WB.DV.S.1, WB.LB.S.1
Zero-Vt NFET Design Rules Modified rules ZVT4, ZVT5a, ZVT9
Removed rules ZVT8a, ZVT9a
Ordering Information (Node 2) Added 4IN
Insert TPP240LR order btw TPP240LV and P240HP
Added High-Vt NFET, High-Vt PFET
Modified Metal Options 1L2x, WT, BA
Added LDFET
Non-Design Mask Levels (Node 2) Added 9BH, 9PH, HG
Device Design and Utility Levels Added HVTN, HVTP
Reserved Design and Utility Levels Added PAHVFET
Removed LDFET
Table: ESD Structure and Device/Model Names Modified Device / Model Names
Table: MOB_GA and MOB_CS Definitions Modified MOB_GA
Ordering Information (Node 1) Modified Metal Options 1L2x, WT, BA
Table: Mask Levels, Design Levels, Graphic Design System II (GDSII) Removed W0, B1
Stream Layers
Table: Back-End-of-Line (BEOL) Design and Utility Levels Removed W0, B1
Table: Device Design and Utility Levels Removed W0, B1
Added LVS0, MxVDD2V1, Mx = BA
Added RPO_DIODE
Added LDFET, PW2V, LDFET3P3V, LDFET5P0V
Table: ESD Design and Utility Levels Removed W0, B1
Table: Design Services and Data Preparation Levels Removed W0, B1
BEOL Metallization Options Removed Option 7, 8, 9, 13
Modified Option 17
Added Option 18, 19, 20
Figure: Design Kit Metallization Options Modified table
Table: Packaging Options Offered Removed Option 7, 8, 9, 13
Modified Option 17
Added Option 18, 19, 20
Table: Contact and Via Resistance at 25° C Removed W0, B1
Table: Interlevel Capacitances for Nested Wiring Levels Removed W0, B1
Added BA
Table: General Idc and Irms Current Limits at 100°C Removed B1
Added BA
Table: Maximum Idc Current Limit for Vias at 100°C Removed W0
Added WT
Figure: Rules 507*, 572*, 610*, 611*, and 2x60*-2x63* Modified Table Rule Number Suffix
Table: Design Rule Checking Abbreviations Removed NW_SG, NW_ALVT
Table: Reliability HCl Qualification Specifications Removed Core NFET, Core PFET
Table: HCI Idsat Degradation Coefficients Removed Core NFET, Core PFET
Table: TDDB Model Parameters Removed Core NFET, Core PFET
Modified
Table: 28LPSe Technology Reliability BTI Specifications Removed Core PFET
Table: BTI Model Coefficients Removed Core NFET, Core PFET
Modified
Device Options Modified
Ordering Information (Node 2) Added new section.
Non-Design Mask Levels (Node 2) Added new section.
Block Implant Level Generation (Node 2) Added new section.
Design Truth Table (Node 2) Added new section.
Data Preparation Truth Table (Node 2) Added new section.
Two Row Wire-bond Pad Design Rules for thin LB (1.45um) Modified rule 2RWB1.S.2
Two Row Wire-bond Pad Design Rules for thick LB (2.8um) Modified rule 2RWB2.S.2
Three Row Wire-bond Pad Design Rules for thin LB (1.45um) Modified rule 3RWB1.S.2
Three Row Wire-bond Pad Design Rules for thick LB (2.8um) Modified rule 3RWB2.S.2
Alternative Triple Well and Latchup Design Rules Modified rule 3T06
N/A No change implemented.
ESD Silicide-Blocking Design Rules Modified rules SB731 and SB731a.
Modified rules BUMP2.2NB.C.1, BUMP2.2NB.C.2, BUMP2.2NB.C.3,
BUMP2.2NB.C.4, BUMP2.2NB.DEN.2, BUMP2.2NB.EN.1,
BUMP2.LV.C.1, BUMP2.RS.C.1.
Round Copper Pillar with PSPI Common Rules
Added rule BUMP2.2NB.S.LOGOBND.1.
Removed rule BUMP2.2NB.S.1.
Modified rules BUMP2P100.2NB.C.1, BUMP2P100.2NB.EN.1,
BUMP2P100.2NB.S.1, BUMP2P100.LV.C.1, BUMP2P100.RS.C.1.
Round Copper Pillar Rules for 111.111 ≤ p < 166.667
Added rule BUMP2P100.2NB.C.2.
Modified rules BUMP2P150.2NB.C.1, BUMP2P150.2NB.EN.1,
BUMP2P150.2NB.S.1, BUMP2P150.LV.C.1, BUMP2P150.RS.C.1.
Round Copper Pillar Rules for 166.667 ≤ p
Modified rules BUMP4.2NB.C.10, BUMP4.2NB.C.11,
BUMP4.2NB.C.13, BUMP4.2NB.C.14, BUMP4.2NB.C.2,
Non-Round Copper Pillar Common Rules
BUMP4.2NB.C.3, BUMP4.2NB.C.4, BUMP4.2NB.C.5,
BUMP4.2NB.C.7, BUMP4.2NB.C.8, BUMP4.2NB.C.9,
BUMP4.2NB.DEN.2, BUMP4.2NB.EN.1, BUMP4.2NB.S.2,
BUMP4.LV.C.1, BUMP4.RS.C.2, BUMP4.RS.C.3.
Added ruleBUMP4.2NB.S.LOGOBND.1.
Removed rule BUMP4.2NB.S.1.
Modified rules BUMP4P80.2NB.C.1, BUMP4P80.2NB.EN.1,
BUMP4P80.2NB.S.1, BUMP4P80.2NB.W.1, BUMP4P80.LV.C.1,
BUMP4P80.LV.W.1, BUMP4P80.RS.C.1, BUMP4P80.RS.W.1.
Non-Round Copper Pillar Rules for 88.889 ≤ p < 111.111
Added rule BUMP4P80.2NB.C.2.
Modified rules BUMP4P100.2NB.C.1, BUMP4P100.2NB.EN.1,
BUMP4P100.2NB.S.1, BUMP4P100.2NB.W.1, BUMP4P100.LV.C.1,
BUMP4P100.LV.W.1, BUMP4P100.RS.C.1, BUMP4P100.RS.W.1.
Non-Round Copper Pillar Rules for 111.111 ≤ p < 166.667
Added rule BUMP4P100.2NB.C.2.
Modified rules BUMP4P150.2NB.C.1, BUMP4P150.2NB.EN.1,
BUMP4P150.2NB.S.1, BUMP4P150.2NB.W.1, BUMP4P150.LV.C.1,
BUMP4P150.LV.W.1, BUMP4P150.RS.C.1, BUMP4P150.RS.W.1.
Non-Round Copper Pillar Rules for 166.667 ≤ p
Wire-bond Common Design Rules Added a foonote for rules WB.C.3, WB.DV.EN.1, WB.DV.EN.2.
Truth Tables Updated Design Truth Table and Data Preparation Truth Table
1x to 10x Transitional Via Design Rules Modified rules 10x90a_YS
2x to 10x Transitional Via Design Rules Modified rules 10x90a_YR
Modified rules 2x72a_L, 2x72b_L, 2x72c_L, 2x73a_L, 2x73b_L,
2x73c_L
2x Via Design Rule for Low-K
Removed rules 2x74aR_L, 2x74bR_L, 2x74cR_L
8x Metal Design Rules Modified rules 8x00b
Modified rules APMOM16, APMOM20a, APMOM3a, APMOM3b,
APMOM5a
APMOM Design Rules
BEOL Metal Fill Design Rules Modified rules DS518a
Crack Stop MOB_CS Design Rules Removed rules MOB_4b
Design for Manufacturability Rules Removed rules 204nR_GF, 204pR_GF, RXT9R_GF
eLVT NFET Device Design Rules Modified rules ELVTN8b, ELVTN9b
eLVT PFET Device Design Rules Modified rules ELVTP8b, ELVTP9b
Floating Copper Pillar Design Rules Added rules LBD.C.1, LBD.C.2
Removed rules LBD.S.1, LBD.S.2
Inductor Design Rules Modified rules IND594, IND595
LB and VV Design Rules Modified rules LB90, LB90b
Lead-Free SnAg Bump Design Rules Modified rules 918_3on6
Mx and Vx Design Rules Modified rules 612b, 612c, 613a, 613b, 613c
Modified rules BUMP4.2NB.C.1, BUMP4.2NB.C.10,
BUMP4.2NB.C.11, BUMP4.2NB.C.12, BUMP4.2NB.C.13,
Non-Round Copper Pillar Common Rules
BUMP4.2NB.C.14, BUMP4.2NB.C.2, BUMP4.2NB.C.3,
BUMP4.2NB.C.4, BUMP4.2NB.C.5, BUMP4.2NB.C.7,
BUMP4.2NB.C.8, BUMP4.2NB.C.9, BUMP4.2NB.DEN.1,
BUMP4.2NB.DEN.2, BUMP4.2NB.DEN.3, BUMP4.2NB.DEN.4,
BUMP4.2NB.EN.1, BUMP4.2NB.S.2, BUMP4.LV.C.1, BUMP4.RS.C.1,
BUMP4.RS.C.2, BUMP4.RS.C.3
Modified rules BUMP4P100.2NB.C.1, BUMP4P100.2NB.EN.1,
BUMP4P100.2NB.W.1, BUMP4P100.LV.C.1, BUMP4P100.LV.W.1,
BUMP4P100.RS.C.1, BUMP4P100.RS.W.1, BUMP4P100.2NB.S.1
Non-Round Copper Pillar Rules for 111.111 <= p < 166.667
Modified rules BUMP4P150.2NB.C.1, BUMP4P150.2NB.EN.1,
BUMP4P150.2NB.W.1, BUMP4P150.LV.C.1, BUMP4P150.LV.W.1,
BUMP4P150.RS.C.1, BUMP4P150.RS.W.1, BUMP4P150.2NB.S.1
Non-Round Copper Pillar Rules for 166.667 <= p
Modified rules BUMP4P80.2NB.C.1, BUMP4P80.2NB.EN.1,
BUMP4P80.2NB.W.1, BUMP4P80.LV.C.1, BUMP4P80.LV.W.1,
BUMP4P80.RS.C.1, BUMP4P80.RS.W.1, BUMP4P80.2NB.S.1
Non-Round Copper Pillar Rules for 88.889 <= p < 111.111
Optional CLVS Design Rules Modified rules 958a, 965, 965a
Zero-Vt NFET Design Rules Modified rules ZVT14
Added LV_ROUND, RS_ROUND, 2NB_ROUND, LV_OBLONG,
RS_OBLONG and 2NB_OBLONG design level.
Mask and Design Levels
Ordering Information Added BEOL option 17.
Updated packaging options.
Back-End-of-Line (BEOL) Design and Utility Levels Added layer LBDUMMY.
BEOL Metallization Options Added BEOL option 17.
Design Kit Metallization Options Updated Wire-bond or Flip Chip Options.
Packaging Options Offered Updated the whole section.
Glossary of Design Rule Terminology Updated DV_probe_pad and DV_wire-bond_pad definitions.
Added ALL_HIP_EQUALIZER definition.
RX Design Rules Modified rules 12, 13
PC Design Rules Modified rules 104e, 149, PCE2.EX.A.1
Antenna Design Rules Added rules 131xa_or_1, 131xb_1, 131xc_1, 131xd_1, 131y_1, 131z_1
Modified rules 131_1, 131_2, 131a, 131b1, 131b2, 131f, 131h, 131i,
131j, 131k, 131x, 131xb, 131xc, 131xd, 131y, 131z
Thick-Oxide (ZG) Device Design Rules Modified rules ZG268a, ZG268b
High-speed I/O Device Design Rules Added rules EG252
Modified rules EG268b
N-Well and Latchup Design Rules Modified rules 268a, 268b
Zero-Vt NFET Design Rules Modified rules ZVT14
Modified rules ELVTN8a, ELVTN8b, ELVTN9a, ELVTN9b, ELVTP8a,
ELVTP8b, ELVTP9a, ELVTP9b
eLVT NFET Device Design Rules
NPLUS Design Rules Modified rules 472
NCAP Design Rules Modified rules NC1a, NC1b
ESD Silicide-Blocking Design Rules Modified rules SB730,SB731
CA Design Rules Modified rules 207b
Mx and Vx Design Rules Added rules 612a, 612b, 612c
Modified rules 602k1, 602k2, 602k3, 602k4, 613a, 613b, 613c
Removed rules 612a1, 612a2, 612a_or, 612c1, 612c2, 612c_or, 612d1,
612d2, 612d_or, 614a, 614b, 614c
Added rules 8x72a_YX, 8x72b_YX, 8x72c_YX, 8x73a_YX, 8x73b_YX,
8x73c_YX
1x to 8x Transitional Via Design Rules
Removed rules 8x72a_YXR, 8x72b_YXR, 8x72c_YXR, 8x73a_YXR,
8x73b_YXR, 8x73c_YXR, 8x74a_YXR, 8x74b_YXR, 8x74c_YXR
1x to 10x Transitional Via Design Rules Added rules 10x72_YSR
2x Via Design Rule Modified rules 2x60f, 2x72a, 2x72b, 2x72c, 2x73a, 2x73b, 2x73c
Removed rules 2x74aR, 2x74bR, 2x74cR
2x Via Design Rule for Low-K Modified rules 2x60f_L
Added rules 8x72a_YZ, 8x72b_YZ, 8x72c_YZ, 8x73a_YZ, 8x73b_YZ,
8x73c_YZ
2x to 8x Transitional Via Design Rules
Removed rules 8x72a_YZR, 8x72b_YZR, 8x72c_YZR, 8x73a_YZR,
8x73b_YZR, 8x73c_YZR, 8x74a_YZR, 8x74b_YZR, 8x74c_YZR
Added rules 8x72a_XA, 8x72b_XA, 8x72c_XA, 8x73a_XA, 8x73b_XA,
8x73c_XA
8x Via Design Rules
Added rules 10Bx72_XDR, 30x72b_JQ, 30x72c_JQ, 30x73b_JQ,
30x73c_JQ
10x Via Design Rules
OI and JQ Design Rules Modified rules 30x72a_JQ, 30x73a_JQ
Removed rules 30x74a_JQ
Added rules APMOM12a, APMOM12b, APMOM12c, APMOM1a,
APMOM1b, APMOM20a, APMOM20b, APMOM20c, APMOM29,
APMOM Design Rules
APMOM2c, APMOM32, APMOM32a, APMOM3a, APMOM3b,
APMOM6a
Modified rules APMOM1, APMOM12, APMOM13, APMOM16,
APMOM16b, APMOM18, APMOM19, APMOM20, APMOM21,
APMOM26, APMOM3, APMOM4, APMOM5a, APMOM7R,
APMOM8R, APMOM9
Removed rules APMOM17, APMOM2, APMOM5b
Inductor Design Rules Added rules IND794, IND898, IND899
Modified rules IND00, IND01a, IND01aa, IND01b, IND01bb, IND02,
IND03, IND09b, IND11, IND594, IND595, IND894, IND895
Removed rules IND205
Flip Chip Design Rules Updated the whole flip chip design rule section.
Wire-Bond Design Rules Updated the whole wire-bond design rule section.
Crack Stop (MOB) Design Rules Modified rules MOB12b, MOB12b_L, MOB_G1
Removed rules MOB01a
Added rules MOB_4a, MOB_4b
PCD Design Rules for PCD Target Cells Modified rules PCD13
Removed rules PCD17, PCD18
Reserved Level Checking Design Rules Modified rules RL05, RL06
Alternate Design Rules for Approved SRAM Cells Modified rules SR104a, SR104b, SR261
BEOL Metal Fill Design Rules Modified rules DS598
FEOL Fill Design Rules Modified rules EQFILL.EXCLS.6.GF.CFILL
Local Pattern Design Rules Modified rules MXDENS.MAX.3, MXDENS.MIN.4
Design for Manufacturability Rules Added rules 204pR_GF, 553hR_GF, RXT9R_GF
Modified rules 507R_GF
N/A No change implemented.
Alternate Design Rules for Approved SRAM Cells Corrected typos of rules SR104a, SR104b and SR104c.
BEOL Metal Fill Design Rules Added rule DS710.
M1 Design Rules Corrected typo of rule 504X-a6.
OI and JQ Design Rules Modified rule 30x99_JQ.
BEOL Via Fill Design Rules Corrected typo of rules DS744b and DS754b.
Block Implant Level Generation Removed RE layer from ZP Boolean equation.
RX Design Rules Removed footnote of rule 52c.
Removed footnote of rules EG252a, EG252a1, EG252a2, EG252a3,
EG252a4 and EG252a5.
High-speed I/O Device Design Rules
N-Well and Latchup Design Rules Removed footnote of rule 252d.
Antenna Design Rules Modified rule 131_2.
Modified rule ALVT207.
ALVT Device Design Rules
Removed footnote of rules ALVT252a and ALVT252a3.
Ordering Information Added ALVT NFET and ALVT PFET.
Mask and Design Levels Removed RE (GDS: 12,59).
Block Implant Level Generation Removed RE level.
RX Design Rules Added rule 52c.
Removed rule 52R.
PCZFILL Design Rules Updated rule description of D102b.
Antenna Design Rules Added rules: 131_1, 131_2, 131b1 and 131b2.
Updated rule values of 130a, 131c, 134a.
Removed rules: 131, 131b.
Thick-Oxide (ZG) Device Design Rules Updated rule description of ZG20. Added footnote to ZG20.
Added rules: ZG24a, ZG24b, ZG25a and ZG25b.
Removed rules: ZG24 and ZG25.
High-speed I/O Device Design Rules Updated rule description of EG3 and EG20.
ALVT Device Design Rules Added new section.
Added design rules: ALVT1, ALVT2, ALVT3, ALVT10, ALVT11a,
ALVT11b, ALVT20, ALVT21, ALVT22, ALVT24, ALVT25,
ALVT25a, ALVT26, ALVT52, ALVT52a, ALVT110, ALVT207,
ALVT252a, ALVT252a3, ALVT260, ALVT265a, ALVT265b,
ALVT268a, ALVT268b.
N-Well and Latchup Design Rules Updated rule description of LWV01.
V1 and Vx Design Rules Updated rule description of 550cd, 550d, 590, 590a, 591 and 591a.
Added rules: 30x90_JQ, 30x90a_JQ, 30x91_JQ, 30x91a_JQ and
30x99_JQ.
UTM30x Metal and Via Design Rule (Copper Inductor Design Rule)
Common Wire-bond Design Rules Updated rule value of WB03 and WB08.
Staggered Wire-bond Pads Updated rule value of S955c_25.
Crack Stop (MOB_CS and MOB_GA) Design Rules Removed MOB_CS_Mx3.
Alternate Design Rules for Approved SRAM Cells Added rule SR52c.
Updated rule description of EQFILL.EXCLS.18.GF,
RXGFILL.EXCLS.8.GF, RXGFILL.EXCLS.9.GF,
Fill Generation Design Rules
PCGFILL.EXCLS.6.GF, PCGFILL.EXCLS.7.GF,
TJGFILL.EXCLS.16.GF, EQFILL.EXCLS.18.GF.CFILL,
RXGFILL.EXCLS.8.GF.CFILL, RXGFILL.EXCLS.9.GF.CFILL,
PCGFILL.EXCLS.6.GF.CFILL, PCGFILL.EXCLS.7.GF.CFILL and
TJGFILL.EXCLS.16.GF.CFILL.
No change implemented. No change implemented.
Electrical Parameters and Models Updated electrical parameters.
Hot-carrier Effects Updated CORE FET (thin oxide, SG) Vnom from "1.21 V" to "1.05 V".
Updated CORE FET (thin oxide, SG) Vmax from "1.26 V" to "1.155
V".
Updated CORE FET (thin oxide, SG) Vmax from "1.26 V" to "1.155
V".
Gate Dielectric Integrity
Negative Bias Temperature Instability (NBTI) Updated CORE FET (thin oxide, SG) Vnom from "1.21 V" to "1.05 V".
Updated CORE FET (thin oxide, SG) Vmax from "1.26 V" to "1.155
V".
Ordering Information Added new metal stack: 3U1x_1L2x_2T8x_LB (LB option: thick only)
Added design layers: WT (GDS: 88,0), WTRV (GDS: 88,5), WTBAR
(GDS: 88,1) and BA (GDS: 89,0).
Mask and Design Levels
Added design and utility levels: BABLOCKAGE (GDS: 89, 61),
BAEXCLUD (GDS: 89, 2), BACRITEXCL (GDS: 89, 64051), BAFILL
Design and Utility Levels
(GDS: 89, 35), BAZFILL (GDS: 89, 700), BAOPCFILL (GDS: 89, 55),
BAESD (GDS: 89, 60), BAVDD2V5 (GDS: 89, 103), BAVDD3V3
(GDS: 89, 104), WTEXCLUD (GDS: 88, 2), WTFILL (GDS: 88, 35),
WTZFILL (GDS: 88, 700).
Added metal stack option 16: 3U1x_1L2x_2T8x_LB (LB option: thick
only)
BEOL Metallization Options
Short Edge Design Rules Updated rule description of SE7.
Antenna Design Rules Updated rule description of 134a.
Added rules: 2x00_L, 2x00b_L, 2x01a_L, 2x01b_L, 2x02_L, 2x03a_L,
2x03b_L, 2x04_L, 2x04b_L, 2x04e_L, 2x04f_L, 2x80_L, 2x81_L,
2x Metal and Via Design Rules for Low-K
2x82_L, 2x50_L, 2x53_L, 2x53a_L, 2x53b_L, 2x57_L, 2x60_L,
2x60_or_L, 2x60a_L, 2x60b_L, 2x60c_L, 2x60f_L,
2x61_L, 2x61_or_L, 2x61a_L, 2x61b_L, 2x61c_L, 2x72a_L,
2x72b_L, 2x72c_L, 2x73_L, 2x73a_L, 2x73b_L, 2x73c_L, 2x74aR_L,
2x74bR_L, 2x74cR_L, 2x74_L, 2x90_L, 2x90a_L, 2x91_L,
2x91a_L, 2x93_L.
VxZFILL and W0ZFILL Design Rules Added rules: CFWx01_L, CFWx02_L, CFWx03_L, CFWx05_L.
Chip Guard Ring and PROTECT Design Rules Added rules: 990h_L, 990jW0_L, 990kYZ_L.
Updated rule description of 999 and 999s.
Permissible Chip Size Design Rules Updated rule description of CE003 and CE005.
Crack Stop (MOB) Design Rules Updated rule description of MOB09.
Added rules: MOB09a_L, MOB12a_L, MOB12b_L, MOB12c_L,
MOB17a_L.
Crack Stop (MOB_CS and MOB_GA) Design Rules Updated rule description of MOB_CS_Mx3.
Added resistance of WT. Added sheet resistance and film thickness of
BA.
Wiring Resistance Models
Quick Look-Up Wiring Capacitances for Nested Wiring Levels (3D Added BA wiring level.
Model)
Added rules: DS521a_L, DS521d_L, DS522_L DS525_L, DS525OPC_L
DS525IND_L, DS527_L, DS527OPC_L, DS527IND_L, DS528_L,
Fill Generation Design Rules
DS529_L, DS529OPC_L, DS721_L, DS723_L, DS724_L, DS725_L,
BADENS.MIN.2_L, BADENS.MIN.2R_L, BADENS.MIN.3_L,
BADENS.MAX.2a_L, BAGRAD.MAX.4_L.
Updated rule description of DS500, DS501, DS503, DS598, DS599,
INDFILL245, DS700, DS701, DS797, DS798, DS799, INDFILL225.
Ordering Information Added new metal stack: 6U1x_1T8x_1T30x_LB (LB option: thick only)
Added metal stack option 15: 6U1x_1T8x_1T30x_LB (LB option: thick
only)
BEOL Metallization Options
Removed CAING (GDS: 14,84), CTING (GDS: 247,84), M1ING (GDS:
15, 84), M2ING (GDS: 17, 84), M3ING (GDS: 19, 84), M4ING (GDS:
Design and Utility Levels
21, 84), M5ING (GDS: 31, 84), M6ING (GDS: 44, 84), B1ING (GDS:
79, 84), IAING (GDS: 136, 84), IBING (GDS: 137, 84), OIING (GDS:
59, 84), PCING (GDS: 7, 84), PCINGAST (GDS: 7, 87), RXING (GDS:
2, 84), V1ING (GDS: 16, 84), V2ING (GDS: 18, 84), V3ING (GDS:
20, 84), V4ING (GDS: 22, 84), V5ING (GDS: 32, 84), W0ING (GDS:
78, 84), YXING (GDS: 237, 84), YZING (GDS: 238, 84), XAING (GDS:
135, 84), JQING (GDS: 58, 84).
Alternate Design Rules for Approved SRAM Cells Updated rule description of SR572_or.
Renamed SR572d to SR572c1.
Updated rule description of EQFILL.EXCLS.21.GF,
RXGFILL.EXCLS.19.GF, PCGFILL.EXCLS.11.GF,
FEOL Fill Design Rules (UFD0.8)
PCGFILL.EXCLS.13.GF, CTGFILL.EXCLS.7.GF and
TJGFILL.EXCLS.20.GF.
Added rules: EQFILL.EXCLS.28.GF, RXGFILL.EXCLS.25.GF and
PCGFILL.EXCLS.13.GF.
Updated rule description of EQFILL.EXCLS.21.GF.CFILL,
RXGFILL.EXCLS.19.GF.CFILL, PCGFILL.EXCLS.11.GF.CFILL,
CTGFILL.EXCLS.7.GF.CFILL and TJGFILL.EXCLS.20.GF.CFILL.
FEOL CFILL0.9 Design Rules
Added rules: EQFILL.EXCLS.28.GF.CFILL,
RXGFILL.EXCLS.25.GF.CFILL and PCGFILL.EXCLS.13.GF.CFILL.
BEOL Metal Fill Design Rules Updated rule description of DS500 and DS511a.
Removed rules: DS521c, DS561c, DS571c and DS581c.
Updated footnote 1.
BEOL Via Fill Design Rules Updated rule description of DS700 and DS797.
Design and Utility Levels Added KERFEXCL (GDS: 101,250).
Glossary of Design Rule Terminology Removed definition for RX and PC.
Mask and Wafer Process Control Drop-in (PCD) Design Rules Updated rule description of PCD11.
Design Rule Syntax Removed syntax: "Edge Extension".
PC Design Rules Updated rule description of 113, 113b1R, 113b2R, 113b3R and 113b4R.
Permissible Chip Size Design Rules Updated rule description of CE005.
Alternate Design Rules for Approved SRAM Cells Deleted rules SR553f and SR675c.
BEOL Metal Fill Design Rules Updated rule description of DS500.
Design and Utility Levels Added ZVT_CORE (GDS: 12,107).
Removed PW_LDMOS (GDS: 780,91).
Truth Tables Updated Design Truth Table and Data Preparation Truth Table.
Updated definition of CA, CABAR, OP, SBLK, Vx, VxBAR and
VxLRG.
Glossary of Design Rule Terminology
Removed definition for MxFILL, Mx_OPC_DUMMY, Mx, VV pad
contact, VVLRG and MOB.
Design Rule Syntax Added new syntax: "Edge Extension".
N-Well and Latchup Design Rules Updated footnote of 260, 265 and 266.
Inserted footnote for 261.
High-speed I/O Device Design Rules Updated rule description of EG102_or.
Updated footnote of EG260, EG265a and EG265b.
PC Design Rules Updated rule description of 119a, 120, PCE2.S.RX.1 and PCE2.C.2.
P+, N+, Source, and Drain Implant Design Rules Updated rule description of 473.
Updated footnote of 369a and 469a.
Inserted footnote for 369b and 469b.
Zero-Vt NFET Design Rules Added rule ZVT9b, ZVTC1, ZVTC2 and ZVTC3.
Updated rule description of ZVT4.
Butted-junction Design Rules Updated rule description of 382a.
Contact Design Rules Updated rule description of 208.
APMOM Design Rules Updated rule description of APMOM2, APMOM30 and APMOM31.
Mask and Wafer Process Control Drop-in (PCD) Design Rules Updated rule description of PCD4.
Removed PCD5.
Alternate Design Rules for Approved SRAM Cells Renamed rule "SR261a" to "SR261".
Removed rules SR52k, SR501aSE, SR501d, SR601aSE_M2,
SR602a_M2, SR604k1_M2 and SR604k2_M2.
Updated Maximum Idc Current Limit for CA at 100°C from 0.042 mA
to 0.172 mA.
Idc Exceptions to the General Rules for Vias
BEOL Metal Fill Design Rules Added DS511d, DS521d, DS561d and DS571d.
Removed DS511c, DS521b, DS561b and DS571b.
Features Updated sections on CMOS Process and Device Options.
Added 5VHVFET (GDS: 780,87), 33VHVFET (780,88), PW_LDMOS
(GDS:780,91), VNCAP2 (GDS:780,141) and RES_BODY
(GDS:780,140).
Design and Utility Levels
Removed VNCAP marking layer (GDS: 62, 120).
Polysilicon and Isolation Design Rules Updated rule values 12, 13 and 132a.
Updated rule description of PCE2.S.RX.2, 104aR and 104bR.
Thick-Oxide (ZG) Device Design Rules Added rule ZG207a.
Updated rule descriptions of ZG1, ZG2, ZG102, ZG207 and ZG265b.
Updated rule values of ZG1b, ZG10, ZG30 and ZG34.
High-speed I/O Device Design Rules Updated rule descriptions of EG1, EG2, EG17, EG265b and EG268a.
Added footnote to rules EG1c, EG2c, EG260, EG265a and EG265b.
N-Well and Latchup Design Rules Updated rule description of LWV02.
Added footnote to rules 260, 265 and 266.
Selective Timing Bias Design Rules Updated rule description and value of STB12 and STB13.
Added rules STB14 and STB15.
P+, N+, Source, and Drain Implant Design Rules Updated rule description of 351c, 369b and 451c.
Inserted footnote to rules 369b and 469a.
Butted-junction Design Rules Updated rule descriptions of 382a.
Bipolar Transistor Design Rules Updated rule description of BT4, BT8, PNP13, NPN13.
ESD Design Rules Updated rule value of EDX05.
Updated rule description of ESD0d and ESD0e.
ESD Silicide-Blocking Design Rules Updated rule description of SB730a.
Deleted rule SB725a.
Updated rule description of LUP14a, LUP14b, LUP14ba, LUP14c,
LUP15a, LUP15aa, LUP15aC4, LUP15b.
Latchup Design Rules
2x to 10x Transitional Via Design Rules Added new section on 2x to 10x Transitional Via Design Rules.
Added rules 10x50_YR, 10x53a_YR, 10x53b_YR, 10x57_YR,
10x60_YR, 10x60a_YR, 10x61_YR, 10x61a_YR, 10x90_YR,
10x90a_YR, 10x91_YR, 10x91a_YR and 10x93_YR.
APMOM Design Rules Updated rule description of APMOM12.
Added rules APMOM30 and APMOM31.
Rename rules: (From APMOM18 to APMOM16), (From APMOM19
to APMOM18), (From APMOM20 to APMOM19), (From APMOM21
to APMOM20), (From APMOM22 to APMOM21), (From APMOM23
to APMOM22), (From APMOM24 to APMOM23), (From APMOM25
to APMOM24), (From APMOM26 to APMOM25), (From APMOM27
to APMOM26), (From APMOM28 to APMOM27), (From APMOM29
to APMOM28).
Resistor Design Rules Updated rule description of 700, 701a, 705, 706, 737.
Updated rule value of 700.
Added rules S710, S711, S712, S713, S734a, S734b, S734c, S734d,
S735a, S735b, S738, S740.
Fuse Design Rules Updated EF26.
LB and LV Pad Design Updated rule description, rule value and removed footnote of 916a_3on6.
Deleted rule 916b_3on6
Updated rule value of 941c, 946ca, 946cb, D941c, D946ca, D946cb,
S941c_25, S946ca_25, S946cb_25, S946cc_25 and S955c_25.
Wire-bond Terminal Design Rules
Removed rule 945c, S941c_30, S946ca_30, S946cb_30, S946cc_30 and
S955c_30.
Chip Guard Ring and PROTECT Design Rules Updated rule description of 999s.
Permissible Chip Size Design Rules Added rules CE004 and CE005.
Updated rule description and footnote of CE003.
Crack Stop (MOB) Design Rules Updated rule description of MOB04, MOB09a, MOB12a and MOB19c.
Added rules MOB12b and MOB12c.
Deleted rule EX_MOB.
Crack Stop (MOB_CS and MOB_GA) Design Rules Updated rule description of MOB_CS_Mx3.
Mask and Wafer Process Control Drop-in (PCD) Design Rules Updated rule description of PCD3.
Added rule PCD3a.
Alternate Design Rules for Approved SRAM Cells Added rule SRPCE2.S.RX.2 and SR601a_M2.
FEOL Fill Design Rules (UFD0.8) Updated rule value of PCGFILL.LENGTH.2.GF.
Updated rule description of HIPFILL.SPACE.3.GF and
HIPFILL.SPACE.4.GF.
Updated rule description of HIPFILL.SPACE.3.GF.CFILL and
HIPFILL.SPACE.4.GF.CFILL.
FEOL Fill Design Rules (CFILL0.9)
Added rules PDPCb, PDPCE2, RXDENS.MAX.4a and
RXDENS.MAX.4b.
Local Pattern Density Design Rules
Updated rule value of RXDENS.MAX.5.
Changed eSiGEDENS.MAX.1 and eSiGEDENS.MIN.1 from
recommended rule to mandatory rule.
Deleted rule RXDENS.MAX.4.
Ordering Information Added notes 11 and 12.
BEOL Metallization Options Added following notes:
"BEOL metallization options 5, 7, 8, 9 and 13 have not been qualified
Please contact your GLOBALFOUNDRIES technical representative if
these BEOL metallization options are required."
"Please contact your GLOBALFOUNDRIES technical representative
if large VV option or thin LB option is required."
Ordering Information Added thick LB option to 6U1x_1T10x_LB metal stack.
Added thick LB option to BEOL metallization option 14:
6U1x_1T10x_LB.
BEOL Metallization Options
Reliability Design Guidelines and Models Updated sections: Electromigration (EM).
No change implemented. No change implemented.
No change implemented. No change implemented.
Ordering Information Updated large VV option.
Updated sections: Hot-Carrier Effects, Gate Dielectric Integrity, Bias
Temperature Instabilities (BTI), Electromigration (EM).
Reliability Design Guidelines and Models
Deleted rules: SR504k1, SR504k2, SR506a, SR50e1, SR50e2, SR50e3,
SR52fac, SR52fad, SR601a_M2, SRB_BF01, SRB_NW01.
Alternate Design Rules for Approved SRAM Cells
Geometry Restriction Design Rules Removed footnote from rule S6.
RX Design Rules Updated rule: 57.
PCZFILL Design Rules Added rule: D102b.
High-speed I/O Device Design Rules Updated rule: EG102a.
Thick-Oxide (ZG) Device Design Rules Updated rule: ZG102.
M1 Design Rules Added rule 501b2.
Added footnote to rule 500b.
Deleted rule 501d.
Mx and Vx Design Rules Updated rules: 601a, 601b, 610_or, 611_or.
Added rule: 601b2.
Added footnote to rule 600b.
Deleted rules: 601d, 611e, 611f
2x Metal and Via Design Rules Updated rules: 2x01b, 2x60_or and 2x61_or.
Updated rules: 2x53, 2x53b.
Deleted rule 2x01aR.
2x to 8x Transitional Via Design Rules Deleted rule: 8x60_YZR.
10x Metal and Via Design Rules Updated footnote of rule 10x00b.
UTM30x Metal and Via Design Rule (Copper Inductor Design Rule) Updated rules: 30x60_JQ, 30x61C_JQ, OI3, OI4, OI5 and OI9.
Deleted rule 30x60a_JQ.
LB and VV Design Rules Added rules: LB90b, LB94, LB95.
Updated rules: LB80, LB90.
Deleted rule: LB93.
Inductor Design Rules Updated rule: IND01a.
Added rule: IND01d.
Active C4 Terminals Updated rules: 910_3on6, 911_3on6, 915a_3on6.
Mask and Wafer Process Control Drop-in (PCD) Design Rules Updated rules: PCD8b, PCD8c.
Permissible Chip Size Design Rules Added rule: CE002.
Updated rule: CE003.
Crack Stop (MOB) Design Rules Updated rule: MOB15.
Crack Stop (MOB_CS and MOB_GA) Design Rules Updated rule: MOB_CS_Mx3.
Added rules: 2x01aR_GF, 2x66R_GF, 8x60_YXaR_GF,
8x60_YZaR_GF, 8x62R_GF, 10x66R_GF, 10x67R_GF.
Design for Manufacturability Rules
Updated rules: 671cR_GF, 670R_GF, 555R_GF, 30x62R_JQ_GF.
Deleted rules: 4x01aR_GF, 4x65R_GF.
Alternate Design Rules for Approved SRAM Cells Updated rule description of SR572_or, SR611_or.
Added rules: SR453, SR455, SRPCE2.S.RX.1
Deleted rules: MXDENS.MAX.2b, B1DENS.MAX.2b,
IXDENS.MAX.2b, JXDENS.MAX.2b, OIDENS.MAX.2b.
Local Pattern Design Rules
Ordering Information Added large VV option.
Deleted design and utility levels: YXZFILL (237,700), YZZFILL
(238,700), XAZFILL (135,700), YSZFILL (33,700), YRZFILL
(196,700), XDZFILL (191,700) and JQZFILL (58,700).
Design and Utility Levels
Glossary of Design Rule Terminology Updated definition of LOWVOLT.
RX Design Rules Updated rule: 50a and 55.
Added rule: 57.
Deleted rule: 55_or, 55a and 55b.
PC Design Rules Added footnote to rule 102b and 102c.
Updated rules: 113d, 113d1, 113e and 113e1.
Deleted rule: 102_or and 110b.
PCZFILL Design Rules Deleted rule: D107.
Thick-Oxide (ZG) Device Design Rules Updated rules: ZG52a, ZG260, ZG265a and ZG265b.
High-speed I/O Device Design Rules Updated rule: EG3.
N-Well and Latchup Design Rules Updated rules: 261a, 266, 272 and 273.
Deleted rules: 261_or and 261b.
Low-Vt Device Design Rules Added rules: LVTN1a and LVTP1a.
Updated rules LVTN1 and LVTP1.
Deleted rules: LVTN14 and LVTP14.
P+, N+, Source, and Drain Implant Design Rules Updated rules: 350, 351c, 352b, 450, 451c and 452b.
Added rules: 350a and 450a.
Bipolar Transistor Design Rules Updated rule: BT9.
NFET in N-Well Capacitor Design Rules Updated rules: NC28, NC29, NC29b and NC29c.
PFET in P-Well Capacitor Design Rules Updated rules: PC28, PC29, PC29b and PC29c.
Updated rules: 701, 701a, 702, 706, 706a, 707, 734a, 734b, 734c, 734d
and 739b.
OP Resistor Design Rules
Deleted rules: 703 and 708.
ESD Design Rule Syntax Updated rule syntax of LC power supply pad.
ED P+ Implant for ESD Updated rules: EDX03, EDX04 and EDX05.
ESD Silicide-Blocking Design Rules Updated rules: SB725a.
Contact Design Rules Updated rule: 207U and 209g.
Deleted rules: 207d
M1 Design Rules Updated rules: 501b and 505c.
Deleted rule: 501aSE and 504X-a7.
V1 and Vx Design Rules Updated rule: 572_or.
Deleted rules: 570, 571 and 572d.
Updated footnote that is attached to rule 613a. Added footnote to rule
680.
Mx and Vx Design Rules
Updated rule: 611a.
Deleted rules: 601aSE, 670 and 671.
1x to 8x Transitional Via Design Rules Updated rule: 8x53b_YX.
2x to 8x Transitional Via Design Rules Updated rule: 8x53b_YZ.
2x Metal and Via Design Rules Updated rule: 2x53.
8x Metal and Via Design Rules Updated rules: 8x81 and 8Bx53b.
Electrically Programmable Fuse Updated rule: EF26.
Remove CM and TM non-design mask levels. Added 2NB non-design
mask level.
C4 Terminal Design Rules
Mask and Wafer Process Control Drop-in (PCD) Design Rules Updated rules: PCD0a, PCD0b, PCD0c, PCD07aR, PCD11 and PCD12.
Added rules: PCD13, PCD14, PCD15, PCD16, PCD17 and PCD18.
Deleted rule: PCD06a.
Special LOGOBND Design Rules Deleted section.
Deleted rules: PN1a, PN2aR, PN2b and PN3R.
Contact Design Rules Updated rules: 228, 230, 232
Deleted rule 229
UTM30x Metal and Via Design Rule (Copper Inductor Design Rule) Added rule: OI9a.
Deleted footnote from rules 30x90_JQ, 30x90a_JQ, 30x91_JQ,
30x91a_JQ and 30x99_JQ.
LB and VV Design Rules Updated rules: LB81, LB82, LB86, LB90a and LB93.
Deleted rule: LB04b.
Permissible Chip Size Design Rules Deleted rule: CE002.
Reserved Level Checking Design Rules Deleted rule: RL03.
Alternate Design Rules for Approved SRAM Cells Added rules: SR52d, SR102a, SR266, SR670_or and SR670f.
Table: Resistance of Minimum Width, Minimum Space Wires at 25°C Updated lower and upper limit of M1 and Mx wire resistance.
FEOL Fill Design Rules (UFD0.8) Updated rule: EQFILL.EXCLS.6.GF and FILL.SHAPE.1a.GF.
Updated rule: EQFILL.EXCLS.6.GF.CFILL and
FILL.SHAPE.1a.GF.CFILL.
FEOL Fill Design Rules (CFILL0.9)
Local Pattern Design Rules Updated footnotes 1, 2 and 3.
Initial Release of 28LPSe design manual published from 28PolySiON It is based on 28PolySiON Master Design Manual.
single Dita source.
