//
//  HomeView.swift
//  Iris
//
//  Created by Fawwaz Firdaus on 8/29/25.
//

import SwiftUI

struct SystemToggleButton: View {
    @State private var isSystemOn = false
    
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 0.3)) {
                isSystemOn.toggle()
            }
        }) {
            VStack(spacing: 12) {
                Circle()
                    .fill(isSystemOn ? 
                          LinearGradient(colors: [.purple, .pink], startPoint: .topLeading, endPoint: .bottomTrailing) :
                          LinearGradient(colors: [.gray.opacity(0.3), .gray.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 120, height: 120)
                    .overlay(
                        Circle()
                            .stroke(isSystemOn ? Color.purple.opacity(0.3) : Color.gray.opacity(0.2), lineWidth: 2)
                    )
                    .overlay(
                        Text(isSystemOn ? "ON" : "OFF")
                            .font(.aeonik(20, weight: .bold))
                            .foregroundColor(isSystemOn ? .white : .primary)
                    )
                    .shadow(color: isSystemOn ? .purple.opacity(0.3) : .clear, radius: 20, x: 0, y: 10)
                
                Text(isSystemOn ? "Iris is On" : "Iris is Off")
                    .font(.aeonik(14))
                    .foregroundColor(.secondary)
                    .animation(.easeInOut(duration: 0.2), value: isSystemOn)
            }
        }
        .scaleEffect(isSystemOn ? 1.05 : 1.0)
        .animation(.easeInOut(duration: 0.3), value: isSystemOn)
    }
}

struct HomeView: View {
    @Binding var showSettings: Bool
    @Binding var showProfile: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                HStack(spacing: 16) {
                    Button(action: {
                        showSettings = true
                    }) {
                        Image(systemName: "gearshape")
                            .font(.system(size: 20))
                            .foregroundColor(.primary)
                    }
                    
                    Button(action: {
                        showProfile = true
                    }) {
                        Image(systemName: "person.circle")
                            .font(.system(size: 20))
                            .foregroundColor(.primary)
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
            
            VStack(spacing: 40) {
                Text("Iris")
                    .font(.gestura(48, weight: .semibold))
                    .padding(.top, 20)
                
                Spacer()
                
                SystemToggleButton()
                
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView(showSettings: .constant(false), showProfile: .constant(false))
}