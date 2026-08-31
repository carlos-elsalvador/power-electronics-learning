# Power Electronics Learning

Educational notebooks and circuit simulations for learning the fundamental concepts of power electronics using Python, Jupyter/Google Colab and ngspice.

The project combines three complementary approaches:

* **Theory and analytical equations**
* **Numerical analysis using Python**
* **Circuit simulation using ngspice**

The objective is to progressively connect mathematical models with the behavior of real switching circuits.

---

## Repository Structure

```text
power-electronics-learning/
│
├── block_1_fundamentals/
├── block_2_dc_dc_converters/
├── block_3_ac_dc_converters/
└── block_4_dc_dc_isolated/
```

---

# Block 1 — Fundamentals

This block introduces the mathematical and physical foundations required for the analysis of power electronic circuits.

## Topic 1 — RMS Value and Average Power

Topics include:

* Average value of periodic signals
* RMS value
* Instantaneous power
* Average power
* Sinusoidal waveforms
* Bipolar and unipolar square waves
* Numerical calculation using Python
* Validation using ngspice

## Topic 2 — Fourier Series

Topics include:

* Orthogonality of sinusoidal functions
* Fourier series representation
* Fourier coefficients
* Harmonic components
* Square-wave approximation
* Gibbs phenomenon
* Symmetry properties
* Multi-level waveforms
* Harmonic generation and visualization using ngspice and Python

## Topic 4 — Energy Storage Elements and Switches

Topics include:

* Capacitors in power electronics
* Inductors in power electronics
* Duality between capacitors and inductors
* Energy storage
* DC behavior
* Rectangular voltage applied to an inductor
* Periodic steady state
* RL circuit charging and discharging
* Ideal switches
* Freewheeling diodes
* MOSFETs as switching devices
* Comparison between analytical solutions, Python and ngspice

---

# Block 2 — DC-DC Converters

This block will introduce the operation and analysis of fundamental non-isolated DC-DC converters.

Planned topics include:

* Buck converter
* Boost converter
* Buck-Boost converter
* Continuous conduction mode
* Discontinuous conduction mode
* Inductor current ripple
* Output voltage ripple
* Switching losses and non-ideal effects

---

# Block 3 — AC-DC Converters

This block will cover the conversion of AC electrical energy into DC electrical energy.

Planned topics include:

* Diode rectifiers
* Half-wave rectifiers
* Full-wave rectifiers
* Bridge rectifiers
* Capacitive and inductive filters
* Controlled rectifiers

---

# Block 4 — Isolated DC-DC Converters

This block will introduce isolated power conversion and transformer-based switching converters.

Planned topics include:

* Transformer fundamentals
* Flyback converter
* Forward converter
* Push-pull converter
* Half-bridge converter
* Full-bridge converter

---

# Methodology

Each topic follows, whenever possible, the same learning sequence:

1. **Physical concept**
2. **Mathematical model**
3. **Analytical solution**
4. **Python implementation**
5. **ngspice simulation**
6. **Comparison and validation**

The goal is not only to obtain numerical results, but also to understand the physical behavior of power electronic circuits.

---

# Tools

The main tools used in this repository are:

* Python
* NumPy
* Matplotlib
* Jupyter Notebook
* Google Colab
* ngspice
* Git and GitHub

---

# Status

The repository is under continuous development. New notebooks, simulations and examples are progressively added to each learning block.


