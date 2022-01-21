set terminal cairolatex pdf
set output "figures/results/evolution_sim.tex"

# set terminal png
# set output "img.png"

set datafile separator ","

set grid ztics xtics ytics

set xlabel "Years"
set ylabel "Evolution (\\%)"
set yrange [70: 100]

set key bottom right
set title "Evolution of cohorts (SimHash, 20 bits)"

plot '../20_bits/all_simhash_20_fingerprint_evolution_plot.csv' using (1995 + column(0)):1 w lp title "People staying in the same cohort", \
      '../20_bits/all_simhash_20_fingerprint_evolution_plot.csv' using (1995 + column(0)):2 w lp title "People staying in the same cohort or joining one"

unset grid
reset
