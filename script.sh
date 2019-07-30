#!/bin/bash
for file in ~/build/docs/*
do
if [ -f "$file" ]
then
touch temp.md
echo "---
project: js-cosmos
---" >> temp.md
cat $file >> temp.md
cat temp.md > $file
rm -rf temp.md
fi
done

touch temp.md
echo "---
project: js-cosmos
---" >> temp.md
cat /.github/CONTRIBUTING.md >> temp.md
cat temp.md > CONTRIBUTING.md
rm -rf temp.md

touch temp.md
echo "---
project: js-cosmos
---" >> temp.md
cat CHANGELOG.md >> temp.md
cat temp.md > CHANGELOG.md
rm -rf temp.md
