To see the non-working and working examples run:

`bash run.sh`

The difference between the working and non-working projects is not the fact
that **maven-publish** is applied via plugin, but rather that the property
`orgValue` in `gradle.properties` is accessed via
`project.orgValue` (dependencies present in POM)
or `project.properties.orgValue` (dependencies not in POM).
