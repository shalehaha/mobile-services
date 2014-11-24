# ./publish.sh version
echo "Version is $1"

echo "Update the Version number in podspec"
sed -i "" "s/\\(s.version[[:space:]]*=[[:space:]]*\"\\).*\\(\"\\)/\\1$1\\2/g" AdobeMobileSDK.podspec
sed -i "" "s/\\(\"v\).*\\(-cocoapod\"\\)/\\1$1\\2/g" AdobeMobileSDK.podspec

echo "Rename AdobeMobileLibrary"

echo ""
git add *
git commit -am "Release $1"
git push origin cocoapod

git tag v$1-cocoapod
git push origin v$1-cocoapod