//
//  ErrorUtility.swift
//  iOSTemplateApp
//
//  Created by Isaac Boothe on 7/31/23.
//

import Foundation
import Api

@available(iOS 13.0.0, *)
class ErrorUtil {
    @Injected(\.api) var api: Api
    
    public static let shared = ErrorUtil()
    
    public func insertError(error: String, function: String) async {
        let error = AppError(error: error, function: function)
        do {
            let _ = try await api.insert(error)
        } catch(let error){
            debugPrint(error)
        }
    }
}
