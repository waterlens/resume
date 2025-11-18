#import "template.typ": *
#import "option.typ": *

#show: it => resume(it, lang: "zh-cn")

#let desensitization = false

#let NORMAL-DEV = "normal-dev"
#let CPU-COMPILER-PL = "cpu-compiler-pl"
#let GPU-COMPILER = "gpu-compiler"
#let GAME-COMPILER = "game-compiler"
#let GAME-DEV = "game-dev"
#let QUANT-DEV = "quant-dev"
#let ALL-COMPILER = "all-compiler"

#let role = NORMAL-DEV
#let short_projects = true
#let short_skills = true

#if desensitization [
  = ⬛⬛⬛
] else [
  = 杨汝清
]

#let email = if desensitization {
  "waterlens@waterlens.moe"
} else {
  "yangrq.lambda@gmail.com"
}

#let github = "github.com/waterlens"

#let blog = if desensitization {
  "waterlens.moe/zh/posts"
} else {
  "yangrq.org/zh/posts"
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
  
== 个人概述

凭借在编译器、系统软件与性能优化领域的深厚经验，我渴望在系统开发领域应用我的技术专长。
我热衷于通过微架构级调优、高效的内存管理、以及定制化编译技术来解决低延迟和高吞吐量系统的挑战，为复杂的计算任务提供极致的性能。
]

#let pl-side-interest = [

== 个人概述

设计和实现具有新编程范式的高性能编程语言，
在编译器中找寻编译优化的机会，
为用户提供更强的静态安全保障，是我长久以来的追求。

]

#let gpu-side-interest = [

== 个人概述

设计和实现具有新编程范式的高性能并行编程语言、
在编译器中找寻编译优化的机会、
充分利用计算硬件（CPU、GPU、NPU）的全部性能、
为用户提供更强的静态安全保障，是我长久以来的追求。
]

#let game-side-interest = [

== 个人概述

凭借在编程语言与编译器领域的深厚积累，我专注于开发高性能编译系统与脚本语言，以支持游戏开发等复杂场景的高效实现。
受 Epic Games 为 Unreal Engine 5 打造 Verse 语言的启发，我致力于融合类型安全、性能优化与动态脚本支持，
设计专为游戏开发优化的跨平台编程语言与编译工具链，显著提升运行时性能与开发效率。

]

#let quant-side-interest = [

== 个人概述

凭借在编译器、系统软件与性能优化领域的深厚经验，我渴望在量化交易领域应用我的技术专长。
我热衷于通过微架构级调优、高效的内存管理、以及定制化编译技术来解决超低延迟和高吞吐量系统的挑战，为复杂的计算任务提供极致的性能。
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

== 教育背景
#entry(
    tl: [香港科技大学],
    tr: [*2023年9月 - 2026年1月（预计）*],
    bl: [*研究型硕士，全额奖学金 (MPhil)*，_计算机科学与工程_，导师：Lionel Parreaux],
    br: [_香港特别行政区_],
)[
  研究方向：函数式编程语言的*编译优化*。
]

#entry(
    tl: [浙江大学],
    tr: [*2019年9月 - 2023年6月*],
    bl: [*工学学士 (BEng)*，_计算机科学与技术_，GPA：3.84/4.0],
    br: [_杭州_],
)[
  取得 A+/A 成绩的课程：编译原理、计算机体系结构、编程语言原理，操作系统等。
]

== 学术成果

#entry(
    tl: [*Smart Inlining through Function Splitting*，_PLDI SRC 2025_],
    tr: [*2025年4月*],
)[]

== 实习经历

#entry(
    tl: [*编程语言工具开发实习*，_IDEA 研究院基础软件部门_],
    tr: [*2025年3月 - 2025年6月*],
)[
  - 实现了一项OCaml优化，提升了MoonBit编译器的性能。
  - 通过使用`tcc`编译器编译生成的C源代码，优化了MoonBit测试的本地后端编译速度，  
    包括重构构建系统、修复`tcc`编译器中的错误，以及支持Linux、macOS和Windows的运行时库跨平台兼容性。
  - 为工具链添加了基准测试功能，支持统计分析和可视化。
]

== 项目经历

