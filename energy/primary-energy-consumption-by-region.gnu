set datafile separator ','
set xlabel "Year"
set ylabel "TWh"
set key left top
set terminal pngcairo size 1200, 800
set output "primary-energy-consumption-by-region.png"
file = "primary-energy-consumption-by-region.csv"
plot file using 3:((stringcolumn(1) eq "Africa")?$4:1/0) with linespoints title "Africa", \
     file using 3:((stringcolumn(1) eq "Asia Pacific")?$4:1/0) with linespoints title "Asia Pacific", \
     file using 3:((stringcolumn(1) eq "Europe")?$4:1/0) with linespoints title "Europe", \
     file using 3:((stringcolumn(1) eq "North America")?$4:1/0) with linespoints title "North America", \
     file using 3:((stringcolumn(1) eq "South & Central America")?$4:1/0) with linespoints title "South & Central America", \
     file using 3:((stringcolumn(1) eq "Middle East")?$4:1/0) with linespoints title "Middle East"
