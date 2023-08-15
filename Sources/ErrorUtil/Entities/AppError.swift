//
//  AppError.swift
//  iOSTemplateApp
//
//  Description: AppError entity
//  Created by Isaac Boothe on 8/1/23.
//

import Foundation
import Api

class AppError: DomainObject {
    var documentID: String?
    var error: String
    var function: String
    var lastDocumentChangeType: ChangeType?
    var creationDateString: String
    var creationDate: Date? {
        return creationDateString.convertToDate()
    }
    
    init(
        documentID: String? = nil,
        error: String,
        function: String,
        lastDocumentChangeType: ChangeType? = nil
    ){
        self.documentID = documentID
        self.error = error
        self.function = function
        self.lastDocumentChangeType = lastDocumentChangeType
        self.creationDateString = "\(Date())"
    }
    
    func getCollectionName() -> String {
        return K.collections.error
    }
}
