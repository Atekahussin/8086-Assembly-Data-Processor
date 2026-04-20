# 🖥️ 8086 Assembly Data Processor

![Assembly](https://img.shields.io/badge/Language-Assembly%208086-red.svg)
![Architecture](https://img.shields.io/badge/Focus-Computer%20Organization-blue.svg)
![KFU](https://img.shields.io/badge/University-King%20Faisal%20University-green.svg)

## 📌 Project Overview
This project demonstrates low-level data processing and memory management using **8086 Assembly Language**. Developed for the **Computer Organization and Architecture** course, the program executes complex data tasks directly on the microprocessor level, emphasizing modular code structure and efficient use of CPU registers.

## 🚀 Core Functionalities
The program processes numerical data stored in memory through three primary operations:
- **Even Number Filtering:** Scans an array (`num1`), identifies even numbers using bitwise logic, and stores them in a new memory location (`even`).
- **Statistical Averaging:** Calculates the arithmetic mean of the filtered numbers using dedicated summation and division subroutines.
- **Descending Sorting:** Implements a sorting algorithm to arrange a second dataset (`num2`) in descending order, showcasing logical comparison and memory swapping.

## 🛠️ Technical Implementation
- **Modular Subroutines:** Distinct routines (`EvenNum`, `sum`, `average`, `DecOrder`) were developed to ensure clean and reusable code.
- **Stack Management:** Utilizes `PUSH` and `POP` operations to manage local data within subroutines and preserve the state of CPU registers.
- **Register Manipulation:** Direct use of `AX`, `BX`, `CX`, `DI`, and `BP` registers for high-speed data processing and indexing.

## 📁 Repository Structure
- `code`: The complete source code for the 8086 microprocessor.
- `Documentation/`: Full project report (`COA_Project_Report.pdf`) featuring logic flow and execution screenshots.
- `Presentation/`: Slides summarizing the project's technical architecture.

## 👥 The Team
Developed by Computer Science students at **King Faisal University**:
- **Atekah Hussain Aljafar**
- Fatimah Nasser Albesher
- Fatimah Hussain Alabdellah
- **Supervised by:** Engr. Amani Bayer

---
*Part of the Computer Organization and Architecture Course - KFU (December 2024).*
---
*Connect with me on LinkedIn for more projects!*
[https://www.linkedin.com/in/ateka-hussain/](https://www.linkedin.com/in/ateka-hussain/)
