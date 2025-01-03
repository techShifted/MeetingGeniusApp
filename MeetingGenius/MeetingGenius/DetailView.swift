//
//  DetailView.swift
//  MeetingGenius
//
//  Created by Ross Gallegos on 1/3/25.
//
import SwiftUI
import SwiftData

struct DetailView: View {
    var transcriptTitle: String

    var body: some View {
        VStack {
            Text(transcriptTitle)
                .font(.title)
                .padding()

            Text("This is a detailed view of the transcript. Pay to translate and see AI analysis.")
                .padding()

            // Simulating pay button action
            Button(action: {
                // Implement payment and translation logic here
            }) {
                Text("Translate with AI - $0.99")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .navigationBarTitle("Details", displayMode: .inline)
    }
}
