#!/usr/bin/gnuplot
set term pdfcairo
set xdata time
set timefmt "%d.%m.%y"
set xlabel 'Datum'
set ylabel 'Fälle'
set key top left
set format x "%d.%m"
set grid xtics ytics 
set mxtics 7

set output 'germany.pdf'
plot 'germany.txt' using 1:2 title 'Deutschland'

set logscale y

day_21_3 = 1584790922
day = 3600 * 24
Delta = day * 13

set xrange [:day_21_3 + 20 * day]
plot 'germany.txt' using 1:2 title 'Deutschland',\
18000 * 10**((x - day_21_3) / Delta) title "T_{10} = 10d"