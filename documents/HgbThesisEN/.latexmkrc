$pdf_mode = 1;            # use pdflatex
$bibtex_use = 2;          # run biber when needed, delete .bbl on clean
$synctex = 1;             # generate .synctex.gz for SyncTeX (Skim)
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$max_repeat = 5;

# All intermediate files go into build/ — keeps source dir clean
$out_dir = 'build';

# After a successful build, copy PDF + synctex back to source dir so Skim
# can watch it alongside the .tex files
$success_cmd = 'cp build/main.pdf main.pdf';

# Prefer the repo's dev packages over the TeX Live bundled versions
ensure_path('TEXINPUTS', '../../dev/texmf/tex/latex/hagenberg-thesis//');
ensure_path('BIBINPUTS', '../../dev/texmf/bibtex/bib//');
