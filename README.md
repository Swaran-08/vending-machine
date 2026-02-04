# vending-machine
A Verilog-based vending machine controller that calculates total amount from ₹5 and ₹10 coin inputs and dispenses items based on a fixed cost of 15 units. The design uses synchronous logic to generate item count and remaining change on each clock cycle.
## 🥤 Vending Machine – Verilog HDL

This project implements a simple Vending Machine controller using Verilog HDL. The design calculates the total amount based on ₹5 and ₹10 coin inputs and dispenses items when the inserted money reaches the required price.

### 🔹 Working Principle
- The machine accepts coin inputs through `fives[2:0]` and `tens[2:0]`.
- Total money is calculated combinationally.
- Each item costs **15 units**.
- On every clock edge, the system checks the total amount:
  - If total ≥ 15 → items are dispensed and remaining balance is given as change.
  - If total < 15 → no item is dispensed and the inserted amount is returned as change.
- `reset` clears items and change outputs.

### 🔹 Features
- Clocked synchronous design
- Automatic item calculation using division
- Change calculation using modulus operator
- Simple arithmetic-based vending logic

### 🔹 Inputs & Outputs
**Inputs**
- `clk` : System clock  
- `reset` : Asynchronous reset  
- `fives[2:0]` : Number of ₹5 coins  
- `tens[2:0]` : Number of ₹10 coins  

**Outputs**
- `items[2:0]` : Number of items dispensed  
- `change[3:0]` : Remaining balance  

### 🔹 Concepts Used
- Verilog HDL
- Sequential & Combinational Logic
- Arithmetic Operations in Hardware Design
