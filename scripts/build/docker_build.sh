#! /bin/bash

cd /sdg

python3 ./scripts/build/csvcheck.py \
&& python3 ./scripts/build/metadatacheck.py \
&& python3 ./scripts/build/configcheck.py \
&& dos2unix scripts/build/cibuild.sh \
&& scripts/build/cibuild.sh \
&& jekyll serve --skip-initial-build 

