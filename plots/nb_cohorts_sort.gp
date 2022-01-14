set terminal cairolatex pdf
set output "figures/results/nb_cohorts_sort.tex"

# set terminal png
# set output "img.png"

set datafile separator ","

set key bottom right
set grid
set mxtics 5
set mytics 5

set xlabel "Year"
set ylabel "Number of cohorts"

set title "Number of cohorts per year (SortingLSH)"

plot '../8_bits/nb_cohorts_sortinglsh_8_keep_cohort.csv' using 1:2 w lp title "8 bits", \
     '../12_bits/nb_cohorts_sortinglsh_12_keep_cohort.csv' using 1:2 w lp title "12 bits", \
     '../16_bits/nb_cohorts_sortinglsh_16_keep_cohort.csv' using 1:2 w lp title "16 bits", \
     '../20_bits/nb_cohorts_sortinglsh_20_keep_cohort.csv' using 1:2 w lp title "20 bits"

