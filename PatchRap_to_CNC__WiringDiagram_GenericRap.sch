v 20130925 2
T 14900 17000 9 10 1 0 0 0 9
GEN
3 \/ 1 - Vsys/Vcc
3 \\ 2 - pGND/sGnd
2 - 3 - Vext/Vmid/Avcc/SigAlt		(NC)										(LO)
1 \/ 4 - Sig-/SigTx-				(sGND)				(Dir)		(I2C, UART)	
1 \\ 5 - Sig+/SigTx+				(COM,ANA,Probe)		(Step)	(I2C, UART)		(IF)
2 - 6 - sGND					(NO)
4 \/ 7 - PWMalternate/SigRx+		(Control, Servo, Heater)	(I2C,UART)				(RF)
4 \\ 8 - PWMdirect/SigRx-		(Fan)				(I2C,UART)
T 2400 18100 9 10 1 0 0 0 4
Vext/GND, SigP - Probe, Servo, 5V Blower Hotend Fan
Vsys/Vee, Ap/Am & Bp/Bm - Stepper Motor, Vsys Motor Fan, Vsys Hotend Fan
Vsys/Vee, SigP & PWMa & PWMd - Hotend (Thermistor, Heater, Cooling)

L 1900 19000 26400 19000 3 0 0 0 -1 -1
C 4500 41500 1 0 0 GenericRap.sym
{
T 9000 46500 5 10 1 1 0 0 1
refdes=M1
T 7500 48000 5 10 0 0 0 0 1
device=GenericRap
T 7500 47600 5 10 0 0 0 0 1
footprint=_M1__GenericRap_WireShield
}
T 9400 17700 9 10 1 0 0 0 6
All Vext connections are dedicated and should
not be shared.

Servo and Chasis Fan should use Vee despite
operating at logic/signal Vext voltage, due to
risk of bouncing thermistor ground.
T 2400 16600 9 10 1 0 0 0 7
Thermistor may require careful ground plane arragement.

Heater ideally should be powered at <100% duty cycle to
allow spark gap to extinguish.

