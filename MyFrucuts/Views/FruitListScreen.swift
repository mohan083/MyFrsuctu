//
//  FruitListScreen.swift
//  MyFrucuts
//
//  Created by Mohan Chaudhari on 08/08/22.
//

import SwiftUI

struct FruitListScreen: View {
    var body: some View {
        NavigationView {

            List {
                ForEach(fruitsData) { item in
                    NavigationLink(destination: FruirtDetailView(aFruit: item)) {
                        FruitListView(aFruit: item)
                            .padding(.vertical, 8)
                    }
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct FruitListScreen_Previews: PreviewProvider {
    static var previews: some View {
        FruitListScreen()
    }
}
