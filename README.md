This repository contains the implementation of an Arithmetic Logic Unit (ALU) developed as part of the Digital Systems course. The project demonstrates how core arithmetic and logical operations are designed and simulated using digital logic concepts.

The ALU is responsible for performing basic arithmetic operations such as addition and subtraction, as well as logical operations like AND and OR. All inputs are treated as binary values, reflecting how real processors handle data at the hardware level. The design also includes important outputs such as carry-out and overflow, which are essential for understanding arithmetic behavior in digital circuits.

The project is built step by step, starting from basic logic gates, moving to a full adder, and then expanding to multi-bit addition and subtraction. Two different design approaches are implemented:

Dataflow ALU, using continuous assignments (assign)

Behavioral ALU, using procedural blocks (always)

Each module is verified through simulation waveforms, which clearly show how inputs affect outputs for different operations. This helps connect theoretical concepts with practical hardware behavior.

Overall, this project serves as a hands-on introduction to digital design, ALU architecture, and Verilog-based modeling, making it useful for learning how CPUs perform fundamental operations internally.
