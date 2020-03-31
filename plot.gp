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
set yrange [1000:]
plot 'germany.txt' using 1:2 title 'Deutschland'

set logscale y

day_21_3 = 1584790922
day = 3600 * 24

T10_days = 15
Delta = T10_days * day
set xrange [:day_21_3 + 20 * day]
set yrange [:100000]
plot 'germany.txt' using 1:2 ps 2 pt 4 title 'Deutschland',\
     18000 * 10**((x - day_21_3) / Delta)\
     title sprintf("T_{10} = %d d, T_{2} = %.1f d", T10_days, T10_days * log(2)/log(10))


unset xrange
unset yrange
unset logscale y
plot 'germany-dead.txt' using 1:2 title 'Tote Deutschland'

set logscale y
plot 'germany-dead.txt' using 1:2 title 'Tote Deutschland'