set datafile separator ','
set xlabel "Year"
set ylabel "TWh"
set key left top
set terminal pngcairo size 1200, 800
set output "global-primary-energy.png"
plot for [col=2:10] 'global-primary-energy.csv' using 1:col with lines title columnheader
