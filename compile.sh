obj=$1
reset
rm *aux
rm *log
rm *run.xml
rm *bbl
rm *-blx.bib
rm *blg
rm *.lof
rm *.lot
rm *.toc
rm *.glg *.glo *.gls *.ist
compiler=xelatex
$compiler $obj
if [[ "$obj"=="kopsavilkums" ]];
then
    makeglossaries $obj
fi
bibtex $obj
$compiler $obj
$compiler $obj
