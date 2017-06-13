#! /usr/bin/perl
print `rm -f *.aux`;
print `rm -f *.dvi`;
print `rm -f *.idx`;
print `rm -f *.log`;
print `rm -f *.toc`;
print `rm -f *~`;

# start version @ 09/07/2011


$FileName ="EIC-BGS-Proposal-main";

system("rm -f $FileName.dvi $FileName.avi $FileName.log $FileName.spl $FileName.ps  $FileName.toc *.bib *.blg *.bbl *.xml");
system("rm -f $FileName.dvi  $FileName.pdf $FileName.ps");
system("pdflatex $FileName.tex");
system("bibtex $FileName");
system("pdflatex $FileName.tex");
system("pdflatex $FileName.tex");
system("rm -f $FileName.dvi $FileName.avi $FileName.log $FileName.spl $FileName.ps  $FileName.toc *.bib *.blg *.bbl *.xml");
