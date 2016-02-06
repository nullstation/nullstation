/*
NullStation
*/

#if !defined(MAP_FILE)

		#define TITLESCREEN "title" //Add an image in misc/fullscreen.dmi, and set this define to the icon_state, to set a custom titlescreen for your map

        #include "map_files\nullstation\nullstation.dmm"
        #include "map_files\generic\z2.dmm"
        #include "map_files\generic\z3.dmm"
        #include "map_files\generic\z4.dmm"
        #include "map_files\nullstation\z5.dmm"
        #include "map_files\generic\z6.dmm"
        #include "map_files\generic\z7.dmm"

		#define MAP_PATH "map_files/nullstation"
        #define MAP_FILE "nullstation.dmm"
        #define MAP_NAME "nullstation"

        #define MAP_TRANSITION_CONFIG	list(MAIN_STATION = CROSSLINKED, CENTCOMM = SELFLOOPING, ABANDONED_SATELLITE = CROSSLINKED, DERELICT = CROSSLINKED, MINING = CROSSLINKED, EMPTY_AREA_1 = CROSSLINKED, EMPTY_AREA_2 = CROSSLINKED)

		#if !defined(MAP_OVERRIDE_FILES)
				#define MAP_OVERRIDE_FILES
				#include "map_files\nullstation\misc.dm"
		        #include "map_files\nullstation\supplypacks.dm"
		        #include "map_files\nullstation\telecomms.dm"
		        #include "map_files\nullstation\uplink_item.dm"
		        #include "map_files\nullstation\job\jobs.dm"
		        #include "map_files\nullstation\job\removed.dm"
		#endif

#elif !defined(MAP_OVERRIDE)

	#warn a map has already been included, ignoring nullstation.

#endif