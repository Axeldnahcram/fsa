#!/usr/bin/env bash

BRANCH="dev"
echo "Updating all the repositories on branch" ${BRANCH} "\n"

echo "Updating DEV..."
git fetch --all
git checkout ${BRANCH}
git reset --hard origin/${BRANCH}
git pull
echo "Done\n\n"

echo "Updating UTILS..."
cd fsa-utils
git fetch --all
git checkout ${BRANCH}
git reset --hard origin/${BRANCH}
git pull
pip install  -e .
cd ..
echo "Done\n\n"

echo "Updating CONNECT..."
cd fsa-connect
git fetch --all
git checkout ${BRANCH}
git reset --hard origin/${BRANCH}
git pull
pip install -e .
cd ..
echo "Done\n\n"

echo "Updating CORE..."
cd fsa-core
git fetch --all
git checkout ${BRANCH}
git reset --hard origin/${BRANCH}
git pull
pip install -e .
cd ..
echo "Done\n\n"

echo "Updating API..."
cd fsa-api
git fetch --all
git checkout ${BRANCH}
git reset --hard
git pull
pip install -e .
cd ..
echo "Done\n\n"


echo "All updates are done"