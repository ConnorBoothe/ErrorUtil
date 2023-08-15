//
//  Injected.swift
//  DependencyInjection
//
//  Description: Injected wrapper used to inject dependencies
//  Created by Connor Boothe on 6/21/23.
//

import Foundation
import SwiftUI

//INCLUDE IN DI PACKAGE
@available(iOS 13.0.0, *)
@propertyWrapper
class Injected<T> {
    private let keyPath: KeyPath<DependencyRegistrySvc, T>
    var wrappedValue: T {
        get { InjectedValues[keyPath] }
    }

    init(_ keyPath: KeyPath<DependencyRegistrySvc, T>) {
        self.keyPath = keyPath
    }
}

