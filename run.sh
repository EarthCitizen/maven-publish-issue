function spacer() {
  echo
  echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
  echo
}

pushd working-project-plugin

./gradlew --include-build ../org-plugin/ clean checkOrgValue generatePomFileForMavenJavaPublication

echo '#######################################'
echo '## GOOD'
echo '## POM WITH DEPENDENCIES'
echo '## MAVEN-PUBLISH APPLIED WITH PLUGIN'
echo '#######################################'
cat build/publications/mavenJava/pom-default.xml

popd

spacer

####################################################################

pushd working-project-no-plugin

./gradlew clean checkOrgValue generatePomFileForMavenJavaPublication

echo '#######################################'
echo '## GOOD'
echo '## POM WITH DEPENDENCIES'
echo '## MAVEN-PUBLISH APPLIED WITHOUT PLUGIN'
echo '#######################################'
cat build/publications/mavenJava/pom-default.xml

popd

spacer

####################################################################

pushd non-working-project-plugin

./gradlew --include-build ../org-plugin/ clean checkOrgValue generatePomFileForMavenJavaPublication

echo '#######################################'
echo '## BAD'
echo '## POM WITHOUT DEPENDENCIES'
echo '## MAVEN-PUBLISH APPLIED WITH PLUGIN'
echo '#######################################'
cat build/publications/mavenJava/pom-default.xml

popd

spacer

####################################################################

pushd non-working-project-no-plugin

./gradlew clean checkOrgValue generatePomFileForMavenJavaPublication

echo '#######################################'
echo '## BAD'
echo '## POM WITHOUT DEPENDENCIES'
echo '## MAVEN-PUBLISH APPLIED WITHOUT PLUGIN'
echo '#######################################'
cat build/publications/mavenJava/pom-default.xml

popd
