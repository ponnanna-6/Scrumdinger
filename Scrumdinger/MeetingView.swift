//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Logycent on 10/12/2024.
//

import SwiftUI

struct MeetingView: View {
    let scrum = DailyScrum.sampleData
    var body: some View {
        VStack {
            ProgressView(value: 10, total: 20)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed").font(.caption)
                    Label("300", systemImage:"hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining").font(.caption)
                    Label("300", systemImage:"hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            VStack {
                ForEach(scrum.indices) { index in
                    CardView(scrum: scrum[index])
                }
            }
            Circle().strokeBorder(lineWidth: 24)
            HStack{
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}){
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }.padding()
    }
}

#Preview {
    MeetingView()
}
