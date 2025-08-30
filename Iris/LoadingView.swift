//
//  LoadingView.swift
//  Iris
//
//  Created by Fawwaz Firdaus on 8/29/25.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Iris")
                .font(.gestura(64))
                .padding(.bottom, -10)
            Image("Iris")
                .resizable()
                .scaledToFit()
                .frame(width: 600, height: 600)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    LoadingView()
}