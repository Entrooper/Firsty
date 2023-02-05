//
//  WelcomeBottomTextView.swift
//  Firsty
//
//  Created by Mehmet NARLIOGLU on 5.02.2023.
//

import SwiftUI

struct WelcomeBottomTextView: View {
    let str: String
 
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}

struct WelcomeBottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBottomTextView(str: "Test")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
