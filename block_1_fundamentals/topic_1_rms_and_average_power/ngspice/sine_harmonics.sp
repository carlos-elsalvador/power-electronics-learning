* Fundamental + tercer + quinto armónico
.title Señal sinusoidal y armónicos

* Parámetros

.param Vdc = 325
.param f0  = 50
.param PI  = 3.141592653589793

* Amplitud de la componente fundamental
.param A1 = {4*Vdc/PI}

* Componentes de Fourier
* Fundamental
  V1 n1 0 SIN(0 {A1} {f0})
* Tercer armónico
  V3 n3 0 SIN(0 {A1/3} {3*f0})
* Quinto armónico
  V5 n5 0 SIN(0 {A1/5} {5*f0})
* Suma de los tres componentes
  Bsum out 0 V = V(n1) + V(n3) + V(n5)

* Análisis transitorio
.tran 10u 40m
.control
run
* Exportar los datos
set wr_singlescale
wrdata sine_harmonics.dat v(n1) v(n3) v(n5) v(out)

.endc
.end
