//
//  SplashView.swift
//  MeetingGenius
//
//  Created by Ross Gallegos on 1/3/25.
//
import SwiftUI
import SwiftData

struct SplashView: View {
    @State private var isActive = false
    
    var body: some View {
        VStack {
            if isActive {
                MainView() // Transition to Main Screen
            } else {
                VStack {
                    Image(systemName: "")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.blue)
                    Text("MeetingGenius")
                        .font(.largeTitle)
                        .bold()
                }
                .onAppear {
                    // Simulate a delay to mimic loading time
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.isActive = true
                    }
                }
            }
        }
    }
}
