//
//  ProjectDeployTarget.swift
//  ProjectDescriptionHelpers
//
//  Created by jusong on 4/26/24.
//

import ProjectDescription

public enum ProjectDeployTarget: String {
    case dev = "DEV"
    case stage = "STAGE"
    case prod = "PROD"
}

public extension ConfigurationName {
    static var dev: ConfigurationName { configuration(ProjectDeployTarget.dev.rawValue) }
    static var stage: ConfigurationName { configuration(ProjectDeployTarget.stage.rawValue) }
    static var prod: ConfigurationName { configuration(ProjectDeployTarget.prod.rawValue) }
}