Many indicator and configuration features may be
omitted to reduce cost.
C 4500 32000 1 0 0 GenericRap_Cutdown.sym
{
T 9000 37000 5 10 1 1 0 0 1
refdes=M2
T 7500 38500 5 10 0 0 0 0 1
device=GenericRap_Cutdown
T 7500 38100 5 10 0 0 0 0 1
footprint=_M2__GenericRap_Cutdown
}
C 4500 22500 1 0 0 GenericRap_Cutdown.sym
{
T 9000 27500 5 10 1 1 0 0 1
refdes=M3
T 7500 29000 5 10 0 0 0 0 1
device=GenericRap_Cutdown
T 7500 28600 5 10 0 0 0 0 1
footprint=_M3__GenericRap_Cutdown_WireShield
}
C 19900 30000 1 270 0 input-2.sym
{
T 20600 29400 5 10 0 0 270 0 1
device=none
T 20100 30000 5 10 1 0 270 0 1
net=Probe:1
T 20000 29500 5 10 1 1 270 7 1
value=INPUT
}
C 19500 30000 1 270 0 input-2.sym
{
T 20200 29400 5 10 0 0 270 0 1
device=none
T 19700 30000 5 10 1 0 270 0 1
net=Servo:1
T 19600 29500 5 10 1 1 270 7 1
value=INPUT
}
L 3000 23500 4700 23500 3 0 0 0 -1 -1
C 21500 39500 1 270 0 input-2.sym
{
T 22200 38900 5 10 0 0 270 0 1
device=none
T 21700 39500 5 10 1 0 270 0 1
net=Bp:1
T 21600 39000 5 10 1 1 270 7 1
value=INPUT
}
C 21100 39500 1 270 0 input-2.sym
{
T 21800 38900 5 10 0 0 270 0 1
device=none
T 21300 39500 5 10 1 0 270 0 1
net=Ap:1
T 21200 39000 5 10 1 1 270 7 1
value=INPUT
}
C 20700 39500 1 270 0 input-2.sym
{
T 21400 38900 5 10 0 0 270 0 1
device=none
T 20900 39500 5 10 1 0 270 0 1
net=Am:1
T 20800 39000 5 10 1 1 270 7 1
value=INPUT
}
C 20300 39500 1 270 0 input-2.sym
{
T 21000 38900 5 10 0 0 270 0 1
device=none
T 20500 39500 5 10 1 0 270 0 1
net=Bm:1
T 20400 39000 5 10 1 1 270 7 1
value=INPUT
}
N 21300 35100 21300 38100 4
N 21300 38100 21600 38100 4
N 21100 34700 21100 38100 4
N 21100 38100 21200 38100 4
N 20900 34300 20900 38100 4
N 20900 38100 20800 38100 4
N 20700 33900 20700 38100 4
N 20700 38100 20400 38100 4
L 21800 35000 23500 35000 3 0 0 0 -1 -1
L 3000 42500 4700 42500 3 0 0 0 -1 -1
C 19200 41100 1 180 0 vee-1.sym
C 20700 22400 1 180 0 vee-1.sym
C 20700 22400 1 180 1 generic-power.sym
{
T 20900 22150 5 10 1 1 180 3 1
net=Vsys:1
}
C 20300 29000 1 180 1 gnd-1.sym
C 21000 41100 1 180 1 generic-power.sym
{
T 21200 40850 5 10 1 1 180 3 1
net=Vsys:1
}
C 20600 41100 1 180 0 vee-1.sym
C 22000 40000 1 90 0 input-2.sym
{
T 21300 40600 5 10 0 0 90 0 1
device=none
T 21800 40000 5 10 1 0 90 0 1
net=Thermistor:1
T 21900 40500 5 10 1 1 90 7 1
value=INPUT
}
C 20900 40000 1 90 0 input-2.sym
{
T 20200 40600 5 10 0 0 90 0 1
device=none
T 20700 40000 5 10 1 0 90 0 1
net=Heater:1
T 20800 40500 5 10 1 1 90 7 1
value=INPUT
}
C 19600 40000 1 90 0 input-2.sym
{
T 18900 40600 5 10 0 0 90 0 1
device=none
T 19400 40000 5 10 1 0 90 0 1
net=Cooling:1
T 19500 40500 5 10 1 1 90 7 1
value=INPUT
}
C 21700 41000 1 0 1 gnd-1.sym
N 21300 41400 21300 44600 4
N 21300 41400 21900 41400 4
N 21100 41900 21100 41300 4
N 21100 41300 21600 41300 4
C 19700 41100 1 180 1 generic-power.sym
{
T 19900 40850 5 10 1 1 180 3 1
net=Vsys:1
}
N 20900 41200 20900 41900 4
N 21200 41100 21200 41200 4
N 21200 41200 20900 41200 4
N 20800 41400 20800 41600 4
N 20800 41600 20700 41600 4
N 20700 41600 20700 44200 4
N 20400 41100 20400 41200 4
N 20400 41200 20500 41200 4
N 20500 41200 20500 41900 4
N 20100 41600 20100 43000 4
N 20100 41600 19500 41600 4
N 19500 41600 19500 41400 4
N 20300 41900 20300 41400 4
N 20300 41400 19900 41400 4
N 19900 41400 19900 41100 4
N 19900 41900 19900 41700 4
N 19900 41700 19000 41700 4
N 19000 41700 19000 41100 4
C 4400 48600 1 90 0 generic-power.sym
{
T 4150 48800 5 10 1 1 90 3 1
net=Vsys:1
}
C 4400 47400 1 90 0 vee-1.sym
C 19400 47900 1 180 1 gnd-1.sym
N 20500 46600 20500 47300 4
N 20500 47300 20000 47300 4
N 20000 47300 20000 50500 4
N 20300 46600 20300 47200 4
N 20300 47200 19500 47200 4
N 19500 47200 19500 47600 4
C 21100 31900 1 180 0 generic-power.sym
{
T 20900 31650 5 10 1 1 180 3 1
net=Vsys:1
}
C 20600 31900 1 180 0 vee-1.sym
N 20100 25600 20100 28600 4
N 20100 28600 20000 28600 4
N 19900 24400 19900 28600 4
N 19900 28600 19600 28600 4
L 19700 40600 20100 41000 3 0 0 0 -1 -1
L 18800 40600 19200 41000 3 0 0 0 -1 -1
L 20100 40600 20500 41000 3 0 0 0 -1 -1
L 21000 40600 21400 41000 3 0 0 0 -1 -1
L 19800 47600 20200 48000 3 0 0 0 -1 -1
L 19300 47600 19700 48000 3 0 0 0 -1 -1
L 3900 48600 4300 49000 3 0 0 0 -1 -1
L 3900 47400 4300 47800 3 0 0 0 -1 -1
L 21400 40900 21800 41300 3 0 0 0 -1 -1
L 20700 31400 21100 31800 3 0 0 0 -1 -1
L 20200 31400 20600 31800 3 0 0 0 -1 -1
N 20900 31900 20900 32400 4
N 20500 32400 20500 31900 4
N 20500 31900 20400 31900 4
N 20500 24800 20500 28600 4
N 20500 28600 21200 28600 4
N 20900 22900 20900 22400 4
N 20500 22900 20500 22400 4
L 20700 21900 21100 22300 3 0 0 0 -1 -1
L 20300 21900 20700 22300 3 0 0 0 -1 -1
N 20300 25200 20300 28700 4
L 20200 28700 20600 29100 3 0 0 0 -1 -1
N 20300 28700 20400 28700 4
L 21000 28700 21400 29100 3 0 0 0 -1 -1
C 5400 20300 1 0 0 illustration_breadboard.sym
{
T 5500 21000 5 10 0 0 0 0 1
footprint=breadboard
T 5800 20800 5 10 1 1 0 0 1
refdes=I1
}
L 64500 19500 2000 19500 3 0 0 0 -1 -1
T 8100 16500 9 10 1 0 0 0 5
All fuses intended as permanent disable in case of catastrophic miswiring.
Trace fuse of <6mil * >1in .
* Continious 3A at 100degC rise, nominal 0.3A .
* Immediate failure >20A, insubstantial evaporation of nearby materials.
* Resistance >0.05Ohm to ensure most current takes other paths.
C 35400 24900 1 90 1 diode-3.sym
{
T 34850 24450 5 10 0 0 90 6 1
device=DIODE
T 35400 24900 5 10 0 0 90 6 1
description=$0.26 MOUSER 750-CDBU0530
T 35400 24900 5 10 0 0 90 6 1
footprint_alt=SMD_DIODE 60 30
T 35400 24900 5 10 0 0 90 0 1
cost=0.26
T 35400 24900 5 10 0 0 90 0 1
mfr=Comchip Technology
T 35400 24900 5 10 0 0 90 0 1
mfrpn=CDBU0530
T 35400 24900 5 10 0 0 90 0 1
dst=Mouser
T 35400 24900 5 10 0 0 90 0 1
dstpn=750-CDBU0530
T 35400 24900 5 10 0 0 90 0 1
link=www.mouser.com/ds/2/80/CDBU0530-RevA791919-16389.pdf
T 35400 24900 5 10 0 0 90 0 1
link_page=1
T 35400 24900 5 10 0 0 90 0 1
supplier=c
T 35400 24900 5 10 0 0 90 0 1
kitting=tape-no-leader
T 35150 24550 5 10 1 1 90 6 1
refdes=D1
T 35400 24900 5 10 1 1 90 6 1
value=0.4V
T 35400 24900 5 10 0 0 0 0 1
footprint=DIODE_LAY 600
}
C 35400 24000 1 90 1 diode-3.sym
{
T 34850 23550 5 10 0 0 90 6 1
device=DIODE
T 35400 24000 5 10 0 0 90 6 1
description=$0.26 MOUSER 750-CDBU0530
T 35400 24000 5 10 0 0 90 6 1
footprint_alt=SMD_DIODE 60 30
T 35400 24000 5 10 0 0 90 0 1
cost=0.26
T 35400 24000 5 10 0 0 90 0 1
mfr=Comchip Technology
T 35400 24000 5 10 0 0 90 0 1
mfrpn=CDBU0530
T 35400 24000 5 10 0 0 90 0 1
dst=Mouser
T 35400 24000 5 10 0 0 90 0 1
dstpn=750-CDBU0530
T 35400 24000 5 10 0 0 90 0 1
link=www.mouser.com/ds/2/80/CDBU0530-RevA791919-16389.pdf
T 35400 24000 5 10 0 0 90 0 1
link_page=1
T 35400 24000 5 10 0 0 90 0 1
supplier=c
T 35400 24000 5 10 0 0 90 0 1
kitting=tape-no-leader
T 35150 23650 5 10 1 1 90 6 1
refdes=D2
T 35400 24000 5 10 1 1 90 6 1
value=0.4V
T 35400 24000 5 10 0 0 0 0 1
footprint=DIODE_LAY 600
}
C 36600 24100 1 180 0 input-2.sym
{
T 36000 23400 5 10 0 0 180 0 1
device=none
T 36600 23900 5 10 1 0 180 0 1
net=Heater:1
T 36100 24000 5 10 1 1 180 7 1
value=INPUT
}
C 35400 24900 1 0 1 generic-power.sym
{
T 35200 25150 5 10 1 1 0 3 1
net=Vsys:1
}
C 35400 23100 1 180 0 vee-1.sym
N 34500 24000 35200 24000 4
C 34700 23100 1 180 0 vee-1.sym
C 34300 24900 1 270 0 capacitor-1.sym
{
T 35000 24700 5 10 0 0 270 0 1
device=CAPACITOR
T 35200 24700 5 10 0 2 270 0 1
symversion=0.1
T 34300 24900 5 10 0 0 0 0 1
description=$0.72 MOUSER 80-C0402C102F5GECTU
T 34300 24900 5 10 0 0 0 0 1
footprint_alt=0402
T 34500 24800 5 10 1 1 270 0 1
refdes=C1
T 34400 24500 5 10 1 1 270 0 1
value=1n
T 34300 24900 5 10 0 2 0 0 1
description_alt=$0.10 MOUSER 80-C0402C102K5R7411
T 34300 24900 5 10 0 0 0 0 1
search_alt=www.mouser.com/Passive-Components/Capacitors/Ceramic-Capacitors/MLCCs-Multilayer-Ceramic-Capacitors/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT/_/N-bkrdv?P=1z0x7weZ1yzmoucZ1yx4avvZ1yx4avuZ1yx4atu&Ns=Pricing|0
T 34300 24900 5 10 0 0 0 0 1
cost=0.72
T 34300 24900 5 10 0 0 0 0 1
mfr=Kemet
T 34300 24900 5 10 0 0 0 0 1
mfrpn=C0402C102F5GECTU
T 34300 24900 5 10 0 0 0 0 1
dst=Mouser
T 34300 24900 5 10 0 0 0 0 1
dstpn=80-C0402C102F5GECTU
T 34300 24900 5 10 0 0 0 0 1
link=www.mouser.com/datasheet/2/212/1/KEM_C1091_C0G_ESD-1140493.pdf
T 34300 24900 5 10 0 0 0 0 1
link_page=5
T 34300 24900 5 10 0 0 0 0 1
supplier=c
T 34300 24900 5 10 0 0 0 0 1
kitting=tape-no-leader
T 34300 24900 5 10 0 0 0 0 1
footprint=ACY400P
}
C 34700 24900 1 0 1 generic-power.sym
{
T 34500 25150 5 10 1 1 0 3 1
net=Vsys:1
}
C 34300 24000 1 270 0 capacitor-1.sym
{
T 35000 23800 5 10 0 0 270 0 1
device=CAPACITOR
T 35200 23800 5 10 0 2 270 0 1
symversion=0.1
T 34300 24000 5 10 0 0 0 0 1
description=$0.72 MOUSER 80-C0402C102F5GECTU
T 34300 24000 5 10 0 0 0 0 1
footprint_alt=0402
T 34500 23900 5 10 1 1 270 0 1
refdes=C2
T 34400 23600 5 10 1 1 270 0 1
value=1n
T 34300 24000 5 10 0 2 0 0 1
description_alt=$0.10 MOUSER 80-C0402C102K5R7411
T 34300 24000 5 10 0 0 0 0 1
search_alt=www.mouser.com/Passive-Components/Capacitors/Ceramic-Capacitors/MLCCs-Multilayer-Ceramic-Capacitors/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT/_/N-bkrdv?P=1z0x7weZ1yzmoucZ1yx4avvZ1yx4avuZ1yx4atu&Ns=Pricing|0
T 34300 24000 5 10 0 0 0 0 1
cost=0.72
T 34300 24000 5 10 0 0 0 0 1
mfr=Kemet
T 34300 24000 5 10 0 0 0 0 1
mfrpn=C0402C102F5GECTU
T 34300 24000 5 10 0 0 0 0 1
dst=Mouser
T 34300 24000 5 10 0 0 0 0 1
dstpn=80-C0402C102F5GECTU
T 34300 24000 5 10 0 0 0 0 1
link=www.mouser.com/datasheet/2/212/1/KEM_C1091_C0G_ESD-1140493.pdf
T 34300 24000 5 10 0 0 0 0 1
link_page=5
T 34300 24000 5 10 0 0 0 0 1
supplier=c
T 34300 24000 5 10 0 0 0 0 1
kitting=tape-no-leader
T 34300 24000 5 10 0 0 0 0 1
footprint=ACY400P
}
C 21100 30000 1 270 0 input-2.sym
{
T 21800 29400 5 10 0 0 270 0 1
device=none
T 21300 30000 5 10 1 0 270 0 1
net=Vext-Probe-Servo-Fan:1
T 21200 29500 5 10 1 1 270 7 1
value=INPUT
}
C 19900 49000 1 270 0 input-2.sym
{
T 20600 48400 5 10 0 0 270 0 1
device=none
T 20100 49000 5 10 1 0 270 0 1
net=Vext-Thermistor:1
T 20000 48500 5 10 1 1 270 7 1
value=INPUT
}
T 35500 22000 9 10 1 0 0 0 8
Through-hole footprints used as
illustration that any breadboard
friendly components ay be used
optionally if appropriate.

