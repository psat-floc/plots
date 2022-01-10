set terminal cairolatex pdf
set output "figures/results/nb_cohorts_16_20.tex"

# set terminal png
# set output "img.png"

set datafile separator ","

set key bottom right
set grid
set mxtics 5
set mytics 5

set ytics nomirror
set y2tics

set xlabel "Year"
set ylabel "Number of cohorts (16 bits)"
set y2label "Number of cohorts (20 bits)"

set title "Number of cohorts per year"

plot '../16_bits/nb_cohorts_simhash_16.csv' using 1:2 axes x1y1 w lp title "16 bits SimHash", \
     '../16_bits/nb_cohorts_sortinglsh_16.csv' using 1:2 axes x1y1 w lp title "16 bits SortingLSH", \
     '../20_bits/nb_cohorts_simhash_20.csv' using 1:2 axes x1y2 w lp title "20 bits SimHash", \
     '../20_bits/nb_cohorts_sortinglsh_20.csv' using 1:2 axes x1y2 w lp title "20 bits SortingLSH"

unset y2tics
set ytics mirror
