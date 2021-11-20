#5==> Unit Conversion
#5==>a
feet=1
inch=12

echo "Enter number in inches"
read user_input

ft=$((user_input*feet/inch))
echo "Number in feet : $ft"

#5==>b

echo "Rectangular plot of size"
read length breadth

meter_square=1
feet_square=11

plot_size_in_meter_square=$(((length*breadth)/feet_square))
echo "Plot size in meter square : $plot_size_in_meter_square"

#5==>c

acre=1
meters_square=4046

echo "How many plots are required"
read num_of_plots

area_of_plots_in_acres=$(((num_of_plots*plot_size_in_meter_square)/meters_square))
echo "Area of $num_of_plots plots in acres : $area_of_plots_in_acres"