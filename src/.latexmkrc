### -- Search paths --------------------------------------------------------

# TeX search paths
@texinputs = (
    '.',                                        # Current directory
    './Conference-LaTeX-template_10-17-19/',    # IEEE Template dir
    '',                                         # Default search paths
);
$ENV{'TEXINPUTS'}=join(':', @texinputs);

### -- Output options --------------------------------------------------------

#$quiet  = 1;
#$silent = 1;

# -- Build options -----------------------------------------------------------

# PDF engine
#
#$pdf_mode = 0;  # Do not generate a PDF
$pdf_mode = 1;  # Generate PDF using pdflatex
#$pdf_mode = 2;  # Generate PDF from a .ps  file via command in $ps2pdf
#$pdf_mode = 3;  # Generate PDF from a .dvi file via command in $dvi2pdf
#$pdf_mode = 4;  # Generate PDF using lualatex
#$pdf_mode = 5;  # Generate PDF using xelatex

# Bibtex/biber
#
#$bibtex_use = 0;    # Do not use bibtex/biber
#$bibtex_use = 1;    # Use bibtex/biber. On clean, keep .bbl files
$bibtex_use = 1.5;  # Use bibtex/biber. On clean, keep .bbl files if no .bib
#$bibtex_use = 2;    # Use bibtex/biber. On clean, remove .bbl files

# Other options
#
$max_repeat = 5; # Try 5 times at maximum then give up
