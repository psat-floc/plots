set terminal cairolatex pdf
set output "figures/results/nb_cohorts_8_12.tex"

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
set ylabel "Number of cohorts (8 bits)"
set y2label "Number of cohorts (12 bits)"

set title "Number of cohorts per year"

plot '../8_bits/nb_cohorts_simhash_8.csv' using 1:2 axes x1y1 w lp title "8 bits SimHash", \
     '../8_bits/nb_cohorts_sortinglsh_8.csv' using 1:2 axes x1y1 w lp title "8 bits SortingLSH", \
     '../12_bits/nb_cohorts_simhash_12.csv' using 1:2 axes x1y2 w lp title "12 bits SimHash", \
     '../12_bits/nb_cohorts_sortinglsh_12.csv' using 1:2 axes x1y2 w lp title "12 bits SortingLSH"

unset y2tics
set ytics mirror
