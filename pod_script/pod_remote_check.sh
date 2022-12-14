
pwd
version=$1
echo "Test $version"
git tag -d $version
git push --delete origin $version
echo "Begin create a tag $version"
git tag $version
echo "Begin push a tag $version"
git push origin $version
echo "Begin to lint $version"
pod spec lint  --allow-warnings --verbose
echo "End lint $version"
echo "Begin to delete tag $version"
git tag -d $version
git push --delete origin $version