Typically needed only if 'Heater'
is in fact a sensitive semiconductor
laser diode.
C 26100 22000 1 0 0 illustration_extruder_typical.sym
{
T 27600 26200 5 10 0 0 0 0 1
footprint=illustration_extruder_typical
T 27300 24200 5 10 1 1 0 0 1
refdes=I2
}
N 7200 27000 7200 46300 4
N 8000 46300 8000 27000 4
N 18000 46300 18000 27000 4
N 18800 46300 18800 27000 4
N 17700 46300 18000 46300 4
N 19100 46300 18800 46300 4
N 19100 46000 18800 46000 4
N 17700 46000 18000 46000 4
N 17700 36800 18000 36800 4
N 19100 36800 18800 36800 4
N 19100 36500 18800 36500 4
N 17700 36500 18000 36500 4
N 17700 27300 18000 27300 4
N 19100 27300 18800 27300 4
N 19100 27000 18800 27000 4
N 17700 27000 18000 27000 4
N 6900 27300 7200 27300 4
N 8300 27300 8000 27300 4
N 6900 27000 7200 27000 4
N 8300 27000 8000 27000 4
N 6900 36800 7200 36800 4
N 8300 36800 8000 36800 4
N 6900 36500 7200 36500 4
N 8300 36500 8000 36500 4
N 6900 46300 7200 46300 4
N 8300 46300 8000 46300 4
N 6900 46000 7200 46000 4
N 8300 46000 8000 46000 4
C 32200 28400 1 270 0 input-2.sym
{
T 32900 27800 5 10 0 0 270 0 1
device=none
T 32500 28500 5 10 1 0 270 0 1
net=Cooling:1
T 32300 27900 5 10 1 1 270 7 1
value=INPUT
}
L 26400 26500 26400 22000 3 0 0 0 -1 -1
T 24000 25500 9 10 1 0 0 0 1
Vsys/Vee
T 24000 24900 9 10 1 0 0 0 2
Vext-Probe-Servo-Fan/GND
Use Vee for Servo/Fan .
T 24000 24300 9 10 1 0 0 0 2
Probe-_GND
Servo
T 24000 23400 9 10 1 0 0 0 4
Bp
Ap
Am
Bm
T 24000 22900 9 10 1 0 0 0 1
Thermistor-_GND
T 24000 22700 9 10 1 0 0 0 1
Heater-_Vsys
T 24000 22500 9 10 1 0 0 0 1
Cooling-_Vsys
T 24000 23100 9 10 1 0 0 0 1
Vext-Thermistor (Disregard)
C 31900 28400 1 0 0 generic-power.sym
{
T 32100 28650 5 10 1 1 0 3 1
net=Vsys:1
}
N 32100 28400 32100 25700 4
C 31300 28400 1 0 0 generic-power.sym
{
T 31500 28650 5 10 1 1 0 3 1
net=Vsys:1
}
C 31600 28400 1 270 0 input-2.sym
{
T 32300 27800 5 10 0 0 90 8 1
device=none
T 31800 28400 5 10 1 0 90 8 1
net=Heater:1
T 31700 27900 5 10 1 1 90 1 1
value=INPUT
}
N 31500 28400 31500 25700 4
C 30800 28400 1 270 0 input-2.sym
{
T 31500 27800 5 10 0 0 270 0 1
device=none
T 31000 28400 5 10 1 0 270 0 1
net=Thermistor:1
T 30900 27900 5 10 1 1 270 7 1
value=INPUT
}
C 31200 28700 1 180 0 gnd-1.sym
N 31100 28400 31100 25700 4
C 29900 28400 1 0 0 vee-1.sym
N 30100 28400 30100 25700 4
C 29800 28400 1 270 0 input-2.sym
{
T 30500 27800 5 10 0 0 270 0 1
device=none
T 30000 28400 5 10 1 0 270 0 1
net=Vext-Probe-Servo-Fan:1
T 29900 27900 5 10 1 1 270 7 1
value=INPUT
}
N 32300 27000 32300 25700 4
N 31700 27000 31700 25700 4
N 30900 27000 30900 25700 4
N 29900 27000 29900 25700 4
T 24000 26800 9 10 1 0 0 0 18
_Taz5_
1. Red Motor (B-/A-)
2. Blue Motor (B+/A+)
3. Green (A+/B+)
4. Black (A-/B-)
5. Heater Cartridge (Vsys)
6. Heater Cartridge (Heater)
7. Red Extrusion Fan
8. Black Extrusion Fan
9. Red Blower Fan
10. Black Blower Fan




