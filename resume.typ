// Page setup
#set page(
  paper: "us-letter",
  margin: (x: 0.75in, y: 0.5in),
)

// ATS friendly font and line spacing
#set text(
  font: ("Lora"),
  size: 10pt
)

#set par(justify: true, leading: 0.5em)

#show heading.where(level: 1): it => block(
  above: 10pt, // Space above heading
  below: 4pt,  // Space between heading line and content
  [
    #text(size: 12pt, weight: "bold", it.body)
    #v(-6pt) // Pulls the line up closer to the text
    #line(length: 100%, stroke: 0.5pt)
  ]
)

// Configure list spacing
// #set list(spacing: 0.3em)

// Header
#align(center)[
  // Name
  #text(size: 22pt, weight: "bold")[Westly Bouchard]
  #v(-8pt)

  // Location and phone number
  Denver, CO | 720-418-0939

  // Web links
  #link("https://westlybouchard.com")[westlybouchard.com] | 
  #link("mailto:westly.bouchard@gmail.com")[westly.bouchard\@gmail.com] | 
  #link("https://www.linkedin.com/in/wcbouchard")[linkedin.com/in/wcbouchard]
]

// Horizontal line that separates the header from the rest of the content
// #line(length: 100%, stroke: 0.5pt)
// #v(5pt)

/*
 * Projects
*/

#heading(level: 1)[Projects]
// #line(length: 100%, stroke: 0.5pt)
#v(2pt)

// Open Holonomics
#grid(
  columns: (1fr, auto),
  [*Open Holonomics* | _ROS2, C++, Python, Onshape, Prototyping_],
  [May 2025 - Present]
)
- Designed and manufactured a compact, open-source, swerve drive module, utilizing custom gear reductions to fit within a constrained 12x12-inch footprint.
- Developed a modular, node-based ROS2 control stack to handle forward kinematics and command generation.
- Debugged and resolved precision tracking issues by reverse-engineering ODrive CAN protocols to correctly pack position setpoints and feedforward terms into 8-byte payloads.

#v(4pt)

// Motor driver interface
#grid(
  columns: (1fr, auto),
  [*Motor Driver Interface* | _C++, ROS2_control, Linux, CAN Bus_],
  [May 2025 - August 2025]
)
- Developed a custom C++ `ros2_control` hardware interface to communicate with legacy ODrive motor controllers over a CAN bus network.
- Implemented asynchronous, non-blocking CAN frame read/write operations utilizing Linux SocketCAN and the `epoll()` syscall, ensuring deterministic executing without thread-spinning.
- Modified legacy open-source motor firmware to multiplex dual-encoder inputs over the bus, significantly reducing system wiring complexity.

#v(4pt)

// Encoder PCB
#grid(
  columns: (1fr, auto),
  [*Encoder PCB* | _KiCad, PCB Design, AS5047P, SPI_],
  [June 2025 - December 2025]
)
- Designed and routed a custom rotary magnetic position sensor PCB in KiCad based on the AS5047p IC for use in robotic actuators.
- Engineered the board to support both 3.3V and 5V logic and successfuly broke out SPI, ABI, and UVB communication interfaces for maximum hardware compatibility.

#v(4pt)

// Pen plotter
// #grid(
//   columns: (1fr, auto),
//   [*CoreXY Pen Plotter* | _C++, Arduino, Embedded Electronics_],
//   [Oct 2024 - Nov 2024]
// )
// - Led the electronics and firmware integration for a CoreXY kinematic pen plotter, managing stepper motors, driver, and limit switches.
// - Programmed a custom C++ motion controller capable of interpolating Bézier curves and processing discrete timesteps over a serial connection.

/*
 * Experience
*/

#heading(level: 1)[Experience]
// #line(length: 100%, stroke: 0.5pt)
#v(2pt)

// Freewheel
#grid(
  columns: (1fr, auto),
  [*Software Engineer Intern* | _Freewheel (Beeswax App Team)_],
  [Jun 2025 - Aug 2025]
)
- Contributed to the development of a large, technically complex web application.
- Rewrote outdated PHP APIs using Python and Django to modernize the backend infrastructure.
- Ensured strict interoperability between legacy codebases and the modern front-end, working extensively with React.js, Typescript, MySQL, Postgres, and Snowflake.
- Managed version control and agile workflows using Git, GitHub, and Scrum.

#v(4pt)

// CS200 TA
#grid(
  columns: (1fr, auto),
  [*Computer Science Teaching Assistant* | _Colorado School of Mines_],
  [Jan 2024 - Present]
)
- Guided engineering students through their foundational C++ coursework.
- Supported student comprehension of complex memory management and object-oriented topics, including pointers, inheritance, and polymorphism.

#v(8pt)

#heading(level: 1)[Education]
// #line(length: 100%, stroke: 0.5pt)
#v(2pt)

#grid(
  columns: (1fr, auto),
  [*Colorado School of Mines* | _Golden, CO_],
  [Aug 2023 – May 2027]
)
- *Bachelor of Science in Design Engineering*
- *Concentration:* Robotics & Automation | *Minor:* Computer Science
- *GPA:* 3.9 / 4.0 (Dean's List)

#v(6pt)

// =========================================
// SKILLS
// =========================================
#heading(level: 1)[Skills]
// #line(length: 100%, stroke: 0.5pt)
#v(2pt)

- *Software & Tools:* C++, Python, Java, ROS2, Linux, Git / GitHub Actions, Django, React
- *Electrical & Hardware:* KiCad (PCB Design), Verilog, Logic Design, SPI / CAN Protocols, AS5047P
- *Mechanical & Design:* SolidWorks (CSWP Certified), Onshape, 3D Printing / DFM, Physical Prototyping