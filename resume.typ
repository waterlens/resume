#import "template.typ": *
#import "option.typ": *

#show: it => resume(it, lang: "en")

#if desensitization [
  = ⬛⬛⬛
] else [
  = Ruqing Yang
]

#let email = if desensitization {
  "waterlens@waterlens.moe"
} else {
  "yangrq.lambda@gmail.com"
}

#let github = "github.com/waterlens"

#let blog = if desensitization {
  "waterlens.moe/posts"
} else {
  "yangrq.org/posts"
}

#let blog-main = if desensitization {
  "waterlens.moe"
} else {
  "yangrq.org"
}

#let phone = "13083098668"

#align(center)[
#iconlink("mailto:" + email, text: email, icon: fa-envelope())
#h(.3em)
#iconlink("https://" + github, text: github, icon: fa-github())
#h(.3em)
#iconlink("https://" + blog, text: blog-main, icon: fa-blog())
#h(.3em)
#if not(desensitization) {
iconlink("tel:" + phone, text: phone, icon: fa-phone())
}
]

#let dev-side-interest = [
  
== Personal Overview

With deep experience in compilers, system software, and performance optimization, I am eager to apply my technical expertise in the field of system development.
I am passionate about solving the challenges of low-latency and high-throughput systems through micro-architectural tuning, efficient memory management, and custom compilation techniques to deliver extreme performance for complex computational tasks.
]

#let pl-side-interest = [

== Personal Overview

I am dedicated to designing and implementing high-performance programming languages with new paradigms, seeking opportunities for compiler optimizations, and providing users with stronger static safety guarantees.

]

#let gpu-side-interest = [

== Personal Overview

I am dedicated to designing and implementing high-performance parallel programming languages with new paradigms, seeking opportunities for compiler optimizations to fully utilize computing hardware (CPU, GPU, NPU), and providing users with stronger static safety guarantees.

]

#let game-side-interest = [

== Personal Overview

With a solid background in programming languages and compilers, I focus on developing high-performance compilation systems and scripting languages to support efficient implementation in complex scenarios such as game development.
Inspired by Epic Games' Verse language for Unreal Engine 5, I strive to integrate type safety, performance optimization, and dynamic scripting support, designing cross-platform programming languages and toolchains optimized for game development, significantly improving runtime performance and development efficiency.

]

#let quant-side-interest = [

== Personal Overview

With deep experience in compilers, system software, and performance optimization, I am eager to apply my technical expertise in the field of quantitative trading.
I am passionate about solving the challenges of ultra-low latency and high-throughput systems through micro-architectural tuning, efficient memory management, and custom compilation techniques to deliver extreme performance for complex computational tasks.
]


#if role == NORMAL-DEV {
  dev-side-interest
} else if role == CPU-COMPILER-PL {
  pl-side-interest
} else if role == GPU-COMPILER {
  gpu-side-interest
} else if role == GAME-COMPILER {
  game-side-interest
} else if role == QUANT-DEV {
  quant-side-interest
} else if role == ALL-COMPILER {
  gpu-side-interest
} else if role == GAME-DEV {
  game-side-interest
}

== Education
#entry(
    tl: [Hong Kong University of Science & Technology],
    tr: [*Sept. 2023 - Jan. 2026 (expected)*],
    bl: [*MPhil*, _Computer Science and Engineering_, Advisor: Lionel Parreaux],
    br: [_Hong Kong S.A.R._],
)[
  Research focus: *compiler optimizations* for functional programming languages.
]

#entry(
    tl: [Zhejiang University],
    tr: [*Sept. 2019 - June 2023*],
    bl: [*BEng*, _Computer Science and Technology_, GPA: 3.84/4.0],
    br: [_Hangzhou_],
)[
  Courses with A+/A: Compilation Principles, Computer Architecture, Programming Language Principles, Operating Systems, etc.
]

== Publications

