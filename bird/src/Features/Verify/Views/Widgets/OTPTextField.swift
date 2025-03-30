import SwiftUI

struct OTPTextField: View {
    @Binding var pinOne: String
    @Binding var pinTwo: String
    @Binding var pinThree: String
    @Binding var pinFour: String
    @Binding var pinFive: String
    @Binding var pinSix: String

    @FocusState private var focusedField: FocusField?

    private enum FocusField {
        case one, two, three, four, five, six
    }

    var body: some View {
        HStack(spacing: 15) {
            otpTextField(text: $pinOne, next: .two)
                .focused($focusedField, equals: .one)
            otpTextField(text: $pinTwo, previous: .one, next: .three)
                .focused($focusedField, equals: .two)
            otpTextField(text: $pinThree, previous: .two, next: .four)
                .focused($focusedField, equals: .three)
            otpTextField(text: $pinFour, previous: .three, next: .five)
                .focused($focusedField, equals: .four)
            otpTextField(text: $pinFive, previous: .four, next: .six)
                .focused($focusedField, equals: .five)
            otpTextField(text: $pinSix, previous: .five)
                .focused($focusedField, equals: .six)
        }
        .onAppear {
            focusedField = .one
        }
    }

    private func otpTextField(text: Binding<String>, previous: FocusField? = nil, next: FocusField? = nil) -> some View {
        MainTextField(hint: "", text: text, horizontalPadding: 0)
            .modifier(OtpModifier(pin: text))
            .onChange(of: text.wrappedValue) { oldValue, newValue in
                if newValue.count == 1 {
                    if let next = next {
                        focusedField = next
                    }
                } else if newValue.isEmpty {
                    if let previous = previous {
                        focusedField = previous
                    }
                }
            }
    }
}
