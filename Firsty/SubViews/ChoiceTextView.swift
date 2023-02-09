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
    
    // MARK: - BODY
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(GameColor.accent, lineWidth: 3)
            )
        
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
