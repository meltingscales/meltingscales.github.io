#!/usr/bin/env bash

pushd ~/Git/resumes/resume
make
popd

cp \
    ~/Git/resumes/resume/Henry-Post-Resume.pdf \
    ~/Git/meltingscales.github.io/content/static/Henry-Post-Resume.pdf

exit 0