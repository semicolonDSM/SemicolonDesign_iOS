import SwiftUI

public struct FillButton: View {

    public var text: String
    public var action: () -> ()
    public var type: FillButtonType = .default

    public var body: some View {
        Button(action: action) {
            SDText(text, type: .button1, textColor: .GrayScale.gray0)
                .frame(maxWidth: .infinity)
                .padding([.top, .bottom], 14)
                .background(Color.Primary.purple400)
        }
        .cornerRadius(type == .rounded ? 16: 0)
        .padding(type == .rounded ? 12: 0)
    }
}

// MARK: Preview
struct FillButton_Preview: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            FillButton(text: "버튼", action: { }, type: .rounded)
            FillButton(text: "버튼", action: { })
        }
    }
}