15. Red Thermistor
16. Black Thermistor

N 29400 25600 29300 25600 4
N 29000 25600 29100 25600 4
N 28700 27000 28700 25700 4
N 28700 25700 28900 25700 4
N 29600 27000 29600 25700 4
N 29600 25700 29500 25700 4
C 28100 28400 1 270 0 input-2.sym
{
T 28800 27800 5 10 0 0 270 0 1
device=none
T 28300 28400 5 10 1 0 270 0 1
net=Vext-Probe-Servo-Fan:1
T 28200 27900 5 10 1 1 270 7 1
value=INPUT
}
N 28200 27000 28200 25700 4
C 28100 26000 1 180 0 gnd-1.sym
C 27700 27100 1 270 0 input-2.sym
{
T 28400 26500 5 10 0 0 270 0 1
device=none
T 27900 27100 5 10 1 0 270 0 1
net=Probe:1
T 27800 26600 5 10 1 1 270 7 1
value=INPUT
}
C 27100 28400 1 270 0 input-2.sym
{
T 27800 27800 5 10 0 0 270 0 1
device=none
T 27300 28400 5 10 1 0 270 0 1
net=Vext-Probe-Servo-Fan:1
T 27200 27900 5 10 1 1 270 7 1
value=INPUT
}
N 27200 27000 27200 25700 4
C 27200 25700 1 0 0 vee-1.sym
C 26800 27100 1 270 0 input-2.sym
{
T 27500 26500 5 10 0 0 270 0 1
device=none
T 27000 27100 5 10 1 0 270 0 1
net=Servo:1
T 26900 26600 5 10 1 1 270 7 1
value=INPUT
}
N 26900 25700 27000 25700 4
C 7200 28800 1 90 0 generic-power.sym
{
T 6950 29000 5 10 1 1 90 3 1
net=Vsys:1
}
C 8000 29200 1 270 0 vee-1.sym
C 19100 29100 1 90 1 gnd-1.sym
C 16600 28900 1 0 0 input-2.sym
{
T 17200 29600 5 10 0 0 0 0 1
device=none
T 16600 29100 5 10 1 0 0 0 1
net=Vext-Probe-Servo-Fan:1
T 17100 29000 5 10 1 1 0 7 1
value=INPUT
}
C 16600 29400 1 0 0 input-2.sym
{
T 17200 30100 5 10 0 0 0 0 1
device=none
T 16600 29600 5 10 1 0 0 0 1
net=Vext-Thermistor:1
T 17100 29500 5 10 1 1 0 7 1
value=INPUT
}
C 14300 42200 1 0 0 connector6-2.sym
{
T 15000 45100 5 10 1 1 0 6 1
refdes=BRK1
T 14600 45050 5 10 0 0 0 0 1
device=CONNECTOR_6
T 14600 45250 5 10 0 0 0 0 1
footprint=JUMPER6
T 14300 42200 5 10 0 0 0 0 1
value=-
T 14300 42200 5 10 0 0 0 0 1
description=$0.21 MOUSER 571-6404556
T 14300 42200 5 10 0 0 0 0 1
cost=0.21
T 14300 42200 5 10 0 0 0 0 1
mfr=TE Connectivity
T 14300 42200 5 10 0 0 0 0 1
mfrpn=640455-6
T 14300 42200 5 10 0 0 0 0 1
dst=Mouser
T 14300 42200 5 10 0 0 0 0 1
dstpn=571-6404556
T 14300 42200 5 10 0 0 0 0 1
link=www.mouser.com/ds/2/418/NG_DS_82056_MTA_0708-815240.pdf
T 14300 42200 5 10 0 0 0 0 1
link_page=23
T 14300 42200 5 10 0 0 0 0 1
supplier=c
T 14300 42200 5 10 0 0 0 0 1
kitting=other
T 14300 42200 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
C 14300 32700 1 0 0 connector6-2.sym
{
T 15000 35600 5 10 1 1 0 6 1
refdes=BRK2
T 14600 35550 5 10 0 0 0 0 1
device=CONNECTOR_6
T 14600 35750 5 10 0 0 0 0 1
footprint=JUMPER6
T 14300 32700 5 10 0 0 0 0 1
value=-
T 14300 32700 5 10 0 0 0 0 1
description=$0.21 MOUSER 571-6404556
T 14300 32700 5 10 0 0 0 0 1
cost=0.21
T 14300 32700 5 10 0 0 0 0 1
mfr=TE Connectivity
T 14300 32700 5 10 0 0 0 0 1
mfrpn=640455-6
T 14300 32700 5 10 0 0 0 0 1
dst=Mouser
T 14300 32700 5 10 0 0 0 0 1
dstpn=571-6404556
T 14300 32700 5 10 0 0 0 0 1
link=www.mouser.com/ds/2/418/NG_DS_82056_MTA_0708-815240.pdf
T 14300 32700 5 10 0 0 0 0 1
link_page=23
T 14300 32700 5 10 0 0 0 0 1
supplier=c
T 14300 32700 5 10 0 0 0 0 1
kitting=other
T 14300 32700 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
C 14300 23200 1 0 0 connector6-2.sym
{
T 15000 26100 5 10 1 1 0 6 1
refdes=BRK3
T 14600 26050 5 10 0 0 0 0 1
device=CONNECTOR_6
T 14600 26250 5 10 0 0 0 0 1
footprint=JUMPER6
T 14300 23200 5 10 0 0 0 0 1
value=-
T 14300 23200 5 10 0 0 0 0 1
description=$0.21 MOUSER 571-6404556
T 14300 23200 5 10 0 0 0 0 1
cost=0.21
T 14300 23200 5 10 0 0 0 0 1
mfr=TE Connectivity
T 14300 23200 5 10 0 0 0 0 1
mfrpn=640455-6
T 14300 23200 5 10 0 0 0 0 1
dst=Mouser
T 14300 23200 5 10 0 0 0 0 1
dstpn=571-6404556
T 14300 23200 5 10 0 0 0 0 1
link=www.mouser.com/ds/2/418/NG_DS_82056_MTA_0708-815240.pdf
T 14300 23200 5 10 0 0 0 0 1
link_page=23
T 14300 23200 5 10 0 0 0 0 1
supplier=c
T 14300 23200 5 10 0 0 0 0 1
kitting=other
T 14300 23200 5 10 0 0 0 0 1
kitting_d=not known to be available in machine usable format
}
N 14300 44200 20700 44200 4
N 14300 43000 20100 43000 4
N 14300 44600 21300 44600 4
N 14300 44200 14300 43400 4
N 14300 34700 21100 34700 4
N 14300 35100 21300 35100 4
N 20900 34300 14300 34300 4
N 20700 33900 14300 33900 4
L 14200 33600 14400 33400 3 0 0 0 -1 -1
L 14400 33600 14200 33400 3 0 0 0 -1 -1
L 14200 33200 14400 33000 3 0 0 0 -1 -1
L 14400 33200 14200 33000 3 0 0 0 -1 -1
N 14300 25600 20100 25600 4
N 14300 25200 20300 25200 4
N 14300 24800 20500 24800 4
L 14200 42700 14400 42500 3 0 0 0 -1 -1
L 14400 42700 14200 42500 3 0 0 0 -1 -1
N 15700 23900 15500 23900 4
N 15500 23900 15500 23500 4
N 15500 23500 15700 23500 4
N 15700 42900 15500 42900 4
N 15500 42900 15500 42500 4
N 15500 42500 15700 42500 4
C 19900 51900 1 270 0 input-2.sym
{
T 20600 51300 5 10 0 0 270 0 1
device=none
T 20100 51900 5 10 1 0 270 0 1
net=Vext-Probe-Servo-Fan:1
T 20000 51400 5 10 1 1 270 7 1
value=INPUT
}
L 19800 50500 20200 50900 3 0 0 0 -1 -1
T 16500 50300 9 10 1 0 0 0 6
Due to use of GND instead of
Vext with most extruder thermistors,
it is acceptable, although bad practice
to omit dedicated Vext-Thermistor.
Omitting this and probe/limit switch
reduces 8-wire cables from 3 to 2.
N 14300 24400 19900 24400 4
L 14200 24100 14400 23900 3 0 0 0 -1 -1
L 14400 24100 14200 23900 3 0 0 0 -1 -1
L 14200 23700 14400 23500 3 0 0 0 -1 -1
L 14400 23700 14200 23500 3 0 0 0 -1 -1
T 24300 16900 9 10 1 0 0 0 9
STEP
3 / 1 - Vsys
3 \\ 2 - pGND
2 - 3 - B+
1 / 4 - A+
1 \\ 5 - A-
2 - 6 - B-
4 / 7 - B+
4 \\ 8 - B-
T 26500 16900 9 10 1 0 0 0 9
Legacy-LulzBot
3 \/ 1 - Cooling+
3 \\ 2 - Cooling-
2 - 3 - Heatsink+
1 \/ 4 - Thermistor-
1 \\ 5 - Thermistor+
2 - 6 - Heatsink-
4 \/ 7 - Heater+
4 \\ 8 - Heater-
T 25700 16900 9 10 1 0 0 0 8
1/WG
2/G
3/WO
4/Bl
5/WBl
6/O
7/WBr
8/Br
T 23500 16900 9 10 1 0 0 0 8
1/WG
2/G
3/WO
4/Bl
5/WBl
6/O
7/WBr
8/Br
C 28800 28400 1 90 1 input-2.sym
{
T 28100 27800 5 10 0 0 90 6 1
device=none
T 28600 28400 5 10 1 0 90 6 1
net=Bp:1
T 28700 27900 5 10 1 1 90 1 1
value=INPUT
}
C 29700 28400 1 90 1 input-2.sym
{
T 29000 27800 5 10 0 0 90 6 1
device=none
T 29500 28400 5 10 1 0 90 6 1
net=Bm:1
T 29600 27900 5 10 1 1 90 1 1
value=INPUT
}
C 29100 27000 1 90 1 input-2.sym
{
T 28400 26400 5 10 0 0 90 6 1
device=none
T 28900 27000 5 10 1 0 90 6 1
net=Ap:1
T 29000 26500 5 10 1 1 90 1 1
value=INPUT
}
C 29500 27000 1 90 1 input-2.sym
{
T 28800 26400 5 10 0 0 90 6 1
device=none
T 29300 27000 5 10 1 0 90 6 1
net=Am:1
T 29400 26500 5 10 1 1 90 1 1
value=INPUT
}
