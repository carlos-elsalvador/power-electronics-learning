*=========================================================
* Example 4. One NMOS transistor 
* Sweep VDS and export results
*=========================================================

.title Example 4. Sweep VDS and export results

*---------------------------------------------------------
* Circuit parameters
*---------------------------------------------------------
.param W_VALUE          = 10u
.param L_VALUE          = 1u

*---------------------------------------------------------
* VDS sweep parameters
*---------------------------------------------------------
.param VDS_SWEEP_START  = 0
.param VDS_SWEEP_STOP   = 1.8
.param VDS_SWEEP_STEP   = 0.02

*---------------------------------------------------------
* VGS sweep parameters
*---------------------------------------------------------
.param VGS_SWEEP_START  = 0.5
.param VGS_SWEEP_STOP   = 1.2
.param VGS_SWEEP_STEP   = 0.1

*---------------------------------------------------------
* Models
*---------------------------------------------------------
.model NMOS NMOS LEVEL=1 KP=200u VTO=0.7 LAMBDA=0.02

*---------------------------------------------------------
* Circuit netlist
*---------------------------------------------------------
VGS gate  0 DC 0
VDS drain 0 DC 0

M1 drain gate 0 0 NMOS W={W_VALUE} L={L_VALUE}

*---------------------------------------------------------
* Analysis
*---------------------------------------------------------
.dc VDS {VDS_SWEEP_START} {VDS_SWEEP_STOP} {VDS_SWEEP_STEP} VGS {VGS_SWEEP_START} {VGS_SWEEP_STOP} {VGS_SWEEP_STEP}

*---------------------------------------------------------
* Export results
*---------------------------------------------------------
.control
    run
    set wr_vecnames
    set filetype=ascii
    wrdata ids_results.csv  v(gate) v(drain) -i(vds)
.endc

.end