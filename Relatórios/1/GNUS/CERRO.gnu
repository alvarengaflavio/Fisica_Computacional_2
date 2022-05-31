reset
set term postscript butt "Helvetica" 10

set term postscript color eps
set output 'CERRO.eps'

set multiplot

set autoscale
set yrange[0:12000]
set xrange[0:4]
set key below
set xlabel 'Delta X'
set ylabel 'dt'

plot 'CERRO.dat' u 1:2 t 'Dts Diferentes' w lp

set size 0.45,0.45
set origin 0.5,0.5
set xrange[2:4]
set yrange[0:450]
unset xlabel
unset ylabel
unset key

plot 'CERRO.dat' u 1:2 t 'Dts Diferentes' w lp

unset multiplot

set term x11

!epstopdf CERRO.eps
!acroread CERRO.pdf &
