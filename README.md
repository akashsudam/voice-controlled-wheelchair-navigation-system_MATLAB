# 🦽 Voice-Controlled Wheelchair Navigation System

> **A MATLAB-based intelligent wheelchair navigation simulator that enables hands-free movement using voice commands through an interactive graphical user interface (GUI).**

![MATLAB](https://img.shields.io/badge/MATLAB-R2020a+-orange)
![Platform](https://img.shields.io/badge/Platform-Windows-blue)
![License](https://img.shields.io/badge/License-MIT-green)
![Project](https://img.shields.io/badge/Project-Assistive%20Technology-success)

---

# 📌 Project Overview

The **Voice-Controlled Wheelchair Navigation System** is an assistive technology simulation developed in **MATLAB** to demonstrate how voice commands can be utilized for wheelchair navigation. The project combines a graphical user interface with speech-command processing to simulate wheelchair movement inside a virtual environment.

Instead of controlling the wheelchair manually, users can issue navigation commands through voice input or command simulation. The system interprets these commands and updates the wheelchair position in real time while displaying the travelled path and maintaining a movement history.

This project serves as a proof-of-concept for future smart wheelchair systems that integrate embedded hardware, artificial intelligence, and autonomous navigation.

---

# ✨ Key Features

✔ Interactive MATLAB GUI

✔ Voice-based wheelchair navigation

✔ Manual command simulation

✔ Real-time movement visualization

✔ 2D navigation environment

✔ Live wheelchair position tracking

✔ Path trajectory plotting

✔ Command history panel

✔ Reset and restart functionality

✔ Lightweight and beginner-friendly implementation

---

# 🎙 Supported Voice Commands

| Voice Command | Wheelchair Action          |
| ------------- | -------------------------- |
| **Forward**   | Move Forward               |
| **Backward**  | Move Backward              |
| **Left**      | Turn Left                  |
| **Right**     | Turn Right                 |
| **Stop**      | Halt Movement              |
| **Reset**     | Return to Initial Position |

---

# ⚙ System Workflow

```
User Voice
     │
     ▼
Microphone Input
     │
     ▼
Speech Command Processing
     │
     ▼
Command Recognition
     │
     ▼
Movement Controller
     │
     ▼
Wheelchair Navigation Engine
     │
     ▼
GUI Visualization
```

---

# 🏗 System Architecture

```
                +------------------+
                |     Microphone   |
                +------------------+
                          |
                          ▼
                Voice Command Input
                          |
                          ▼
             Speech Recognition Module
                          |
                          ▼
              Command Interpretation
                          |
          ┌───────────────┼───────────────┐
          ▼               ▼               ▼
    Navigation       Path Update     History Log
          │               │               │
          └───────────────┼───────────────┘
                          ▼
                  MATLAB GUI Display
```

---

# 🛠 Technologies Used

* MATLAB
* MATLAB GUI (GUIDE/App Designer)
* Audio Recording Functions
* Signal Processing
* Computer Graphics
* Event-Driven Programming

---

# 📂 Project Structure

```
Voice-Controlled-Wheelchair-Navigation-System
│
├── voice_wheelchair_gui.m
├── Images
│   ├── GUI.png
│   ├── Navigation.png
│   └── Output.png
│
├── Documentation
│   ├── Project_Report.pdf
│   └── Presentation.pptx
│
├── Demo
│   └── Demo.mp4
│
├── README.md
└── LICENSE
```

---

# 💻 Installation

Clone the repository

```bash
git clone https://github.com/yourusername/Voice-Controlled-Wheelchair-Navigation-System.git
```

Open MATLAB.

Navigate to the project folder.

Run

```matlab
voice_wheelchair_gui
```

---

# 🚀 How It Works

1. Launch the MATLAB GUI.
2. Select a navigation command.
3. Press **Record Command** or simulate the command.
4. The command is processed.
5. The wheelchair moves accordingly.
6. The travelled path is displayed.
7. Command history is updated automatically.

---

# 📸 Project Demonstration

## GUI Interface

```
Images/GUI.png
```

---

## Navigation Window

```
Images/Navigation.png
```

---

## Simulation Output

```
Images/Output.png
```

---

# 📊 Performance Highlights

* Fast command execution
* Real-time graphical updates
* Simple navigation algorithm
* Minimal computational overhead
* Easy integration with embedded hardware

---

# 🌍 Potential Applications

* Smart Wheelchairs
* Healthcare Automation
* Rehabilitation Centers
* Assistive Robotics
* Human–Computer Interaction
* Voice-Controlled Mobility Systems
* Academic Research
* Engineering Education

---

# 🔬 Future Enhancements

* Real-time speech recognition using Deep Learning
* Arduino/ESP32 integration
* Bluetooth and Wi-Fi communication
* Ultrasonic obstacle detection
* LiDAR-based navigation
* Indoor autonomous localization
* AI-powered path planning
* Mobile application interface
* Emergency SOS functionality
* IoT cloud monitoring
* Patient health monitoring integration
* Camera-based object detection
* GPS navigation support
* Battery health monitoring
* Voice authentication for secure access

---

# 📈 Future Research Direction

This project can be extended into a complete intelligent mobility platform by integrating:

* Computer Vision
* Artificial Intelligence
* Embedded Systems
* Machine Learning
* Edge Computing
* Internet of Things (IoT)
* Autonomous Navigation Algorithms

---

# 🤝 Contributing

Contributions are welcome.

If you have ideas for improving this project, feel free to fork the repository, create a new branch, and submit a pull request.

---

# 📄 License

This project is released under the **MIT License**.

---

# 👨‍💻 Developer

**Akash Sudam**

**Electronics and Communication Engineering**

Embedded Systems • MATLAB • IoT • Machine Learning • Assistive Technologies

**GitHub:** https://github.com/akashsudam

**LinkedIn:** linkedin.com/in/akash-sudam-a14329289

---

⭐ **If you found this project useful, consider giving it a Star on GitHub!**
