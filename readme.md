# OFDM 2x2 MIMO Physical Layer Simulator (MATLAB)

## Overview
This project implements a simplified Physical Layer (PHY) wireless communication system using MATLAB.  
It models a **2x2 MIMO system with QPSK modulation** and evaluates performance using **BER vs SNR analysis**.

The simulator is inspired by real wireless PHY concepts used in modern systems such as 4G/5G and research frameworks used in industry (e.g., telecommunications companies like Ericsson).

---

##  Objectives
- Simulate a basic wireless MIMO communication system
- Analyze Bit Error Rate (BER) performance under different SNR conditions
- Understand the effect of noise and channel on signal transmission
- Implement fundamental PHY building blocks

---

## System Architecture

The system consists of:

### 1. Transmitter
- Random bit generation
- QPSK modulation
- MIMO stream mapping (2 transmit antennas)

### 2. Channel
- 2x2 Rayleigh fading MIMO channel
- AWGN noise addition

### 3. Receiver
- Zero Forcing (ZF) MIMO detection
- QPSK demodulation
- Bit error calculation

---

## Simulation Parameters

- Modulation: QPSK
- MIMO: 2x2 system
- Channel: Rayleigh fading + AWGN
- Detector: Zero Forcing (ZF)
- SNR range: 0 to 20 dB
- Metric: BER (Bit Error Rate)

---

##  Results

The simulation shows that:

- At low SNR → high BER due to noise
- As SNR increases → BER decreases significantly
- System performance improves with better signal quality

##  Key Insight
The system demonstrates the fundamental wireless communication principle:

> Increasing SNR improves detection accuracy and reduces bit errors.

---

##  Concepts Used
- Digital Communication
- QPSK Modulation
- MIMO Systems
- Rayleigh Fading Channel
- Zero Forcing Detection
- BER Analysis

---

##  Requirements
- MATLAB R2020+ (or any recent version)
- No additional toolboxes required (basic implementation)

---

##  How to Run

1. Open MATLAB
2. Set project folder as current directory
3. Run:

```matlab
main

OFDM_2x2_MIMO_PHY/
│
├── main.m
├── config.m
├── qpsk_mod.m
├── qpsk_demod.m
├── mimo_channel.m
├── mimo_zf_detector.m
├── ber_calc.m
└── README.md

