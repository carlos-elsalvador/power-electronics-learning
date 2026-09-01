* Ejemplo: tension rectangular aplicada a un inductor

.title Inductor with bipolar square-wave voltage

.param Lval = 100u
.param Tsw  = 100u
.param Duty = 0.5

V1 in 0 PULSE(-4 4 10n 1n 1n {Duty*Tsw} {Tsw})
L1 in 0 {Lval} 

.tran 0.1u 400u uic

.control
run
.endc
.end
