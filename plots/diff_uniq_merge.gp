set terminal cairolatex pdf
set output "figures/results/diff_uniq.tex"

# set terminal png
# set output "img.png"

set yrange [0:25]

set grid
set mxtics 5
set mytics 5

set xlabel "Years count"
set ylabel "Uniqueness (\\%)"

set key top left
set title "Comparison of uniqueness factors"

plot '../8_bits/all_simhash_8_plot.csv' with linespoints ls 1 lc rgb "#1E90FF" title "8 bits SimHash", \
      '../8_bits/all_simhash_8_fingerprint_plot.csv' with linespoints ls 4 lc rgb "#1E90FF" title "8 bits FP SimHash", \
      '../20_bits/all_simhash_20_plot.csv' with linespoints ls 1 lc rgb "#DAA520" title "20 bits SimHash", \
      '../20_bits/all_simhash_20_fingerprint_plot.csv' with linespoints ls 4 lc rgb "#DAA520" title "20 bits FP SimHash", \
      '../8_bits/all_sortinglsh_8_plot.csv' with linespoints ls 1 lc rgb "#228B22" title "8 bits SortingLSH", \
      '../8_bits/all_sortinglsh_8_fingerprint_plot.csv' with linespoints ls 4 lc rgb "#228B22" title "8 bits FP SortingLSH", \
      '../20_bits/all_sortinglsh_20_plot.csv' with linespoints ls 1 lc rgb "#FF1493" title "20 bits SortingLSH", \
      '../20_bits/all_sortinglsh_20_fingerprint_plot.csv' with linespoints ls 4 lc rgb "#FF1493" title "20 bits FP SortingLSH"