#let calocom = entry(
    tl: [*Calocom* #link("https://github.com/permui/calocom")[#fa-link()]],
    tr: [*2022年4月 - 2022年6月*],
    bl: [_《编译原理》课程的团队项目_],
    br: [_Rust_]
)[
- 开发了一种功能丰富的编程语言，支持*代数数据类型*、高阶函数和模式匹配。
- 负责设计*类型系统*、类型化抽象语法树（AST）、对象内存表示、名称修饰风格，以及用于去糖化和必要转换的中间表示（IR）。
- 领导项目开发，实现了除词法分析和语法分析外的几乎所有组件，包括语法去糖化、*语义检查*、*闭包转换*、基于*LLVM*的代码生成（使用Rust库_inkwell_）。  
  同时，使用不安全Rust编写了标准库（字符串、向量等）和*运行时*（对象分配和程序入口）。
- 获得班级最佳课程项目。
]

#let syoc = entry(
    tl: [*SyOC* #link("https://github.com/waterlens/syoc")[#fa-link()]],
    tr: [*2022年3月 - 2022年8月*],
    bl: [_团队合作项目_],
    br: [_C++, Python, ARM_]
)[
- 旨在学习编译器优化技术并参加毕昇杯编译器大赛。  
  从零开始开发，浙江大学首个进入决赛的团队（仅两人）。
- 领导项目开发，设计了用*现代C++*编写的*编译器框架*，用于优化转换，以及基于*SSA*的中间表示，支持*定义-使用*和*使用-定义*链。
- 实现了词法分析器、递归下降解析器、*mem2reg* 变换（包括*立即支配者分析*和*迭代支配边界分析*以构建SSA）、死代码消除和常量传播。
- 编写Python脚本，比较优化后程序与gcc或其他编译器的性能。
]

#let mlscript = entry(
    tl: [*MLscript* #link("https://github.com/waterlens/mlscript")[#fa-link()]],
    tr: [*2023年4月 - 至今*],
    bl: [_实验室联合项目_],
    br: [_Scala, C++_]
)[
- 设计了基于*ANF*的中间表示，扩展了连接点（join points）。
- 实现了基于控制流分析的*智能内联器*，用于决定内联时机，并利用*函数分割*技术减少内联导致的代码重复。  
  同时负责C++后端的实现，包括对象的通用内存表示、*无装箱值的优化算术运算*和基于*引用计数*的内存管理。
]

#let quickaml = entry(
    tl: [*QuicKaml* #link("https://github.com/waterlens/quickaml")[#fa-link()]],
    tr: [*2023年6月 - 2024年1月*],
    bl: [_个人兴趣项目_],
    br: [_C_]
)[
- 为一单态语言实现了基于寄存器的虚拟机解释器，并进行了许多低级优化。
- 使用补丁版本的LLVM，为解释器中的VM指令处理生成*保证尾调用*的代码。
- 尝试了多种技术来提高解释器的性能，包括：*操作数重排*，允许更高效的符号扩展；
  *部分寄存器解码*，减少x86-64架构上的无用移位；基于非对齐内存访问或移位和掩码的指令获取；*预解码*，在指令分派之前利用CPU流水线的并发能力进行解码掩盖延迟。
]

#let mmm = entry(
    tl: [*MMM* #link("https://github.com/Mini-Moonbit-Machine/mmm")[#fa-link()]],
    tr: [*2024年9月 - 2024年11月*],
    bl: [_团队合作的MGPIC大赛项目_],
    br: [_MoonBit, RISC-V, WebAssembly_]
)[
- 领导开发并设计了基于MoonBit的优化编译器框架，支持_Mini MoonBit_语言，包含JS、*RISC-V*和*WASM*后端。
- 实现了大赛所需的所有核心优化，包括*保证尾递归消除*、基于*寄存器压力*的*选择性λ提升*、*基本块拉直*、死代码消除、*局部值编号*、*公共子表达式消除*、*循环不变量代码移动*、*跳转表优化*、*标量替换*和快速堆分配。
- 编写了JavaScript和RISC-V后端的代码生成器。为避免栈溢出，在JavaScript后端设计了*选择性CPS转换*和*自动闭包化*；在RISC-V后端，移植了Cranelift的*树模式覆盖指令选择器*，并实现了*弦图着色寄存器分配器*。
- 扩展语言功能，支持参数多态（*泛型*）、特设多态（通过字典传递实现的*类型类*）和用户定义操作符。
]

