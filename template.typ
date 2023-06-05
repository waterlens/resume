#import "fa.typ": fa, envelope, github, link-icon

#let sepline() = {
  v(-10pt);
  line(length: 100%);
  v(-2pt)
}

#let iconlink(uri, text: "", icon: link-icon) = {
  link(uri)[#fa[#icon] #text]
}

#let entry(
  tl: lorem(2),
  tr: "2333/23 - 2333/23",
  bl: "",
  br: "",
  content
) = {
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

  show heading.where(
    level: 1
  ): it => [
    #set align(center)
    #set text(size: 22pt, font: ("Charter"))
    #block(it)
  ]

  show heading.where(
    level: 2
  ): it => [
    #set align(left)
    #set text(size: 12pt, font: ("Charter"), weight: "bold")
    #block(it + sepline())
  ]
  
  set text(font: "Charter")

  show link: it => underline(offset: 2pt, it)
  set page(
   margin: (x: 0.9cm, y: 1.3cm),
  )
  set par(justify: true)

  body
}