#import "template.typ": *

#show: resume

= YANG, RUQING

#align(center)[
#iconlink("mailto:yangrq.lambda@gmail.com", text: "yangrq.lambda@gmail.com", icon: envelope)
#iconlink("https://github.com/waterlens", text: "waterlens", icon: github)
]

== RESEARCH INTEREST
I'm interested in the *design* and *implementation* of programming languages and typing systems.

== EDUCATION
#entry(
    tl: [Hong Kong University of Science & Technology],
    tr: [*Aug. 2023 - June 2025 (expected)*],
    bl: [*M. Phil.* _Computer Science and Engineering_],
    br: [_Hong Kong S.A.R., China_],
)[
    Advisor: Lionel Parreaux
]

#entry(
    tl: [Zhejiang University],
    tr: [*Sep. 2019 - June 2023*],
    bl: [*B. Eng.* _Computer Science and Technology_],
    br: [_Hangzhou, China_],
)[]

== PROJECTS

#entry(
    tl: [Calocom #link("https://github.com/permui/calocom")[#fa(link-icon)]],
    tr: [*Spring 2022*],
)[
#set list(indent: 15pt)
- This is a course project where I and my teammates designed and implemented a programming language with functional features like algebraic data type, closure, and pattern matching.
- I was involved in designing the type system, the typed AST, and the middle IR.
- I wrote the type checker, transformer from typed AST to middle IR, the code generator targeting LLVM IR, the run-time library, and the standard library.
]

#entry(
    tl: [SyOC #link("https://github.com/waterlens/syoc")[#fa(link-icon)]],
    tr: [*Spring 2022 - Summer 2022*],
)[
#set list(indent: 15pt)
- An optimizing compiler for SysY (a subset of C) language.
- Used technique: Iterated domination frontier analysis for SSA-form IR construction, constant propagation, etc.
]

== EXPERIENCE

#entry(
    tl: [*Teaching Assistant*],
    tr: [*Sept. 2022 - Jan. 2023*],
)[
#set list(indent: 15pt)
- In the course _Principles of Programming Languages_.
- I prepared a lab that requires students to implement Hindley–Milner type inference in a simple lambda calculus with let expression.
- I designed and wrote the auto judgement system of labs.
]

== SKILLS

*Programming Languages:*
C/C++, Java, OCaml, Python, Rust, Scala
#v(-6pt)
*Proof Assistant:*
Coq

#align(right + bottom, text(fill: gray)[Last Updated on June 5, 2023])
