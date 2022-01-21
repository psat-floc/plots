set terminal cairolatex pdf
set output "figures/results/similarity_global.tex"

# set terminal png
# set output "img.png"

set datafile separator ","

set key bottom right
set grid
set mxtics 5
set mytics 5

set yrange [75:100]

# set yrange [0:100]

set xlabel "Year"
set ylabel "Cohorts similarity (\\%)"

set title "Comparison of cohorts similarity evolution through time"

plot '../25M/global_cohort_similarity_knn_20.csv' using 1:($2*100) with linespoints title "K-means", \
     '../25M/global_cohort_similarity_20.csv' using 1:($2*100) with linespoints title "SimHash 20 bits", \
     '../25M/global_cohort_similarity_random_20.csv' using 1:($2*100) with linespoints title "Random"

unset yrange
