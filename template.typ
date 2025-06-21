#import "@preview/fontawesome:0.5.0": *

#let sepline() = {
  v(-10pt);
  line(length: 100%);
  v(-2pt)
}

#let iconlink(uri, text: "", icon: fa-link()) = {
  link(uri)[#icon #text]
}

#let entry(
  tl: lorem(2),
  tr: "2333/23 - 2333/23",
  bl: "",
  br: "",
  content
) = {
  set list(indent: 10pt)
  block(
    inset: (left: 0pt),
    strong(tl) + h(1fr) + tr +
    linebreak() +
    if bl != "" or br != "" {
      bl + h(1fr) + br + linebreak()
    } +
    content
  )
}

#let resume(body) = {
  set par(justify: true)


  let sc(content) = { 
    show regex("[A-Z]+"): it => text(font: "Charter", it)
    show regex("[a-z]+"): it => text(font: "Charter", size: 0.80em, upper(it))
    content
  }


  show heading.where(
    level: 1
  ): it => [
    #set align(center)
    #set text(size: 22pt, font: ("Charter"), weight: "regular")
    #block(sc(it))
  ]

  show heading.where(
    level: 2
  ): it => [
    #set align(left)
    #set text(size: 12pt, font: ("Charter"), weight: "regular")
    #block(sc(it) + sepline())
  ]
  
  set text(font: "Charter")

  show link: it => underline(offset: 2pt, it)
  set page(
    height: auto,
    margin: (x: 0.9cm, y: 1.3cm),
  )
  set par(justify: true)

  body
}