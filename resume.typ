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
    tr: [*Sept. 2023 - Aug. 2025 (expected)*],
    bl: [*M. Phil.* in _Computer Science and Engineering_. Supervised by Lionel Parreaux.],
    br: [_Hong Kong S.A.R., China_],
)[
]

#entry(
    tl: [Zhejiang University],
    tr: [*Sept. 2019 - June 2023*],
    bl: [*B. Eng.* in _Computer Science and Technology_. GPA: 3.84/4.0],
    br: [_Hangzhou, China_],
)[
]

== Projects

#entry(
    tl: [*Calocom* #link("https://github.com/permui/calocom")[#fa-link()] _written in Rust_],
    tr: [*Spring 2022*],
)[
- A coursework implementing a programming language with algebraic data type, closure, and pattern matching. 
- Type checking, closure conversion, LLVM-based code generation included.
]

#entry(
    tl: [*SyOC* #link("https://github.com/waterlens/syoc")[#fa-link()] _written in C++_],
    tr: [*Spring 2022 - Summer 2022*],
)[
- An optimizing compiler for a subset of C language, typical dataflow analysis: immediate dominator analysis, iterated domination frontier analysis for SSA construction.
- Optimizations: constant propagation, CFG simplification, and dead code elimination.
]

#entry(
    tl: [*MLScript* #link("https://github.com/waterlens/mlscript")[#fa-link()] _written in Scala_],
    tr: [*Autumn 2023 - Now*],
)[
- ANF-based IR with join points extension with a non-duplicate partial inliner leveraging function splitting.
- C++ backend with a universal object representation, and reference counting for memory management.
]

#entry(
    tl: [*MMM* #link("https://github.com/Mini-Moonbit-Machine/mmm")[#fa-link()] _written in MoonBit_],
    tr: [*Autumn 2024*]
)[
- An Optimizing compiler for the _Mini MoonBit_ language with JS, RISC-V and WASM backends.
- Selective CPS transformation and thunking on function calls to avoid stack overflow in the JavaScript backend.
- Tree-pattern covering instruction selector and chordal graph coloring register allocator.
- Optimizations: lambda lifting, loop invariant code motion, local value numbering, and guaranteed tail recursion elimination.
]

#entry(
    tl: [*RMatch* #link("https://github.com/waterlens/rmatch")[#fa-link()] _A regular expression engine of NFA VM and JIT compilation_],
    tr: [*Autumn 2021*],
)[]

#entry(
    tl: [*Apple μArch Bench* #link("https://github.com/waterlens/apple-uarch-bench")[#fa-link()] _Measure architecture characteristics of Apple Silicon _],
    tr: [*Spring 2024*],
)[]

#entry(
    tl: [*SIB Optimization for OCaml* #link("https://github.com/waterlens/ocaml/pull/1")[#fa-link()] _Internally used in MoonBit compiler_],
    tr: [*Spring 2025*],
)[]

#entry(
    tl: [*Monoid Hash* #link("https://github.com/waterlens/monoid-hash/blob/fcf87700c1145429097045e3a29cc2db8230ae22/crc32c.h#L76")[#fa-link()] _Extending fast-crc32 with
      hardware accelerated monoid combination_
    ],
    tr: [*Spring 2025*],
)[
]

== Publications

#entry(
    tl: [*Smart Inlining through Function Splitting*, _PLDI SRC 2025_],
    tr: [*April 2025*],
)[]

== Experience

#entry(
    tl: [*Intern for Programming Language Tool Development*, _at IDEA_],
    tr: [*Mar. 2025 - June 2025 (expected)*],

)[]

#entry(
    tl: [*Student Volunteer*, _ICFP 2024_],
    tr: [*Sept. 2024*],
)[]

#entry(
    tl: [*Teaching Assistant*, _Programming with C++_],
    tr: [*Jan. 2024 - June 2024*],
)[]

#entry(
    tl: [*Remote Research Intern*, _hosted by Yizhou Zhang_],
    tr: [*Sept. 2022 - Jan. 2023*],
)[]

#entry(
    tl: [*Undergraduate Teaching Assistant*, _Principles of Programming Languages_],
    tr: [*Sept. 2022 - Jan. 2023*],
)[]

== Skills

*Programming Languages:*
OCaml, Rust, C/C++, Scala, Java, Python, etc.
#v(-6pt)
*Proof Assistant:*
Coq

#align(right + bottom, text(fill: gray)[Last Updated on May 2025])
