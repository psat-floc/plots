set terminal cairolatex pdf
set output "figures/results/diff_uniq.tex"

set terminal png
set output "img.png"

set grid

set nokey
set xlabel "Year"
set ylabel "Cohorts similarity (\\%)"

set title "Evolution of cohorts similary through time"

plot 'global_cohort_similarity_12.csv' using 1:($2*100) with linespoints ls 1 lc rgb "#1E90FF"
