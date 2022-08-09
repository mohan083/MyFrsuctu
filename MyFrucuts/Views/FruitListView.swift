//
//  FruitListView.swift
//  MyFrucuts
//
//  Created by Mohan Chaudhari on 08/08/22.
//

import SwiftUI

struct FruitListView: View {

    let aFruit: Fruit

    var body: some View {
        HStack {
            Image(aFruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                  LinearGradient(gradient: Gradient(colors: aFruit.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)

            VStack (alignment: .leading, spacing: 5) {
                Text(aFruit.title)
                    .font(.system(.title2))
                    .fontWeight(.bold)

                Text(aFruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)

            }
        }
    }
}

struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(aFruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
//            .preferredColorScheme(.dark)
    }
}
