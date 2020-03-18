#!/usr/bin/gnuplot
set term pdfcairo
set xdata time
set timefmt "%d.%m.%y"
set xlabel 'Datum'
set ylabel 'Fälle'
set key top left
set format x "%d.%m"
set grid
unset mxtics

set output 'germany-linear.pdf'
plot 'germany.txt' using 1:2 title 'Deutschland'

set logscale y
set output 'germany-log.pdf'

plot 'germany.txt' using 1:2 title 'Deutschland'