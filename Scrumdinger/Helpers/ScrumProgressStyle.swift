import SwiftUI
import SwiftUICore

struct ThemedProgressViewStyle: ProgressViewStyle {
    var progressColor: Color
    var backgroundColor: Color

    func makeBody(configuration: Configuration) -> some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(backgroundColor)
                .frame(height: 16)

            // Foreground progress bar
            RoundedRectangle(cornerRadius: 10)
                .fill(progressColor)
                .frame(
                    width: configuration.fractionCompleted != nil ? CGFloat(configuration.fractionCompleted!) * 200 : 0,
                    height: 8
                )
                .padding([.horizontal, .vertical], 4)
        }
        .frame(height: 16)
    }
}
