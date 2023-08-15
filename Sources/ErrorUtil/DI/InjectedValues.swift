//
//  InjectedValues.swift
//
//  Description: Provides access to injected dependencies.
//  Created by Connor Boothe on 6/21/23.
//

import Foundation

@available(iOS 13.0.0, *)
class InjectedValues {
    //// This is used as an accessor to the computed properties within extensions of `InjectedValues`.
    private static var current: DependencyRegistrySvc = DependencyRegistry()
        
    //// A static subscript accessor for updating and references dependencies directly.
    static subscript<T>(_ keyPath: KeyPath<DependencyRegistrySvc, T>) -> T {
        get { current[keyPath: keyPath] }
    }
}
