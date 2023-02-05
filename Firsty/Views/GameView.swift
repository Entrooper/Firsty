//
//  GameView.swift
//  Firsty
//
//  Created by Mehmet NARLIOGLU on 28.01.2023.
//

import SwiftUI

struct GameView: View {
    
    
    
    @StateObject var viewModel = GameViewModel()
    
    
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundColor(.white)
    }
}


struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