#entry(
    tl: [*Incremental Live Programming via Shortcut Memoization*, _OOPSLA 2026_],
    tr: [*Dec. 2024 — May 2026*],
)[Marisa Kirisame, Thomas J. Porter, *Ruqing Yang*, Jianqiu Zhao, Yudi Wu, Ivan Wei, Cyrus Omar, Pavel Panchekha

  Proposes an incremental live programming approach based on shortcut memoization that learns repeated computation patterns to accelerate re-execution.]

#entry(
    tl: [*Smart Inlining through Function Splitting*, _PLDI SRC 2025_],
    tr: [*Mar. 2025 — Jun. 2025*],
)[*Ruqing Yang*

  Proposes a compiler optimization using function splitting for smart inlining, reducing code bloat while preserving optimization benefits.]

== Experience

#entry(
    tl: [*Intern for Programming Language Tool Development*, _IDEA Research, Basic Software Department_],
    tr: [*Mar. 2025 - June 2025*],
)[
  - Implemented an OCaml optimization to improve MoonBit compiler performance.
  - Improved the speed of compiling MoonBit tests with the native backend by using the `tcc` compiler to compile generated C source, including refactoring the build system, fixing bugs in `tcc`, and supporting cross-platform runtime libraries for Linux, macOS, and Windows.
  - Added benchmarking features to the toolchain, supporting statistical analysis and visualization.
]

== Projects

#let calocom = entry(
    tl: [*Calocom* #link("https://github.com/permui/calocom")[#fa-link()]],
    tr: [*Apr. 2022 - June 2022*],
    bl: [_Group project for Compilation Principles course_],
    br: [_Rust_]
)[
- Developed a feature-rich programming language supporting *algebraic data types*, higher-order functions, and pattern matching.
- Responsible for designing the *type system*, typed AST, object memory representation, name mangling style, and an intermediate representation (IR) for desugaring and necessary transformations.
- Led the project development, implemented almost all components except lexing and parsing, including syntax desugaring, *semantic checking*, *closure conversion*, and *LLVM*-based code generation (using Rust library _inkwell_).
  Also wrote the standard library (strings, vectors, etc.) and *runtime* (object allocation and program entry) in unsafe Rust.
- Awarded best course project in class.
]

#let syoc = entry(
    tl: [*SyOC* #link("https://github.com/waterlens/syoc")[#fa-link()]],
    tr: [*Mar. 2022 - Aug. 2022*],
    bl: [_Team collaboration project_],
    br: [_C++, Python, ARM_]
)[
- Aimed to learn compiler optimization techniques and participate in the Bisheng Cup Compiler Contest.
  Developed from scratch, first team from Zhejiang University to enter the finals (only two members).
- Led the project, designed a *compiler framework* in *modern C++* for optimization passes, and an *SSA*-based IR supporting *def-use* and *use-def* chains.
- Implemented lexer, recursive descent parser, *mem2reg* transformation (including *immediate dominator analysis* and *iterated dominance frontier analysis* for SSA construction), dead code elimination, and constant propagation.
- Wrote Python scripts to compare the performance of optimized programs with gcc or other compilers.
]

#let mlscript = entry(
    tl: [*MLscript* #link("https://github.com/waterlens/mlscript")[#fa-link()]],
    tr: [*Apr. 2023 - Now*],
    bl: [_Joint project from lab_],
    br: [_Scala, C++_]
)[
- Designed an *ANF*-based intermediate representation with join points extension.
- Implemented a *smart inliner* with control flow analysis to decide inlining opportunities, and used *function splitting* to reduce code duplication caused by inlining.
  Also responsible for the C++ backend, including universal object memory representation, *optimized arithmetic on unboxed values*, and *reference-counting* memory management.
]

#let quickaml = entry(
    tl: [*QuicKaml* #link("https://github.com/waterlens/quickaml")[#fa-link()]],
    tr: [*June 2023 - Jan. 2024*],
    bl: [_Personal hobby project_],
    br: [_C_]
)[
- Implemented a register-based VM interpreter for a monomorphic language, with many low-level optimizations.
- Used a patched LLVM to generate *guaranteed tail-call* code for VM instruction handlers in the interpreter.
- Tried various techniques to improve interpreter performance, including: *operand reordering* for efficient sign extension; *partial register decoding* to reduce unnecessary shifts on x86-64; instruction fetching based on unaligned memory access or shift and mask; *pre-decoding* to hide decode latency using CPU pipeline concurrency.
]

