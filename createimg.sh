#
# Create artificial training helipad images with imagemagick
# 
# EE Jan '20

# Get list of fonts: convert -list font
# seed Random
RANDOM=$$$(date +%s)
FONTS=("Arial" "Symbol" "Times-Roman" "Helvetica")
STROKE=(20 25 30)
FONTSIZE=(290 300 310 320)

for k in {0..100}
do

	font=${FONTS[$RANDOM % ${#FONTS[@]} ]}
	COL=()
	for ((i = 0; i < 9; i++)); do      ## fill array with random values
	    COL[i]=$(($RANDOM % 255))
	done
	#echo ${COL[@]}
	stroke=${STROKE[$RANDOM % ${#STROKE[@]} ]}
	fontsize=${FONTSIZE[$RANDOM % ${#FONTSIZE[@]} ]}
	convert -size 400x400 xc:"rgb(${COL[0]}, ${COL[1]}, ${COL[2]})" -font $font -pointsize $fontsize -fill white \
	           -draw "fill rgb(${COL[3]}, ${COL[4]}, ${COL[5]}) text 100, 300 'H'" \
		       -draw "fill none stroke rgb(${COL[6]}, ${COL[7]}, ${COL[8]})  stroke-width $stroke circle 200, 200, 380, 200" \
	           img/h$k.jpg
	# Format: class x-center y-center width heigth
	echo "0 0.5 0.5 0.98 0.98" > img/h$k.txt
done
