//
//  MainContentView.swift
//  Iris
//
//  Created by Fawwaz Firdaus on 8/29/25.
//

import SwiftUI

struct MainContentView: View {
    @State private var showSettings = false
    @State private var showProfile = false
    
    var body: some View {
        HomeView(showSettings: $showSettings, showProfile: $showProfile)
            .sheet(isPresented: $showSettings) {
                SettingsView()
            }
            .sheet(isPresented: $showProfile) {
                ProfileView()
            }
    }
}

#Preview {
    MainContentView()
}