#let mmm = entry(
    tl: [*MMM* #link("https://github.com/Mini-Moonbit-Machine/mmm")[#fa-link()]],
    tr: [*Sept. 2024 - Nov. 2024*],
    bl: [_Team project for MGPIC contest_],
    br: [_MoonBit, RISC-V, WebAssembly_]
)[
- Led development and designed an optimizing compiler framework based on MoonBit for the _Mini MoonBit_ language, with JavaScript, *RISC-V*, and *WASM* backends.
- Implemented all core optimizations required for the contest, including *guaranteed tail recursion elimination*, *selective lambda lifting* based on *register pressure*, *basic block straightening*, dead code elimination, *local value numbering*, *common subexpression elimination*, *loop invariant code motion*, *jump table optimization*, *scalar replacement*, and fast bump allocation.
- Wrote code generators for JavaScript and RISC-V backends. To avoid stack overflow, designed *selective CPS transformation* and *automatic thunking* for the JavaScript backend; for the RISC-V backend, ported Cranelift's *tree-pattern covering instruction selector* and implemented a *chordal graph coloring register allocator*.
- Extended the language to support parametric polymorphism (*generics*), ad-hoc polymorphism (*typeclass* via dictionary passing), and user-defined operators.
]

#let rmatch = entry(
    tl: [*RMatch* #link("https://github.com/waterlens/rmatch")[#fa-link()]],
    tr: [*Sept. 2021 - Oct. 2021*],
    bl: [_Personal hobby project_],
    br: [_C++_]
)[
- Parsed *regular expressions* and generated NFA-based *VM* bytecode, then used C++ library _xbyak_ to *JIT-compile* the bytecode to native x86-64 machine code.
]

#let apple-uarch-bench = entry(
    tl: [*Apple μArch Bench* #link("https://github.com/waterlens/apple-uarch-bench")[#fa-link()]],
    tr: [*Apr. 2024*],
    bl: [_Hobby project_],
    br: [_C_]
)[
- Explored *micro-architecture* features of Apple Silicon using *hardware performance counters*.
]

#let sib-optimization = entry(
    tl: [*SIB Optimization for OCaml* #link("https://github.com/waterlens/ocaml/pull/1")[#fa-link()]],
    tr: [*May 2025 - June 2025*],
    bl: [_*Share-immutable-block* optimization_],
    br: [_OCaml_]
)[
- Functional programming languages often perform pattern matching on existing data structures, and even if the new object is identical to the old one, a new allocation is often made.
  I implemented a sound optimization that eliminates unnecessary allocations if the object is proven to be immutable.
- This optimization is used internally in the MoonBit compiler.
]

#let monoid-hash = entry(
    tl: [*Monoid Hash* #link("https://github.com/waterlens/monoid-hash/blob/fcf87700c1145429097045e3a29cc2db8230ae22/crc32c.h#L76")[#fa-link()]],
    tr: [*Apr. 2025*],
    bl: [_Performance-critical part of an incremental computation research project_],
    br: [_C, AArch64_]
)[
- Extended fast-crc32 implementation with ARMv8's `pmull` instruction to accelerate monoid combination.
  Specifically, this speeds up the multiplication of two bit-reflected polynomials over the $"GF"(2^32)$ field.
]

#if short_projects {
  mmm
  syoc
  quickaml
  mlscript
  apple-uarch-bench
} else {
  calocom
  syoc
  mlscript
  quickaml
  mmm
  rmatch
  apple-uarch-bench
  sib-optimization
  monoid-hash
}

== Skills

#let misc = [
*Misc:*
- Proficient with git version control and collaborative work on common open source platforms like Github and GitLab. Familiar with CI/CD processes.
- Proficient in document writing with Markdown, Typst, LaTeX.
- Familiar with macOS and Linux operating systems. Proficient with command-line tools on these platforms.
- Proficient with debugging tools like gdb and lldb.
]

