//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    let imageName: String
    let itemName: String
    let quantity: Int
    init(imageName: String, itemName: String, quantity: Int) {
        self.imageName = imageName
        self.itemName = itemName
        self.quantity = quantity
    }
}

struct ContentView: View {
    var veg = [
        Items(imageName: "onion", itemName: "Onions", quantity: 4),
        Items(imageName: "potato", itemName: "Potato", quantity: 6)
    ]
    var drink = [
        Items(imageName: "milk", itemName: "Milk", quantity: 5)

    ]
    var fruit = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 1),
        Items(imageName: "apple", itemName: "Apples", quantity: 2),
        Items(imageName: "kiwi", itemName: "Kiwis", quantity: 3),
        Items(imageName: "orange", itemName: "Orange", quantity: 7)
    ]
    var body: some View {
        NavigationView {
//            List(list) { i in
//                CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
//
//            }.navigationTitle("Shopping List")
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruit) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                Section(header: Text("Vegatables")) {
                    ForEach(veg) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
                Section(header: Text("Drinks")) {
                    ForEach(drink) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
            }.navigationTitle("Shopping List")
        }
    }
}
