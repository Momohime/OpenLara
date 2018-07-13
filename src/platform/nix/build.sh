set -e
clang++ -std=c++11 -Os -s -fno-exceptions -fno-rtti -ffunction-sections -fdata-sections -Wl,--gc-sections -DNDEBUG -D_POSIX_THREADS -D_POSIX_READER_WRITER_LOCKS main.cpp ../../libs/stb_vorbis/stb_vorbis.c ../../libs/minimp3/minimp3.cpp ../../libs/tinf/tinflate.c -I../../ -o../../../bin/OpenLara -lX11 -lGL -lm -lpthread -lasound
strip ../../../bin/OpenLara --strip-all --remove-section=.comment --remove-section=.note
