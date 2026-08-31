* BLOQUE 1 - TEMA 2
* Generación de una señal sinusoidal
.title Señal sinusoidal
* Parámetros
.param Vp = 325
.param f0 = 50

* Fuente sinusoidal. SIN(VOFF VAMPL FREQ)
V1 out 0 SIN(0 {Vp} {f0})

* Análisis transitorio. 2 periodos de una señal de 50 Hz.
.tran 20u 40m
.control
run
* Guardar los resultados para analizarlos con Python
set wr_singlescale
wrdata sine_wave.dat v(out)
.endc
.end
