#import "@preview/fontawesome:0.5.0": *
#import "@preview/based:0.2.0": base64

#let sepline() = {
  v(-10pt);
  line(length: 100%);
  v(-2pt)
}

#let iconlink(uri, text: "", icon: fa-link()) = {
  icon
  h(.2em)
  link(uri)[#text]
}

#let entry(
  tl: lorem(2),
  tr: "2333/23 - 2333/23",
  bl: "",
  br: "",
  content
) = {
  set list(indent: 10pt)
  let tl = text(size: 1.1em, strong(tl))
  block(
    inset: (left: 0pt),
    tl + h(1fr) + tr +
    linebreak() +
    if bl != "" or br != "" {
      bl + h(1fr) + br + linebreak()
    } +
    content
  )
}

#let resume(body, lang: "en") = {
  set par(justify: true)

  let font = if lang == "zh-cn" { ("Helvetica", "PingFang SC") } else { ("Charter", "Charter") }

  let sc(content) = { 
    show regex("[A-Z]+"): it => text(font: font, it)
    show regex("[a-z]+"): it => text(font: font, size: 0.80em, upper(it))
    content
  }

  show heading.where(
    level: 1
  ): it => [
    #set align(center)
    #set text(size: 22pt, font: font, weight: "regular")
    #block(sc(it))
  ]

  show heading.where(
    level: 2
  ): it => [
    #set align(left)
    #set text(size: 15pt, font: font, weight: "regular")
    #block(sc(it) + sepline())
  ]
  
  set text(font: font)

  show link: it => underline(offset: 2pt, it)
  set page(
    height: auto,
    margin: (x: 0.9cm, y: 1.3cm),
  )
  set par(justify: true)

  let ts = datetime.today(offset:8).display()
  let embedded = bytes(base64.encode(ts))
  
  pdf.embed(
    "info.txt",
    embedded,
    mime-type: "text/plain",
    relationship: "data",
  )

  body
}