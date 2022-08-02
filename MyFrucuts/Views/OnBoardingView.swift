//
//  OnBoardingView.swift
//  MyFrucuts
//
//  Created by Mohan Chaudhari on 02/08/22.
//

import SwiftUI

struct OnBoardingView: View {

    var fruitsDataL = fruitsData.shuffled()

    var body: some View {
        TabView {
            ForEach(fruitsDataL[0..<5]) { item in
                FruitCardView(aFruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)        
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
