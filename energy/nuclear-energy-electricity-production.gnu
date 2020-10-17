set datafile separator ','
set xlabel "Year"
set ylabel "%"
set key left top
set terminal pngcairo size 1200, 800
set output "nuclear-energy-electricity-production.png"
file = "nuclear-energy-electricity-production.csv"
plot file using 3:((stringcolumn(1) eq "France")?$4:1/0) with linespoints title "France", \
     file using 3:((stringcolumn(1) eq "United States")?$4:1/0) with linespoints title "United States", \
     file using 3:((stringcolumn(1) eq "Germany")?$4:1/0) with linespoints title "Germany", \
     file using 3:((stringcolumn(1) eq "Japan")?$4:1/0) with linespoints title "Japan"
