# Bloque 1 — Fundamentos básicos de Electrónica de Potencia

Este bloque introduce los conceptos fundamentales necesarios para el estudio y análisis de circuitos y dispositivos de electrónica de potencia. Los contenidos se desarrollan mediante cuadernos interactivos de Python y simulaciones con ngspice, combinando explicaciones teóricas, ejemplos numéricos, representaciones gráficas y análisis de circuitos.

## Topics

### Topic 1 — Introducción a la electrónica de potencia

Introducción a los conceptos generales de la electrónica de potencia y a los principios que se utilizarán en los temas posteriores.

> **Nota:** El contenido de este topic todavía no está incorporado en la estructura actual del repositorio.

### Topic 2 — Principios básicos y fundamentos matemáticos

Este topic reúne herramientas matemáticas básicas utilizadas en el análisis de señales y circuitos de electrónica de potencia.

#### Topic 2.1 — Series de Fourier

Estudio de la representación de señales periódicas mediante series de Fourier y análisis de sus componentes armónicas.

- Cuaderno: `B1_T2_SF.ipynb`
- Figuras de apoyo
- Simulaciones ngspice de señales sinusoidales y armónicas

#### Topic 2.2 — Valor RMS y valor medio

Introducción al valor eficaz (RMS), valor medio y conceptos relacionados con potencia y factor de potencia.

- Cuaderno: `B1_T2_rms.ipynb`
- Figuras de apoyo
- Ejemplo de señal cuadrada bipolar en ngspice

### Topic 3 — Diodos, transistores y otros dispositivos

Estudio de los principales dispositivos utilizados en electrónica de potencia, con especial atención a los diodos y transistores MOSFET.

El cuaderno incluye modelos básicos de dispositivos, características eléctricas y ejemplos de simulación con ngspice.

- Cuaderno: `B1_T3_power_devices.ipynb`
- Modelos y figuras de diodos y MOSFET
- Ejemplos ngspice de análisis DC y barridos de tensión
- Archivo de resultados: `ids_results.csv`

### Topic 4 — Análisis de circuitos de electrónica de potencia

Introducción al análisis de circuitos de electrónica de potencia mediante modelos ideales, ecuaciones básicas y simulación.

El topic incluye ejemplos con elementos de almacenamiento de energía, especialmente inductores, y su comportamiento en circuitos conmutados.

- Cuaderno: `B1_T4_circuits.ipynb`
- Ejemplo ngspice de análisis de un inductor

## Herramientas

Los contenidos se desarrollan principalmente con:

- Python
- NumPy
- Matplotlib
- Jupyter Notebook
- Google Colab
- ngspice

## Estructura del repositorio

```text
block_1_fundamentals/
├── README.md
├── topic_2_fundamentals/
│   ├── topic_2_fourier/
│   │   ├── B1_T2_SF.ipynb
│   │   ├── figures/
│   │   │   ├── 1_oscila.jpeg
│   │   │   └── 2_oscila.jpeg
│   │   └── ngspice/
│   │       ├── sine_harmonics.sp
│   │       └── sine_wave.sp
│   └── topic_2_rms_and_average/
│       ├── B1_T2_rms.ipynb
│       ├── figures/
│       │   ├── 1_ca.jpeg
│       │   ├── 1_ca.png
│       │   ├── 1_power_factor_background.jpeg
│       │   ├── 2_ca.jpeg
│       │   ├── 2_ca.png
│       │   └── 2_power_factor_background.jpeg
│       └── ngspice/
│           └── cuadrada_BI.sp
├── topic_3_devices/
│   ├── B1_T3_power_devices.ipynb
│   ├── figures/
│   │   ├── diodo_modelos.png
│   │   └── mosfet.png
│   └── ngspice/
│       ├── 1_example.sp
│       ├── 2_example.sp
│       ├── 3_example.sp
│       ├── 4_example.sp
│       ├── 5_example.sp
│       └── ids_results.csv
└── topic_4_circuits_analysis/
    ├── B1_T4_circuits.ipynb
    ├── figures/
    └── ngspice/
        └── 1_inductor_example.sp
```

## Organización de los materiales

Cada topic mantiene, cuando corresponde, una estructura separada para:

- **Jupyter/Colab notebooks (`.ipynb`)**: explicación teórica, cálculos y visualizaciones con Python.
- **`figures/`**: figuras utilizadas en los cuadernos.
- **`ngspice/`**: netlists y archivos de simulación.
- **Archivos de resultados**: datos generados a partir de las simulaciones para su posterior análisis con Python.

La organización busca mantener separados los contenidos didácticos, las simulaciones y los recursos gráficos, facilitando la reutilización de los ejemplos y la ampliación progresiva del bloque.
