set datafile separator ','

set xdata time # tells gnuplot the x axis is time data
set timefmt "%Y-%m-%dT%H:%M:%S" # specify our time string format
set format x "%Y  %m-%d %H:%M" # otherwise it will show only MM:SS

set key autotitle columnhead # use the first line as title
set ylabel "Temp" # label for the Y axis
set xlabel 'Date' # label for the X axis

set style line 100 lt 1 lc rgb "grey" lw 0.5 # linestyle for the grid
set grid ls 100 # enable grid with specific linestyle

set xtics rotate # rotate labels on the x axis

plot 'ninety-eight.csv' using 1:2 with lines