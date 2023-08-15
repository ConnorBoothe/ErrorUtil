//
//  ViewModelRegistry.swift
//  DependencyInjection
//
//  Description: Resolver for StateObjects (view models)
//  Created by Connor Boothe on 6/22/23.
//

import Foundation

@available(iOS 13.0, *)
class Resolver<T: ObservableObject> {
    public static func resolve(_ keyPath: KeyPath<DependencyRegistrySvc, T>) -> T {
        return InjectedValues[keyPath]
    }
}
