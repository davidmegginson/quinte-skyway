FG_SCENERY=${HOME}/Dropbox/FlightGear/local-scenery-mods

VIEW_LAT=44.17391841
VIEW_LON=-77.08442523
VIEW_HDG=272
VIEW_ALT=500

DRIVE_LAT=
DRIVE_LON=
DRIVE_HDG=

TARGET_DIR=Objects/w080n40/w078n44/

FILES=quinte-skyway.ac \
  quinte-skyway.xml \
  quinte-skyway1.png \
  quinte-skyway2.png

install:
	cp ${FILES} ${FG_SCENERY}/${TARGET_DIR}

view: install
	fgfs --aircraft=ufo --disable-sound --console --timeofday=noon --lat=${VIEW_LAT} --lon=${VIEW_LON} --heading=${VIEW_HDG} --altitude=${VIEW_ALT}

view-night: install
	fgfs --aircraft=ufo --disable-sound --console --timeofday=midnight --lat=${VIEW_LAT} --lon=${VIEW_LON} --heading=${VIEW_HDG} --altitude=${VIEW_ALT}

drive: install
	fgfs --aircraft=4cv --disable-sound --console --timeofday=noon --lat=${DRIVE_LAT} --lon=${DRIVE_LON} --heading=${DRIVE_HDG}
