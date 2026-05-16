// Page setup - slightly adjusted vertical margins to protect single-page layout
#set page(
  paper: "us-letter",
  margin: (x: 0.75in, top: 0.4in, bottom: 0.4in),
)

// ATS friendly font and line spacing
#set text(
  font: ("Lora"),
  size: 10pt
)

#set par(justify: true, leading: 0.45em)

#show heading.where(level: 1): it => block(
  above: 8pt,  // Reduced spacing above headings
  below: 2pt,  // Reduced spacing below headings
  [
    #text(size: 11pt, weight: "bold", it.body)
    #v(-7pt) 
    #line(length: 100%, stroke: 0.5pt)
  ]
)

// Header
#align(center)[
  #text(size: 20pt, weight: "bold")[Westly Bouchard]
  #v(-10pt)

  Denver, CO | 720-418-0939 \
  #v(-2pt)
  #link("https://westlybouchard.com")[westlybouchard.com] | 
  #link("mailto:westly.bouchard@gmail.com")[westly.bouchard\@gmail.com] | 
  #link("https://www.linkedin.com/in/wcbouchard")[linkedin.com/in/wcbouchard]
]

/*
 * Projects
*/
#heading(level: 1)[Projects]

// Open Holonomics
#grid(
  columns: (1fr, auto),
  [*Open Holonomics* | _ROS2, C++, Python, Onshape, Manufacturing_],
  [May 2025 - Present]
)
- Designed and manufactured a compact swerve drive module, validating dimensional accuracy and tolerances across rapid prototyping cycles.
- Isolated a hardware-software integration failure where motors deviated from targets; diagnosed uninitialized CAN payload bytes using ODrive tools and verified the fix.
- Co-authored comprehensive assembly runbooks and system startup/shutdown procedures to streamline module builds and bring-up testing.
#v(1pt)

// Motor driver interface
#grid(
  columns: (1fr, auto),
  [*Motor Driver Interface* | _C++, ROS2_control, Linux, CAN Bus_],
  [May 2025 - Aug 2025]
)
- Developed a custom C++ `ros2_control` hardware interface to communicate with legacy ODrive motor controllers over a CAN network.
- Leveraged Linux SocketCAN primitives and `epoll()` for deterministic, non-blocking I/O, reducing CPU overhead during runtime validation.
- Used Linux command-line diagnostics to verify custom firmware modifications multiplexing dual-encoder sensor data over a single bus.
#v(1pt)

// Encoder PCB
#grid(
  columns: (1fr, auto),
  [*Encoder PCB* | _KiCad, PCB Design, AS5047P, SPI_],
  [June 2025 - Dec 2025]
)
- Designed a rotary magnetic position sensor PCB in KiCad supporting SPI, ABI, and UVW interfaces for 3.3V/5V robotic actuators.
- Ran structured tests on V1 prototypes; diagnosed an ABI failure mode caused by floating SPI pins and implemented a verified hardware fix on V2.
- Partnered with an external manufacturer to manage fabrication and automated assembly of updated boards for final qualification testing.

/*
 * Experience
*/
#heading(level: 1)[Experience]

// Freewheel
#grid(
  columns: (1fr, auto),
  [*Software Engineer Intern* | _Freewheel (Beeswax App Team)_],
  [Jun 2025 - Aug 2025]
)
- Modernized backend infrastructure by refactoring legacy PHP APIs into Python and Django for a complex web application.
- Maintained strict data interoperability across front- and back-end systems using React, TypeScript, MySQL, Postgres, and Snowflake.
- Managed version control, bug tracking, and regression logging using *Jira*, Git, and GitHub within an active Agile/Scrum framework.
#v(1pt)

// CS200 TA
#grid(
  columns: (1fr, auto),
  [*Computer Science Teaching Assistant* | _Colorado School of Mines_],
  [Jan 2024 - Present]
)
- Guided engineering students through foundational C++ coursework, debugging, and code compilation procedures.
- Supported student comprehension of complex memory management, object-oriented topics, pointers, inheritance, and polymorphism.

/*
 * Education
*/
#heading(level: 1)[Education]

#grid(
  columns: (1fr, auto),
  [*Colorado School of Mines* | _Golden, CO_],
  [Aug 2023 – May 2027]
)
- *Bachelor of Science in Design Engineering*
- *Concentration:* Robotics & Automation | *Minor:* Computer Science
- *GPA:* 3.9 / 4.0 (Dean's List)

/*
 * Skills
*/
#heading(level: 1)[Skills]

- *Software & Systems:* C++, Python, ROS2, Linux (Command Line), Git / GitHub, Django, React, *Jira / Agile Tracking*
- *Testing & Hardware:* KiCad (PCB Design), Hardware Validation, Signal / Protocol Logging (SPI & CAN Bus), Sensor Calibration, Logic Design
- *Mechanical & Design:* SolidWorks (CSWP), Onshape, 3DP / DFM, Prototyping, Runbook Documentation, Feedback Control Analysisw