#import "template.typ": *

#show: resume


= Ruqing Yang

#align(center)[
#iconlink("mailto:yangrq.lambda@gmail.com", text: "yangrq.lambda@gmail.com", icon: fa-envelope())
#iconlink("https://github.com/waterlens", text: "github.com/waterlens", icon: fa-github())
]

== Research Interests
I am interested in the implementation and optimization of programming languages, particularly in the following areas:
- Automatic memory management assisted by type systems
- Improved data representation for compute-intensive programs
- Explicit vectorization
- Formal verification of transformations

== Education
#entry(
    tl: [Hong Kong University of Science & Technology],
    tr: [*Aug. 2023 - June 2025 (expected)*],
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

- This is an ongoing project in HKUST TACO Lab. It's an object-oriented and functional programming language with numerous advanced type system features.
- Designed an ANF-based IR with join points support and integrated it into MLS compiler.
- Implemented an optimizer based on it. It contains a non-duplicate partial inliner leveraging function splitting.
- Implemented a C++ backend. Using a universal object representation, and reference counting for memory management.
]

#entry(
    tl: [Calocom #link("https://github.com/permui/calocom")[#fa-link()]],
    tr: [*Spring 2022*],
)[

- This is a coursework for the course _compilation principle_.
- Designed and implemented a programming language with functional features like algebraic data type, closure, and pattern matching.
- Topics include: type checking, closure conversion, LLVM-based code generation, and runtime system.
]

#entry(
    tl: [SyOC #link("https://github.com/waterlens/syoc")[#fa-link()]],
    tr: [*Spring 2022 - Summer 2022*],
)[

- This is an optimizing compiler for SysY (a subset of C) language.
- Typical dataflow analysis: immediate dominator analysis, iterated domination frontier analysis for SSA IR construction.
- Optimizations: constant propagation, CFG simplification, and dead code elimination.
- Implemented linear scan register allocation.
]

== Experience

#entry(
    tl: [*Teaching Assistant* of _Principles of Programming Languages_],
    tr: [*Sept. 2022 - Jan. 2023*],
)[

- Prepared a lab that requires students to implement Hindley-Milner type inference with let generalization in a simple typed lambda calculus.
- Designed and wrote the auto judgement system of labs.
]

#entry(
    tl: [*Keynote Presentation* in a PL enthusiasts group],
    tr: [*July 2023*],
)[

- Gave a presentation on the topic of "Efficient Pattern Matching Compilation".
]

#entry(
    tl: [*Teaching Assistant* of _Programming with C++_],
    tr: [*Jan. 2024 - June 2024*],
)[

- Prepared a lab that helps students learn dynamic memory management in C++.
]

== Skills

*Programming Languages:*
OCaml, Rust, Haskell, C/C++, Zig, Scala, Java, Python, etc.
#v(-6pt)
*Proof Assistant:*
Coq

#align(right + bottom, text(fill: gray)[Last Updated on May 24, 2024])
