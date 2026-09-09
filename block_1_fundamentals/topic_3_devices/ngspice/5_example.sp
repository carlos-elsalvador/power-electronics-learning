*=========================================================
* Example 5. Two NMOS transistors as switches
* Half-bridge
*=========================================================
.title Example 5. Two NMOS transistors as switches

*---------------------------------------------------------
* Circuit parameters
*---------------------------------------------------------
.param VDD_VALUE       = 5
.param VGS_ON_VALUE    = 5

.param W_VALUE         = 10u
.param L_VALUE         = 1u

.param RLOAD_VALUE     = 10k

*---------------------------------------------------------
* Switching parameters
*---------------------------------------------------------
.param TSW_VALUE       = 20u
.param TON_VALUE       = 9u

.param THIGH_DELAY     = 1u
.param TLOW_DELAY      = 11u

.param TR_VALUE        = 10n
.param TF_VALUE        = 10n

.param TSTOP_VALUE     = 60u
.param TSTEP_VALUE     = 20n

*---------------------------------------------------------
* Models
*---------------------------------------------------------
.model NMOS NMOS LEVEL=1 KP=200u VTO=0.7 LAMBDA=0.02

*---------------------------------------------------------
* Power supply
*---------------------------------------------------------
VDD vdd 0 DC {VDD_VALUE}

*---------------------------------------------------------
* Gate-drive signals
*
* VGH is referenced to the source of the high-side MOSFET.
* VGL is referenced to ground.
*---------------------------------------------------------
VGH gate_high sw PULSE(0 {VGS_ON_VALUE} {THIGH_DELAY} {TR_VALUE} {TF_VALUE} {TON_VALUE} {TSW_VALUE})

VGL gate_low 0 PULSE(0 {VGS_ON_VALUE} {TLOW_DELAY} {TR_VALUE} {TF_VALUE} {TON_VALUE} {TSW_VALUE})

*---------------------------------------------------------
* Half-bridge MOSFETs
*
*          drain gate      source bulk
*---------------------------------------------------------
MH vdd     gate_high sw     sw NMOS W={W_VALUE} L={L_VALUE}
ML sw      gate_low  0      0  NMOS W={W_VALUE} L={L_VALUE}

*---------------------------------------------------------
* Resistive load
*---------------------------------------------------------
RLOAD sw 0 {RLOAD_VALUE}

*---------------------------------------------------------
* Transient analysis
*---------------------------------------------------------
.tran {TSTEP_VALUE} {TSTOP_VALUE}

*---------------------------------------------------------
* Control block
*---------------------------------------------------------
.control
    run

    plot v(gate_high,sw) v(gate_low)
    plot v(sw)
    plot -i(VDD)
.endc

.end

