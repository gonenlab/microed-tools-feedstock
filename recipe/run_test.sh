#! /bin/sh

idoc2smv                                               \
    -f -d 2640.0 -k 2 -m -o "#.img" -r 0.09 -z EST5EDT \
    "${PREFIX}/share/microed-data/movie23.idoc"        \
    "${PREFIX}/share/microed-data/movie23_000.tif"
cat << EOF | md5sum -c -
61220847e866ac7b9ffe90cc83120918  1.img
EOF

tiff2smv                                               \
    -f -d 2640.0 -k 2 -m -o "#.img" -r 0.09 -z EST5EDT \
    "${PREFIX}/share/microed-data/movie23_000.tif"
cat << EOF | md5sum -c -
ee89d1d974c2a1a541eaa570493f16cf  1.img
EOF

tvips2smv                                              \
    -f -d 2640.0 -k 2 -m -o "#.img" -r 0.09 -z EST5EDT \
    "${PREFIX}/share/microed-data/movie23_000.tvips"
cat << EOF | md5sum -c -
61220847e866ac7b9ffe90cc83120918  1.img
c17a439c07636884b1b17d1ca5913d43  2.img
EOF
