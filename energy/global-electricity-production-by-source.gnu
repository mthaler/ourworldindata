set datafile separator ','
set xlabel "Year"
set ylabel "%"
set key below
set terminal pngcairo size 1200, 800
set output "global-electricity-production-by-source.png"
file = "global-electricity-production-by-source.csv"
plot file using 1:($2+$3) title 'Fossil fuels' with filledcurves x1, \
     file using 1:2 title 'Nuclear + Renewable' with filledcurves x1
