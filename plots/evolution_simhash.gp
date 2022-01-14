set terminal cairolatex pdf
set output "figures/results/evolution_sim.tex"

# set terminal png
# set output "img.png"

set datafile separator ","

set grid ztics xtics ytics
set xtics (8,12,16,20)



set xlabel "Nb. of bits"
set ylabel "Years"
set zlabel "Evolution (\\%)"
set ylabel offset 3.2,-1.2
set zlabel offset 3.8,6.8

set key top left
set title "Evolution of cohorts (SimHash)"

splot '../8_bits/all_simhash_8_fingerprint_evolution_plot.csv' using (8):(1995 + column(0)):2 w lp title "8 bits", \
      '../12_bits/all_simhash_12_fingerprint_evolution_plot.csv' using (12):(1995 + column(0)):2 w lp title "12 bits", \
      '../16_bits/all_simhash_16_fingerprint_evolution_plot.csv' using (16):(1995 + column(0)):2 w lp title "16 bits", \
      '../20_bits/all_simhash_20_fingerprint_evolution_plot.csv' using (20):(1995 + column(0)):2 w lp title "20 bits"

unset zlabel
unset grid
reset
