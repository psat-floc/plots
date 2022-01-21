set terminal cairolatex pdf
set output "figures/results/size_cohorts_sim.tex"

# set terminal png
# set output "img.png"

set datafile separator ","

set key top right
set grid
set mxtics 5
set mytics 5

set xlabel "Year"
set ylabel "Average number of users"
set logscale y

set title "Average number of users per cohort (SimHash)"

plot '../8_bits/size_cohorts_simhash_8.csv' using 1:2 w lp title "8 bits", \
     '../12_bits/size_cohorts_simhash_12.csv' using 1:2 w lp title "12 bits", \
     '../16_bits/size_cohorts_simhash_16.csv' using 1:2 w lp title "16 bits", \
     '../20_bits/size_cohorts_simhash_20.csv' using 1:2 w lp title "20 bits"

reset
