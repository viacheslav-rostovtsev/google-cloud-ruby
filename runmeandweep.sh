#!/bin/bash
#set -e
echo "preserve"
mv gapic-docker.txt gapic-docker-old.txt
mv ~/_/1/cmd.txt ~/_/1/cmd_old.txt
echo "find"
find . -maxdepth 1 -type d -regex ".*cloud.*-v[0-9].*" -printf "%f\n" | sed '/translate-v2/d' | sort > gapic-docker.txt
echo "py"
python run.py > ~/_/1/cmd.txt
(cd ~/src/googleapis \
 && echo "buildozer" \
 && ~/go/bin/buildozer -f ~/_/1/cmd.txt -buildifier buildifier \
 && echo "sed 1" \
 && for f in `git ls-files --modified`; do sed -i 's/ruby_gapic_library/ruby_cloud_gapic_library/g' $f; done \
 && echo "sed 2" \
 && for f in `git ls-files --modified`; do sed -i '/ruby_cloud_gapic_library/,/deps/{s/\(src\)\([[:blank:]]*=[[:blank:]]*\)\(.*\)/\1s = [\3],/g}' $f; done
)