#let misc-short = [
*Misc:*
- Proficient with collaborative development using git, GitHub/GitLab; familiar with CI/CD processes.
- Familiar with macOS/Linux systems and command-line tools; proficient with gdb/lldb debugging.
]

#let pl-side = [
*Programming Languages:* Proficient in multiple programming languages, including but not limited to:
- Most frequently used: OCaml, Rust, C/C++, Scala
- Familiar: Java, Python, CUDA C/C++
- Experienced with: C\#, TypeScript, JavaScript, Ruby, Haskell, Lua, Verilog, Scheme, etc.
]

#let pl-side-short = [
*Programming Languages:*
- Proficient: OCaml, Rust, C/C++, Scala; Familiar: Java, Python, C\#, TypeScript, etc.
]

#let plt-side = [
*Programming Language Theory:*
- Formal verification with Coq.
- Read books on programming languages, including:
  *Software Foundations*;
  *Types and Programming Languages*;
  *Practical Foundations for Programming Languages*;
  *Essentials of Programming Languages*.
- Familiar with constraint-based type inference, bidirectional type inference, and rich knowledge of type systems.
]

#let plt-side-short = [
*Programming Language Theory:*
- Formal verification with Coq, familiar with type system theory.
- Read classic PLT books, with rich knowledge of type inference and semantic analysis.
]

#let compiler-side = [
*Compilers:*
- Experienced in using and modifying common *SSA*-based compiler frameworks such as *LLVM (MLIR)*, Cranelift, etc.
- Proficient in compiling various programming paradigms, including imperative, functional, object-oriented, and dynamic languages.
- Familiar with compiler optimizations such as *sparse conditional constant propagation*, *control flow simplification*, *dead and unreachable code elimination*, *redundancy elimination*, etc.
- Skilled in micro-architecture-level performance tuning using *profiling* tools (e.g., `perf`, `VTune`, `flamegraph`).
- Familiar with multiple *register allocation* algorithms (iterated register coalescing, linear scan, etc.) and *garbage collection* algorithms (mark-sweep, mark-compact, tri-color incremental, generational, etc.).
- Deep understanding of interpreter and runtime system design and implementation, including various threading techniques, stack-based and register-based VMs, memory management, runtime object representation, and *context switching* architectures.
]

#let compiler-side-short = [
*Compilers:*
- Proficient with SSA compiler frameworks like LLVM, Cranelift; expert in compiling various programming paradigms.
- Familiar with compiler optimizations, performance analysis tools; master register allocation and garbage collection algorithms.
- Deep understanding of interpreter, runtime system design and implementation, including VMs, memory management, etc.
]

#let arch-side = [
*Architecture:*
#if role == GPU-COMPILER or role == GAME-COMPILER [
- Designed and implemented a *Tomasulo-based out-of-order RISC-V CPU*.
  Deep understanding of the differences and trade-offs between *GPU* and *CPU* architectures.
- Familiar with instruction sets of x86-64, AArch64, RISC-V, etc. Proficient with SSE, AVX, Neon, etc. SIMD instruction sets.
- Proficient in micro-architecture-level performance analysis based on documentation from CPU vendors.
] else [
- Designed and implemented a *Tomasulo-based out-of-order RISC-V CPU*.
- Familiar with instruction sets of x86-64, AArch64, RISC-V, etc. Proficient with SSE, AVX, Neon, etc. SIMD instruction sets.
- Proficient in micro-architecture-level performance analysis based on documentation from CPU vendors.
]
]

#let arch-side-short = [
*Architecture:*
- Designed and implemented a Tomasulo-based out-of-order RISC-V CPU; proficient in micro-architectural performance analysis.
- Familiar with instruction sets of x86-64, AArch64, RISC-V, etc.; proficient with SSE, AVX, Neon SIMD instruction sets.
]

