package org

import org.gradle.api.Plugin
import org.gradle.api.Project

class OrgPlugin implements Plugin<Project> {
  @Override
  void apply(Project project) {
    project.apply(from: this.class.getResource('/maven-config.gradle').toURI())
  }
}
