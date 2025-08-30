//
//  SettingsView.swift
//  Iris
//
//  Created by Fawwaz Firdaus on 8/29/25.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                List {
                    Section("Appearance") {
                        HStack {
                            Image(systemName: "paintbrush")
                            Text("Theme")
                            Spacer()
                            Text("System")
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    Section("General") {
                        HStack {
                            Image(systemName: "bell")
                            Text("Notifications")
                        }
                        
                        HStack {
                            Image(systemName: "lock")
                            Text("Privacy")
                        }
                    }
                    
                    Section("Support") {
                        HStack {
                            Image(systemName: "questionmark.circle")
                            Text("Help & Support")
                        }
                        
                        HStack {
                            Image(systemName: "info.circle")
                            Text("About")
                        }
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}