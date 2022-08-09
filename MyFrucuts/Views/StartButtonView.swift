//
//  StartButtonView.swift
//  MyFrucuts
//
//  Created by Mohan Chaudhari on 02/08/22.
//

import SwiftUI

struct StartButtonView: View {

    @AppStorage("isOnboarding") var isOnboarding: Bool?

    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
                .background(
                    Capsule().stroke(.white, lineWidth: 1.25)
                )
        }
        .accentColor(.white)

    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
