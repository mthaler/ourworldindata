set datafile separator ','
set title "Government spending, 1880 to 2011"
set xlabel "Year"
set ylabel "TWh"
set key left top
set terminal pngcairo size 1200, 800
set output "historical-gov-spending-gdp.png"
file = "historical-gov-spending-gdp.csv"
plot file using 3:((stringcolumn(1) eq "United Kingdom")?$4:1/0) with linespoints title "United Kingdom", \
     file using 3:((stringcolumn(1) eq "Germany")?$4:1/0) with linespoints title "Germany", \
     file using 3:((stringcolumn(1) eq "United States")?$4:1/0) with linespoints title "United States", \
     file using 3:((stringcolumn(1) eq "Japan")?$4:1/0) with linespoints title "Japan"
