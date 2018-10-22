git pull

cd fsa-utils
git reset --hard
git pull
pip install  -e .
cd ..

cd fsa-core
git reset --hard
git pull
pip install -e .
cd ..

cd fsa-api
git reset --hard
git pull
pip install -e .
cd ..