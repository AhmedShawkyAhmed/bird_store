import SwiftUI
import Combine

struct OtpModifier: ViewModifier {
    @Binding var pin: String
    var textLimit = 1

    func limitText(_ upper: Int) {
        if pin.count > upper {
            pin = String(pin.prefix(upper))
        }
    }

    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .keyboardType(.numberPad)
            .onReceive(Just(pin)) { _ in limitText(textLimit) }
            .frame(width: 50, height: 50)
//            .background(Color.white.cornerRadius(5))
//            .overlay(
//                RoundedRectangle(cornerRadius: 5)
//                    .stroke(Color.blue, lineWidth: 2)
//            )
    }
}
