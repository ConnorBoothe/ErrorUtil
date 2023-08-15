//
//  DependencyRegistry.swift
//  iOSTemplateApp
//
//  Description: Dependency Registry for the app
//  Created by Connor Boothe on 8/12/23.
//

import Foundation
import Api

@available(iOS 13.0.0, *)
class DependencyRegistry: DependencyRegistrySvc {
    /// API
    var api: Api {
        get { Api() }
    }
}
