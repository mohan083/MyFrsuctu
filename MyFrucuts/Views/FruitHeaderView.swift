//
//  FruitHeaderView.swift
//  MyFrucuts
//
//  Created by Mohan Chaudhari on 08/08/22.
//

import SwiftUI

struct FruitHeaderView: View {
    var aFruit: Fruit
    var body: some View {
        ZStack {
            LinearGradient(colors: aFruit.gradientColors, startPoint: .top, endPoint: .bottom)

            Image(aFruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color.black.opacity(0.158), radius: 8, x: 10, y: 10)
                .padding(.vertical, 20)
        }
        .frame(height: 440)
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(aFruit: fruitsData[6])
    }
}
