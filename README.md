# e61 Institute Micronote LaTeX template

This Github repo hosts the LaTeX template for e61 Institute Micronotes.

If you are looking for the research note template, click [here](https://github.com/e61-Institute/research-note-template).

## How to load the template into your Overleaf

1. Download a copy of the template from Github by clicking on the green "Code" button, then "Download ZIP".
2. On the [Overleaf website](https://www.overleaf.com/project), click on "New Project", then "Upload Project".
3. Drag and drop the downloaded Zip file as per the instructions.
4. Change the LaTeX compiler to XeLaTeX, otherwise nothing will compile: click on "Menu" in the top-left corner, go to the "Settings" section, click the drop-down box next to "Compiler", select "XeLaTeX".

## Separating out the main note from the appendices

You should generate separate PDFs for the main body of the micronote and the appendices. This can be done using the `pagesel` package that is conveniently commented out in the template. This package allows you to select which pages of a document to render as a PDF.

How to use:

1. Uncomment the line of the code containing the package `\usepackage[3-6]{pagesel}`.
2. Render the PDF for the main text by selecting the pages, e.g. render pages 1-2 by setting the option `\usepackage[1-2]{pagesel}`.
3. Render the PDF for the appendix by selecting the remaining pages, e.g. `\usepackage[3-6]{pagesel}`.

## Helpful links

Overleaf has a very large library of user guides and documentation for the LaTeX novice. 

* [Learn LaTeX](https://www.overleaf.com/learn)

### References lists

LaTeX uses `.bib` files to store references (see [here](https://www.overleaf.com/learn/how-to/Using_bibliographies_on_Overleaf) for more). These can be prepared manually, but why do things manually when you could automate them. 

If you like, we have access to [Mendeley](https://www.mendeley.com/reference-manager/library/all-references/), which is a reference manager. It is very good. Your Mendeley reference library can then be automatically synced with your Overleaf references for a particular document by following the instructions [here](https://www.overleaf.com/learn/how-to/How_to_link_your_Overleaf_account_to_Mendeley_and_Zotero).
