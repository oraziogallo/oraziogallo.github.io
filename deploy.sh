#! bash

usage() {
  cat << EOF >&2
Usage:
>> To publish to the world:
   bash deploy.sh -p
>> To see locally:
   bash deploy.sh -l

EOF
}

if [ "$#" -ne 1 ]; then
    echo "I expect exactly 1 argument"
    usage
    exit 1
fi

# Parse the inputs
while getopts plh o
do
  case $o in
    p) publish=1;;
    l) publish=0;;
    h|*) usage; exit 0;
  esac
done
shift "$((OPTIND - 1))"

# Remove the current publications but NOT the _index.md file in the publication directory!!!
rm -rf ./content/publication/*/
# Generate the publication information
python ../lpr-website/bib_import/src/import_bib.py -f publications.bib -d content/publication/

if [[ $publish -eq 1 ]]; then
    # Build the website
    hugo -d docs
    # Push to external
    git add docs/*
    git commit -m"Building newest website version"
    git pull --rebase
    git push
    else
    # Start local
    CACHE_NAME='../cache/'
    rm -rf $CACHE_NAME
    hugo server --destination $CACHE_NAME
fi

exit 0