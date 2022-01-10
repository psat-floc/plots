set terminal cairolatex pdf
set output "figures/results/uniq_sim_simple.tex"

# set terminal png
# set output "img.png"

set grid
set mxtics 5
set mytics 5

set xlabel "Years count"
set ylabel "Uniqueness (\\%)"

set key top left
set title "Uniqueness of cohorts (SimHash, no fingerprinting)"

plot '../8_bits/all_simhash_8_plot.csv' with linespoints title "8 bits", \
      '../12_bits/all_simhash_12_plot.csv' with linespoints title "12 bits", \
      '../16_bits/all_simhash_16_plot.csv' with linespoints title "16 bits", \
      '../20_bits/all_simhash_20_plot.csv' with linespoints title "20 bits"

