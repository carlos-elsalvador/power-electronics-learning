*=========================================================
* Example 2. One NMOS transistor
* Sweep VGS
*=========================================================

.title Example 2. Sweep VGS

*---------------------------------------------------------
* Circuit parameters
*---------------------------------------------------------
.param VDS_DC_VALUE     = 1.8
.param W_VALUE          = 10u
.param L_VALUE          = 1u

*---------------------------------------------------------
* Sweep parameters
*---------------------------------------------------------
.param VGS_SWEEP_START  = 0
.param VGS_SWEEP_STOP   = 1.8
.param VGS_SWEEP_STEP   = 0.01

*---------------------------------------------------------
* Models
*---------------------------------------------------------
.model NMOS NMOS LEVEL=1 KP=200u VTO=0.7 LAMBDA=0.02

*---------------------------------------------------------
* Circuit netlist
*---------------------------------------------------------
VGS gate  0 DC 0
VDS drain 0 DC {VDS_DC_VALUE}

M1 drain gate 0 0 NMOS W={W_VALUE} L={L_VALUE}

*---------------------------------------------------------
* Analysis directives
*---------------------------------------------------------
*.dc VGS 0 1.8 0.01
*.print dc V(gate) @m1[id]

*---------------------------------------------------------
* Control block
*---------------------------------------------------------
.control
dc VGS {VGS_SWEEP_START} {VGS_SWEEP_STOP} {VGS_SWEEP_STEP}
display
plot -i(vds)
.endc

.end
