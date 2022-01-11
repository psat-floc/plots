set terminal cairolatex pdf
set output "figures/results/diff_uniq_sim.tex"

# set terminal png
# set output "img.png"

set grid
set mxtics 5
set mytics 5

set xlabel "Years count"
set ylabel "Uniqueness (\\%)"

set key top left
set title "Comparison of uniqueness factor with fingerprinting (SimHash)"

plot '../8_bits/all_simhash_8_plot.csv' with linespoints ls 1 lc rgb "#1E90FF" title "8 bits", \
      '../8_bits/all_simhash_8_fingerprint_plot.csv' with linespoints ls 4 lc rgb "#1E90FF" title "8 bits FP", \
      '../20_bits/all_simhash_20_plot.csv' with linespoints ls 1 lc rgb "#DAA520" title "20 bits", \
      '../20_bits/all_simhash_20_fingerprint_plot.csv' with linespoints ls 4 lc rgb "#DAA520" title "20 bits FP"

