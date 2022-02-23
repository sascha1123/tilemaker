#!/bin/bash
# 1. Parameter: ISS-Struct, 2.: Deutschlandkarte, 3: Datenbankname

osmium tags-filter $2 nwr/place=city nwr/admin_level=1,2,4,6 -o   germany_Admin.osm.pbf --overwrite
osmium cat germany_Admin.osm.pbf $1 -o germany_struct.osm.pbf --overwrite
./tilemaker --input germany_struct.osm.pbf --output $3
