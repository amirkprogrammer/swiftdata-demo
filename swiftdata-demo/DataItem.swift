//
//  DataItem.swift
//  swiftdata-demo
//
//  Created by Amir Kabiri on 2/1/24.
//

import Foundation
import SwiftData

@Model
class DataItem: Identifiable {
    var id: String
    var creationDate: Date
    
    init() {
        id = UUID().uuidString
        creationDate = Date()
    }
}
