//
//  MainView.swift
//  MeetingGenius
//
//  Created by Ross Gallegos on 1/3/25.
//
import SwiftUI
import SwiftData

struct MainView: View {
    // Simulated transcript data for listing
    @State private var transcripts = [("2023-10-01", "Transcript 1"), ("2023-10-02", "Transcript 2")]

    var body: some View {
        NavigationView {
            VStack {
                Text("Calendar View")
                    .font(.headline)
                    .padding(.top)

                List(transcripts, id: \.0) { date, title in
                    NavigationLink(destination: DetailView(transcriptTitle: title)) {
                        Text("\(date): \(title)")
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle("Transcripts")
        }
    }
}
