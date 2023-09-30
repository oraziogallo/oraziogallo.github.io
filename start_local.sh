#! bash

# Note: if Hugo updates and you get an error try running:
# hugo mod clean

CACHE_NAME='../cache/'

rm -rf $CACHE_NAME

hugo server --destination $CACHE_NAME
