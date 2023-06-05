# Resume Template in Typst

The template is inspired by [Matchy's template](https://github.com/matchy233/typst-chi-cv-template) and adjusted with my resume style.

## Usage

### Using Typst web app

Upload `template.typ`, `fa.typ`, `resume.typ` and `fonts/*` to [Typst](https://typst.app/), and then you can edit the resume.

### Locally

Assume that you have installed `typst` cli already and it's in your `$PATH`.

```bash
git clone https://github.com/waterlens/resume.git
cd resume
typst --font-path ./fonts compile resume.typ resume.pdf
```