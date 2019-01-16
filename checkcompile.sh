if [ -f ~/www/latex_test/check.pdf ];
then
    rm ~/www/latex_test/check.pdf
fi
pdflatex check.tex
cp check.pdf ~/www/latex_test