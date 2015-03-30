echo "start compile"
harp compile
echo "finish compile"
cd ../npmsafe.github.io
echo "start update"
git pull
echo "start rm old file"
GLOBIGNORE=.git
rm -vrf *
unset GLOBIGNORE
echo "start cp new file"
cp -r ../www.npmsafe.com/www/ ./
echo "done"