//
//  ChoiceTextView.swift
//  Firsty
//
//  Created by Mehmet NARLIOGLU on 2.02.2023.
//

import SwiftUI

struct ChoiceTextView: View {
    // MARK: - PROPS
    let choiceText: String
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    // MARK: - BODY
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accent, width: 4)
    }
}

// MARK: - PREVIEW
struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
            .padding(.all)
            .previewLayout(.sizeThatFits)
    }
}
//