#let os-side = [
*Operating Systems:*
- Deep understanding of Linux kernel's *thread and process models*, as well as their *context switching*, *communication* (pipes, message queues, shared memory, semaphores), and *synchronization* (mutexes, read-write locks, condition variables) mechanisms.
- Familiar with *virtual memory* mechanisms, paging principles, and MMU functions.
- Familiar with Linux *I/O models* (blocking, non-blocking, multiplexing epoll, asynchronous), understanding their principles and applications in high-concurrency scenarios.
- Mastery of common *process/thread scheduling algorithms* (round-robin, multi-level feedback queue, etc.), understanding their impact on system performance.
]

#let os-side-short = [
*Operating Systems:*
- Deep understanding of Linux kernel's thread and process models, familiar with context switching, communication, and synchronization mechanisms.
- Familiar with virtual memory mechanisms, I/O models, and process/thread scheduling algorithms.
]

#let game-side = [
*Game Engines:*
- Deep understanding of C++, C\#, Lua, etc. in game engine development, familiar with memory management, performance optimization, and cross-platform features.
- Familiar with the runtime mechanisms of scripting backends such as IL2CPP, Mono, LuaJIT, xLua, and their compilation optimizations and dynamic script support in game development.
- Familiar with game development build processes and cross-platform execution optimization methods.
]

#let game-side-short = [
*Game Engines:*
- Deep understanding of C++, C\#, Lua in game engine development, familiar with memory management and performance optimization.
- Familiar with scripting backend frameworks like IL2CPP, Mono, LuaJIT, xLua, and game development build processes.
]

#if short_skills {
  if role == NORMAL-DEV {
    pl-side-short
    compiler-side-short
    arch-side-short
    os-side-short
  } else if role == CPU-COMPILER-PL or role == ALL-COMPILER {
    pl-side-short
    compiler-side-short
    arch-side-short
    plt-side-short
  } else if role == GPU-COMPILER {
    pl-side-short
    arch-side-short
    compiler-side-short
  } else if role == QUANT-DEV {
    pl-side-short
    compiler-side-short
    arch-side-short
    misc-short
  } else if role == GAME-COMPILER {
    pl-side-short
    game-side-short
    compiler-side-short
    os-side-short
    arch-side-short
  }
} else {
  if role == NORMAL-DEV {
    pl-side
    compiler-side
    arch-side
    os-side
  } else if role == CPU-COMPILER-PL or role == ALL-COMPILER {
    pl-side
    compiler-side
    arch-side
    plt-side
  } else if role == GPU-COMPILER {
    pl-side
    arch-side
    compiler-side
  } else if role == QUANT-DEV {
    pl-side
    compiler-side
    arch-side
    misc
  } else if role == GAME-COMPILER {
    pl-side
    game-side
    compiler-side
    os-side
    arch-side
  }
}

*Languages:*
- Chinese (native), English (good working communication)


== Other Experience

#entry(
    tl: [*Student Volunteer*, _ICFP 2024_],
    tr: [*Sept. 2024*],
)[]

#entry(
    tl: [*Teaching Assistant for C++ Programming*],
    tr: [*Jan. 2024 - June 2024*],
)[
  - Designed lab sessions to help students understand pointers and references in C++.
]

#entry(
    tl: [*Remote Research Intern*, _Advisor: Yizhou Zhang_],
    tr: [*Sept. 2022 - Jan. 2023*],
)[
  - Studied the implementation and semantics of *lexical algebraic effects*, a hot topic in programming language research.
]

#entry(
    tl: [*Undergraduate Teaching Assistant*, _Principles of Programming Languages_],
    tr: [*Sept. 2022 - Jan. 2023*],
)[
  - Designed OCaml-based labs to help students understand the Hindley-Milner *type inference* algorithm.
  - Set homework to help students learn and use *evaluation-context-style operational semantics* and *delimited continuations*.
  - Designed and implemented an online judge system for the course, utilizing GitHub's CI/CD system and asymmetric encryption.
]

#align(right + bottom, text(fill: gray)[Last Updated: Sept. 2025])