#let rmatch = entry(
    tl: [*RMatch* #link("https://github.com/waterlens/rmatch")[#fa-link()]],
    tr: [*2021年9月 - 2021年10月*],
    bl: [_个人兴趣项目_],
    br: [_C++_]
)[
- 解析*正则表达式*并生成基于NFA的*虚拟机*字节码，随后使用C++库_xbyak_将字节码*即时编译*为x86-64本地机器指令。
]

#let apple-uarch-bench = entry(
    tl: [*Apple μArch Bench* #link("https://github.com/waterlens/apple-uarch-bench")[#fa-link()]],
    tr: [*2024年4月*],
    bl: [_兴趣项目_],
    br: [_C_]
)[
- 探索Apple Silicon的*微架构*特性，使用*硬件性能计数器*进行分析。
]

#let sib-optimization = entry(
    tl: [*OCaml的SIB优化* #link("https://github.com/waterlens/ocaml/pull/1")[#fa-link()]],
    tr: [*2025年5月 - 2025年6月*],
    bl: [_*共享不可变块*优化_],
    br: [_OCaml_]
)[
- 函数式编程语言常对现有数据结构进行模式匹配，即使新对象与旧对象相同，也常会分配新对象。  
  我实现了一种可靠的优化，若对象被证明为不可变，则消除不必要的分配。
- 该优化已在MoonBit编译器内部使用。
]

#let monoid-hash = entry(
    tl: [*单子哈希* #link("https://github.com/waterlens/monoid-hash/blob/fcf87700c1145429097045e3a29cc2db8230ae22/crc32c.h#L76")[#fa-link()]],
    tr: [*2025年4月*],
    bl: [_某增量计算研究项目的性能关键部分_],
    br: [_C, AArch64_]
)[
- 使用ARMv8的`pmull`指令扩展了fast-crc32实现，加速单子组合。  
  具体为加速在$"GF"(2^32)$域上两个位反转多项式的乘法运算。
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


== 技能

#let misc = [
*杂项：*
- 熟练掌握 git 版本控制和常见开源平台 Github 与 GitLab 的协作工作。熟悉 CI/CD 流程。
- 熟练使用 Markdown, Typst, LaTeX 进行文档编写。
- 熟悉 macOS 和 Linux 操作系统。熟练使用这些平台下的命令行工具。
- 熟练使用 gdb 和 lldb 等调试工具。
]

#let misc-short = [
*杂项：*
- 熟练使用 git、GitHub/GitLab 协作开发，熟悉 CI/CD 流程。
- 熟悉 macOS/Linux 系统及命令行工具，熟练使用 gdb/lldb 调试。
]

#let pl-side = [
*编程语言：* 通晓多种编程语言，包括但不限于：
- 最常用：OCaml、Rust、C/C++、Scala
- 熟悉：Java、Python、CUDA C/C++
- 有使用经验：C\#、TypeScript、JavaScript、Ruby、Haskell、Lua、Verilog、Scheme等
]

#let pl-side-short = [
*编程语言：*
- 精通：OCaml、Rust、C/C++、Scala；熟悉：Java、Python、C\#、TypeScript 等
]

#let plt-side = [
*编程语言理论：*
- 使用Coq进行形式化验证。
- 阅读过编程语言理论书籍，包括：
  *Software Foundations*;
  *Types and Programming Languages*;
  *Practical Foundations for Programming Languages*;
  *Essentials of Programming Languages*.
- 熟悉基于约束的类型推断、双向类型推断等，具备丰富的类型系统知识。
]

#let plt-side-short = [
*编程语言理论：*
- 使用Coq进行形式化验证，熟悉类型系统理论
- 阅读过经典PLT书籍，具备丰富的类型推断和语义分析知识
]

#let compiler-side = [
*编译器：*
- 熟练使用和修改常见基于 *SSA* 的编译器框架，如*LLVM (MLIR)*、Cranelift等。
- 精通多种编程语言范式的编译，包括命令式、函数式、面向对象和动态语言。
- 熟悉*稀疏条件常量传播*、*控制流化简*、*死代码消除*和*不可达代码消除*、*冗余消除*等编译优化。
- 熟练使用*性能分析*工具（如`perf`、`VTune`、`flamegraph`）进行微架构级性能调优。
- 熟悉多种*寄存器分配*算法（迭代寄存器合并、线性扫描等）和*垃圾回收*算法（标记-清除、标记-压缩、三色增量、分代回收等）。
- 深入了解解释器和运行时系统设计与实现，包括各种 threading 技术、栈式 VM 和寄存器式 VM、内存管理、运行时对象表示、*上下文切换*等架构的指令集。

]

