build-cn:
  typst compile --creation-timestamp 0 --font-path ./fonts/ resume-cn.typ resume-cn.pdf

build-en:
  typst compile --creation-timestamp 0 --font-path ./fonts/ resume.typ resume.pdf

build: build-cn build-en

pack: build
  zip resume.zip resume.pdf resume-cn.pdf
