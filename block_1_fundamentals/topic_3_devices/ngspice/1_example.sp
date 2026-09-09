*=========================================================
* Example 1. One NMOS transistor
* DC Operating Point
*=========================================================

.title Example 1. One NMOS transistor

*---------------------------------------------------------
* Parameters
*---------------------------------------------------------
.param VGS_DC_VALUE = 0.8
.param VDS_DC_VALUE = 1.8
.param W_VALUE      = 10u
.param L_VALUE      = 1u

*---------------------------------------------------------
* Models
*---------------------------------------------------------
.model NMOS NMOS LEVEL=1 KP=200u VTO=0.7 LAMBDA=0.02

*---------------------------------------------------------
* Circuit netlist
*---------------------------------------------------------
VGS gate  0 DC {VGS_DC_VALUE}
VDS drain 0 DC {VDS_DC_VALUE}

M1 drain gate 0 0 NMOS W={W_VALUE} L={L_VALUE}

*---------------------------------------------------------
* Analysis directives
*---------------------------------------------------------
*.op
*.print op v(gate) v(drain) @m1[id] @m1[gm] @m1[gds] @m1[vdsat]

*---------------------------------------------------------
* Control block
*---------------------------------------------------------
.control
op
print v(gate) v(drain) @m1[id] @m1[gm] @m1[gds] @m1[vdsat]
.endc

.end