#let compiler-side-short = [
*编译器：*
- 熟练使用LLVM、Cranelift等SSA编译器框架，精通多种编程语言范式编译
- 熟悉编译优化、性能分析工具，掌握寄存器分配和垃圾回收算法
- 深入了解解释器、运行时系统设计与实现，包括VM、内存管理等
]

#let arch-side = [
*体系结构：*
#if role == GPU-COMPILER or role == GAME-COMPILER [
- 设计和实现过*基于 Tomasulo 算法的乱序 RISC-V 架构 CPU*。
  充分理解 *GPU* 架构和 *CPU* 架构设计上的异同之处与设计取舍。
- 熟悉 x86-64、AArch64、RISC-V 等 CPU 架构的指令集。熟练使用 SSE, AVX, Neon 等 SIMD 指令集。
- 熟练掌握根据 CPU 厂商提供的文档进行微架构级别的性能分析。
] else [
- 设计和实现过*基于 Tomasulo 算法的乱序 RISC-V 架构 CPU*。
- 熟悉 x86-64、AArch64、RISC-V 等 CPU 架构的指令集。熟练使用 SSE, AVX, Neon 等 SIMD 指令集。
- 熟练掌握根据 CPU 厂商提供的文档进行微架构级别的性能分析。 
]
]

#let arch-side-short = [
*体系结构：*
- 设计和实现过基于Tomasulo算法的乱序RISC-V架构CPU；熟练掌握微架构级性能分析
- 熟悉x86-64、AArch64、RISC-V等CPU架构指令集，熟练使用SSE、AVX、Neon等SIMD指令集
]

#let os-side = [
// *操作系统：*
// - 深入理解 Linux 内核的*线程、进程模型*，以及它们的*上下文切换*、*通信*（管道、消息队列、共享内存、信号量）、*同步*（互斥锁、读写锁、条件变量）机制。
// - 熟悉*虚拟内存*机制、分页原理及 MMU 作用。
// - 熟悉 Linux *I/O模型*（阻塞、非阻塞、多路复用epoll、异步），理解其原理及在高并发场景下的应用。
// - 掌握常见*进程/线程调度算法*（时间片轮转、多级反馈队列等），理解其对系统性能的影响。
]

#let os-side-short = [
*操作系统：*
- 深入理解Linux内核的线程、进程模型，熟悉上下文切换、通信、同步机制
- 熟悉虚拟内存机制、I/O模型，掌握进程/线程调度算法
]

#let game-side = [
*游戏引擎：*
- 深入理解 C++、C\#、Lua 等编程语言在游戏引擎开发中的应用，熟悉其内存管理、性能优化及跨平台特性。
- 熟悉 IL2CPP、Mono、LuaJIT、xLua 等*脚本*后端框架的运行机制，了解其在游戏开发中的编译优化与动态脚本支持。
- 熟悉游戏开发构建流程与跨平台执行的优化方法。

]

#let game-side-short = [
*游戏引擎：*
- 深入理解C++、C\#、Lua在游戏引擎开发中的应用，熟悉内存管理、性能优化
- 熟悉IL2CPP、Mono、LuaJIT、xLua等脚本后端框架，了解游戏开发构建流程
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

*语言能力：*
- 中文（母语），英语（良好的工作沟通能力）


== 其他实践经历

#entry(
    tl: [*ICFP 2024学生志愿者*],
    tr: [*2024年9月*],
)[]

#entry(
    tl: [*助教，C++编程*],
    tr: [*2024年1月 - 2024年6月*],
)[
  - 设计了帮助学生理解C++中指针和引用的实验课程。
]

#entry(
    tl: [*远程研究实习*，_导师：张屹洲_],
    tr: [*2022年9月 - 2023年1月*],
)[
  - 研究了*词法代数效应*的实现与语义，这是编程语言研究的热门话题。
]

#entry(
    tl: [*助教*，_编程语言原理_],
    tr: [*2022年9月 - 2023年1月*],
)[
  - 设计了基于OCaml的实验，帮助学生理解Hindley-Milner*类型推断*算法。
  - 设置作业，帮助学生学习和使用*基于评估上下文的操作语义*和*定界续体*。
  - 设计并实现了课程的在线评测系统，利用 GitHub 的 CI/CD 系统与非对称加密技术。  
]

#align(right + bottom, text(fill: gray)[最后更新：2025年9月])
