# ⚡ Hardware Projects

A collection of embedded systems and electronics projects built using PIC microcontrollers, Proteus simulation, and PCB design — covering real-world applications from power electronics to smart lighting systems.

---

## 📁 Projects Overview

### 🔦 Automatic Street Light
An LDR-based automatic street lighting system that switches the light ON at dusk and OFF at dawn — no manual intervention needed.
- **Core Component:** LDR (Light Dependent Resistor) + transistor switching circuit
- **Tools:** Proteus ISIS

---

### 🔋 Car Charger (Buck Converter)
A DC-DC step-down (buck) converter designed to charge devices from a car's 12V supply, regulated down to a safe USB-level output voltage.
- **Core Concept:** PWM-based switching, inductor-capacitor filtering
- **Tools:** Proteus ISIS / ARES

---

### 🕐 Digital Clock Using PIC
A fully functional digital clock implemented on a PIC microcontroller, displaying hours and minutes on a 7-segment or LCD display.
- **Microcontroller:** PIC (MikroC / Assembly)
- **Languages:** C / Assembly
- **Tools:** MPLAB / MikroC, Proteus

---

### 🖥️ First Proteus PCB
An introductory PCB design project demonstrating schematic capture and board layout fundamentals in Proteus ARES.
- **Purpose:** Learning PCB routing, component placement, and design rule checks
- **Tools:** Proteus ARES

---

### ⚡ Power Supply 5V
A linear regulated 5V DC power supply — the backbone of most digital circuits — built from a transformer, rectifier, filter, and voltage regulator.
- **Key Components:** Bridge rectifier, capacitor bank, 7805 voltage regulator
- **Tools:** Proteus ISIS

---

### 🌞 Solar Light (Product Form)
A solar-powered lighting solution designed in product-ready form, integrating a solar panel, charging circuit, battery management, and LED driver.
- **Features:** Auto on/off, battery charging from solar panel
- **Tools:** Proteus ISIS / ARES

---

## 🛠️ Tools & Technologies

| Category | Tools / Languages |
|---|---|
| Simulation | Proteus ISIS |
| PCB Design | Proteus ARES |
| Programming | Assembly, C, C++ |
| Microcontroller | PIC Series |
| IDEs | MPLAB IDE, MikroC Pro |

---

## 📊 Language Breakdown

![Assembly](https://img.shields.io/badge/Assembly-69.4%25-blue)
![C](https://img.shields.io/badge/C-21.4%25-lightgrey)
![C++](https://img.shields.io/badge/C++-9.2%25-orange)

---

## 🚀 Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/Haseeb718/Hardware-Projects.git
   ```

2. **Open Proteus files** — Each project folder contains `.pdsprj` or `.DSN` files. Open these directly in Proteus ISIS/ARES.

3. **Load firmware** — For PIC projects, compile the `.c` or `.asm` source using MPLAB or MikroC and load the generated `.hex` file into the PIC component in Proteus.

4. **Run simulation** — Hit the play button in Proteus to simulate the circuit.

---

## 📂 Repository Structure

```
Hardware-Projects/
├── Automatic Street Light/
├── Car Charger (Buck Converter)/
├── Digital Clock Using PIC/
├── First Proteus PCB/
├── Power Supply 5V/
└── Solar Light(Product Form)/
```

---

## 👤 Author

**Haseeb** — [@Haseeb718](https://github.com/Haseeb718)

---

## 📄 License

This repository is open for learning and reference purposes. Feel free to explore, fork, and build upon these projects!
