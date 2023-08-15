//
//  DependencyRegistrySvc.swift
//  iOSTemplateApp
//
//  Description: Service that enforces the app's dependencies in the DependencyRegistry
//  Created by Connor Boothe on 8/12/23.
//

import Foundation
import Api

@available(iOS 13.0.0, *)
protocol DependencyRegistrySvc {
    /// API
    var api: Api { get }
}
