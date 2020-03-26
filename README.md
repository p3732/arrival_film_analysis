# Film Analysis: Depiction of Free Will in Denis Villeneuve's "Arrival"
This repository contains all sources for the seminar text.
The Markdown sources can be found in the `src/` folder.

You are very welcome to use this as a template.
It itself is based on [this template](https://github.com/fsphys/thesisvorlage-markdown).

## Creating the PDF
The following packages are required:

* make
* [Tex-Live](https://tug.org/texlive/)
* [Pandoc](https://pandoc.org)
* [pandoc-crossref](https://github.com/lierdakil/pandoc-crossref)
* [pandoc-citeproc](https://github.com/jgm/pandoc-citeproc)

For Archlinux that means:

`sudo pacman -S texlive-most pandoc pandoc-crossref pandoc-citeproc make`

If all dependencies are installed, a simple `make` in the repository folder will
create the `seminar.pdf` file.
