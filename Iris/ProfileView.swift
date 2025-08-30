//
//  ProfileView.swift
//  Iris
//
//  Created by Fawwaz Firdaus on 8/29/25.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(spacing: 16) {
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 100, height: 100)
                        .overlay(
                            Image(systemName: "person.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.gray)
                        )
                    
                    Text("Fawwaz Firdaus")
                        .font(.gestura(24))
                    
                    Text("fawwaz@example.com")
                        .font(.aeonik(16))
                        .foregroundColor(.secondary)
                }
                .padding(.top, 40)
                
                VStack(spacing: 12) {
                    ProfileRow(icon: "pencil", title: "Edit Profile")
                    ProfileRow(icon: "heart", title: "Favorites")
                    ProfileRow(icon: "clock", title: "Activity History")
                    ProfileRow(icon: "arrow.right.square", title: "Sign Out", isDestructive: true)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("Profile")
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

struct ProfileRow: View {
    let icon: String
    let title: String
    var isDestructive: Bool = false
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .frame(width: 20)
                .foregroundColor(isDestructive ? .red : .primary)
            
            Text(title)
                .font(.aeonik(16))
                .foregroundColor(isDestructive ? .red : .primary)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 14))
                .foregroundColor(.secondary)
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(8)
    }
}

#Preview {
    ProfileView()
}