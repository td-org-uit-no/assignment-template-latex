### -- Custom Template --------------------------------------------------------
$ENV{'TEXINPUTS'}='./IEEEtran//:' . $ENV{'TEXINPUTS'}; 
# $ENV{'TEXINPUTS'}='../uit-thesis//:' . $ENV{'TEXINPUTS'}; 

### -- Output options --------------------------------------------------------

$quiet  = 1;
$silent = 1;

# -- Build options -----------------------------------------------------------

# $pdf_mode = 1;       # PDFLaTeX by default
# $aux_dir  = "build"; # Build in this folder...
# $emulate_aux = 1;    # and move PDF in root (`$out_dir`)
# Force reproducible  builds
# Source: https://tex.stackexchange.com/questions/229605
# $pretex    = '\pdfvariable suppressoptionalinfo 512\relax';
# $usepretex = 1;

$max_repeat = 5; # Try 5 times at maximum then give up