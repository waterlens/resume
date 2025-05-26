#import "template.typ": *

#show: resume


= Ruqing Yang

#align(center)[
#iconlink("mailto:yangrq.lambda@gmail.com", text: "yangrq.lambda@gmail.com", icon: fa-envelope())
#iconlink("https://github.com/waterlens", text: "github.com/waterlens", icon: fa-github())
]

== Research Interests
I aim to improve programming languages to enhance performance and provide stronger guarantees for users.

== Education
#entry(
    tl: [Hong Kong University of Science & Technology],
    tr: [*Aug. 2023 - Aug. 2025 (expected)*],
    bl: [*M. Phil.* in _Computer Science and Engineering_],
    br: [_Hong Kong S.A.R., China_],
)[
- Advisor: Lionel Parreaux
]

#entry(
    tl: [Zhejiang University],
    tr: [*Sep. 2019 - June 2023*],
    bl: [*B. Eng.* in _Computer Science and Technology_],
    br: [_Hangzhou, China_],
)[
- GPA: 3.84/4.0
- A/A+ Courses: Programming Language Principles, Compilation Principles, Data Structure and Algorithm, etc.
]

== Projects

#entry(
    tl: [MLScript #link("https://github.com/waterlens/mlscript")[#fa-link()]],
    tr: [*Autumn 2023 - Now*],
)[

- This is an ongoing project in HKUST TACO Lab.
- Designed an ANF-based IR with join points support and integrated it into MLsript compiler.
- Implemented an optimizer based on it. It contains a non-duplicate partial inliner leveraging function splitting.
- Implemented a C++ backend. Using a universal object representation, and reference counting for memory management.
]

#entry(
    tl: [Calocom #link("https://github.com/permui/calocom")[#fa-link()]],
    tr: [*Spring 2022*],
)[

- A coursework for the course _Compilation Principle_.
- Designed and implemented a programming language with functional features like algebraic data type, closure, and pattern matching.
- Topics include type checking, closure conversion, LLVM-based code generation
]

#entry(
    tl: [SyOC #link("https://github.com/waterlens/syoc")[#fa-link()]],
    tr: [*Spring 2022 - Summer 2022*],
)[

- This is an optimizing compiler for SysY (a subset of C) language.
- Typical dataflow analysis: immediate dominator analysis, iterated domination frontier analysis for SSA construction.
- Optimizations like constant propagation, CFG simplification, and dead code elimination.
]

#entry(
    tl: [MMM],
    tr: [*Autumn 2024 - Now*]
)[
- A small compiler for the functional MiniMoonBit language.
- Do selective CPS transformation and thunking on function calls to avoid stack overflow in the JavaScript backend.
- Implemented an efficient native backend with tree-pattern covering instruction selector and chordal graph coloring register allocator.
- Optimizations like lambda lifting, loop invariant code motion, local value numbering, and guaranteed tail recursion elimination.
]

== Experience

#entry(
    tl: [*Undergraduate Teaching Assistant*, _Principles of Programming Languages_],
    tr: [*Sept. 2022 - Jan. 2023*],
)[]

#entry(
    tl: [*Remote Research Intern*, _hosted by Yizhou Zhang_],
    tr: [*Sept. 2022 - Jan. 2023*],
)[]

#entry(
    tl: [*Teaching Assistant*, _Programming with C++_],
    tr: [*Jan. 2024 - June 2024*],
)[]

#entry(
    tl: [*Student Volunteer*, _ICFP 2024_],
    tr: [*Sept. 2024*],
)[]

== Skills

*Programming Languages:*
OCaml, Rust, C/C++, Scala, Java, Python, etc.
#v(-6pt)
*Proof Assistant:*
Coq

#align(right + bottom, text(fill: gray)[Last Updated on Nov. 2024])
