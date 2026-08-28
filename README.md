# Verilog Designs

A structured collection of **Verilog HDL designs, RTL modules, and simulation testbenches** developed while learning and practicing digital design.

This repository covers fundamental **combinational and sequential logic**, along with ALU and memory designs. It is intended to document my progress in **Verilog, RTL Design, FPGA, and VLSI design**.

---

## 📂 Repository Structure

The repository is organized according to different categories of digital design.

* **`01_combinational/`**
  Contains combinational logic designs and their corresponding testbenches.

Each category is divided into:

* **`verilog/`** – RTL/design source files
* **`testbenches/`** – Simulation and verification files

---

## 🔹 Combinational Designs

The `01_combinational` directory contains fundamental combinational circuits such as:

* Half Adder
* Full Adder
* Half Subtractor
* Full Subtractor
* Mux 2x1
* Mux 4x1


These designs help in understanding how digital logic can be described using Verilog HDL.

---

## 🧪 Testbenches

Each RTL design can have a corresponding testbench for functional verification.

The testbenches are used to:

* Apply input stimulus
* Verify output responses
* Check different input combinations
* Observe signal transitions
* Analyze simulation waveforms

A typical design and testbench are organized as:

```text
verilog/
└── half_adder.v

testbenches/
└── half_adder_tb.v
```

---

## 🔬 Simulation

The designs can be simulated using Verilog-compatible simulation tools.

The general simulation flow is:

```text
Verilog RTL
     ↓
Testbench
     ↓
Simulation
     ↓
Waveform Analysis
     ↓
Functional Verification
```

Waveforms can be used to verify the relationship between input and output signals over time.

---

## 🛠️ Tools

The designs in this repository can be developed and simulated using tools such as:

* **Xilinx Vivado**
* **Icarus Verilog**
* **GTKWave**
* **Visual Studio Code**

---

## 🎯 Learning Objectives

This repository is used to strengthen my understanding of:

* Digital Logic Design
* Verilog HDL
* RTL Design
* Combinational Logic
* Sequential Logic
* Testbench Development
* Functional Verification
* Simulation and Waveform Analysis
* FPGA Design
* Basic VLSI Design Concepts

---

## 👨‍💻 Author

**Sathish Babu S**

Electronics and Communication Engineering
Government College of Engineering, Erode

Interested in **RTL Design, Digital VLSI, FPGA, and ASIC Design**.

---

⭐ This repository documents my continuous learning and implementation of digital systems using **Verilog HDL**.
