//
//  ContentView.swift
//  swiftdata-demo
//
//  Created by Amir Kabiri on 2/1/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    
    // retrieve all of one data type from the db
    @Query private var items: [DataItem]
    
    var body: some View {
        VStack {
            List(items) { item in
                HStack {
                    Text(item.creationDate.description)
                    Button("Update") {
                        // update an item from the db
                        item.creationDate = Date()
                    }
                }
                .swipeActions {
                    Button("Delete") {
                        // delete an item from the db
                        context.delete(item)
                    }
                }
            }
            
            Button("Add") {
                // create a new data item
                let data = DataItem()
                
                // add it to the db
                context.insert(data)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
