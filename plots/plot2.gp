set terminal cairolatex pdf
set output "figures/results/diff_uniq.tex"

# set terminal png
# set output "img.png"

set grid

set xlabel "Number of cohorts in the path"
set ylabel "Uniqueness (\\%)"

set key top left
set title "Comparison of uniqueness factor with fingerprinting (SimHash)"

plot 'a' with linespoints ls 1 lc rgb "#1E90FF" title "8 bits", \
      'b' with linespoints ls 1 lc rgb "#228B22" title "12 bits", \
      'c' with linespoints ls 1 lc rgb "#FF1493" title "16 bits", \
      'd' with linespoints ls 1 lc rgb "#DAA520" title "20 bits", \
      'e' with linespoints ls 4 lc rgb "#1E90FF" title "8 bits FP", \
      'f' with linespoints ls 4 lc rgb "#228B22" title "12 bits FP", \
      'g' with linespoints ls 4 lc rgb "#FF1493" title "16 bits FP", \
      'h' with linespoints ls 4 lc rgb "#DAA520" title "20 bits FP"

