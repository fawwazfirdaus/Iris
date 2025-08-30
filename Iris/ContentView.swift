//
//  ContentView.swift
//  Iris
//
//  Created by Fawwaz Firdaus on 8/29/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = true
    
    var body: some View {
        if isLoading {
            LoadingView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            isLoading = false
                        }
                    }
                }
        } else {
            MainContentView()
        }
    }
}

#Preview {
    ContentView()
}
