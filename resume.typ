// Page setup
#set page(
  paper: "us-letter",
  margin: (x: 1in, y: 1in),
)

// ATS friendly font and line spacing
#set text(
  font: ("Lora"),
  size: 11pt
)

#set par(justify: true, leading: 0.5em)

// Header
#align(center)[
  // Name
  #text(size: 22pt, weight: "bold")[Westly Bouchard]
  #v(2pt)

  // Location and phone number
  Denver, CO | 720-418-0939

  // Web links
  #link("https://westlybouchard.com")[westlybouchard.com] | 
  #link("mailto:westly.bouchard@gmail.com")[westly.bouchard\@gmail.com] | 
  #link("https://www.linkedin.com/in/wcbouchard")[linkedin.com/in/wcbouchard]
]

// Horizontal line that separates the header from the rest of the content
#line(length: 100%, stroke: 0.5pt)
#v(5pt)
