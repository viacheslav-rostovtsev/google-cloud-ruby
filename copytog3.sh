target_cl='migrate_ruby_rules'
(cd ~/src/googleapis \
&& echo "copying to $target_cl" \
&& for f in `git ls-files --modified`; do dir=`dirname "$f"`; cp "$f" "/google/src/cloud/virost/$target_cl/google3/third_party/googleapis/$dir/"; done
)