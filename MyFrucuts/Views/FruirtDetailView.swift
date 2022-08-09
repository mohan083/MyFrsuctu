//
//  FruirtDetailView.swift
//  MyFrucuts
//
//  Created by Mohan Chaudhari on 08/08/22.
//

import SwiftUI

struct FruirtDetailView: View {
    var aFruit: Fruit
    var body: some View {

        NavigationView {

            ScrollView(.vertical, showsIndicators: false) {

                VStack(alignment: .leading, spacing: 20) {

                    FruitHeaderView(aFruit: aFruit)

                    VStack(alignment: .leading, spacing: 20) {
                        Text(aFruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(aFruit.gradientColors[1])


                        Text(aFruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)

                        Text("Learn More About \(aFruit.title)".uppercased())
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(aFruit.gradientColors[1])

                        Text(aFruit.description)
                            .multilineTextAlignment(.leading)
                    }
                    .padding(.horizontal, 20)

                }
                .navigationBarHidden(true)

            }
        }
    }
}

struct FruirtDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruirtDetailView(aFruit: fruitsData[5])
    }
}
