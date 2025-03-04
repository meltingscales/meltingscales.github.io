#!/usr/bin/env bash

pushd ~/Git/resumes/resume
make
popd

cp ~/Git/resumes/resume/Henry-Post-Resume.pdf ./content/static/Henry-Post-Resume.pdf

exit 0