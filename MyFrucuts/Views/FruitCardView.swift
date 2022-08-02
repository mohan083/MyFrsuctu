//
//  FruitCardView.swift
//  MyFrucuts
//
//  Created by Mohan Chaudhari on 02/08/22.
//

import SwiftUI

struct FruitCardView: View {

    @State private var isAnimating: Bool = false

    var aFruit: Fruit

    var body: some View {
        ZStack {

            VStack (spacing: 20) {
                Image(aFruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 8, x: 6, y: 8)
                    .scaleEffect((isAnimating ? 1 : 0.6))
//                    .animation(.easeOut(duration: 0.5), value: isAnimating)


                Text(aFruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)

                Text(aFruit.headline)
                    .padding(.horizontal, 16)
                    .foregroundColor(.white)
                    .frame(maxWidth: 480)
                    .multilineTextAlignment(.center)

                StartButtonView()

            }
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: aFruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(aFruit: fruitsData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
