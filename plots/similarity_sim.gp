set terminal cairolatex pdf
set output "figures/results/similarity_sim.tex"

# set terminal png
# set output "img.png"

set datafile separator ","

set key bottom right
set grid
set mxtics 5
set mytics 5

# set yrange [0:100]

set xlabel "Year"
set ylabel "Cohorts similarity (\\%)"

set title "Evolution of cohorts similary through time (SimHash)"

plot '../8_bits/global_cohort_similarity_8.csv' using 1:($2*100) with linespoints title "8 bits", \
     '../12_bits/global_cohort_similarity_12.csv' using 1:($2*100) with linespoints title "12 bits", \
     '../16_bits/global_cohort_similarity_16.csv' using 1:($2*100) with linespoints title "16 bits", \
     '../20_bits/global_cohort_similarity_20.csv' using 1:($2*100) with linespoints title "20 bits"
