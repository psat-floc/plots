# set terminal cairolatex pdf
# set output "figures/results/uniq_sort_simple.tex"

set terminal png
set output "img.png"

set grid

set xlabel "Number of cohorts in the path"
set ylabel "Uniqueness (\\%)"

set key top left
set title "Uniqueness of cohorts (SortingLSH, no fingerprinting)"

plot '../8_bits/all_sortinglsh_8_plot.csv' with linespoints title "8 bits", \
      '../12_bits/all_sortinglsh_12_plot.csv' with linespoints title "12 bits", \
      '../16_bits/all_sortinglsh_16_plot.csv' with linespoints title "16 bits", \
      '../20_bits/all_sortinglsh_20_plot.csv' with linespoints title "20 bits"

