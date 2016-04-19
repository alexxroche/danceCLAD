all: 
	gnuclad Dance.csv dance.svg config

show:
	gpicview dance.svg
view:
	viewnior dance.svg

clean:
	rm dance.svg

convert:
	inkscape -z -e dance.png -h 1024 dance.svg
	#convert -background none -density 1200 -resize 200x200 dance.svg dance.png

build:
	cd gnuclad
	make
	cd ..
