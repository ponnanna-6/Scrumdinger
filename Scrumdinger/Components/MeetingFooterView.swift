import SwiftUI

struct MeetingFooterView: View {
    @ObservedObject var scrumTimer: ScrumTimer // Observing the ScrumTimer
    var speakerNumber: Int {
        return scrumTimer.speakerIndex + 1 // Get the current speaker index (1-based)
    }

    var body: some View {
        HStack {
            // Display the current speaker and the number of attendees
            Text("Speaker \(speakerNumber) of \(scrumTimer.speakers.count)")
                .foregroundColor(.white)
            Spacer()
            
            // Display the elapsed time for the current speaker
            Text("\(scrumTimer.secondsElapsed) seconds elapsed")
                .foregroundColor(.white)
            
            // Skip button to advance to the next speaker
            Button(action: {
                scrumTimer.skipSpeaker() // Skip to the next speaker
            }) {
                Image(systemName: "forward.fill")
                    .foregroundColor(.white)
            }
            .accessibilityLabel("Next speaker")
        }
        .padding()
        .background(Color.black.opacity(0.7))
        .cornerRadius(10)
    }
}
