//
//  ScoreView.swift
//  Firsty
//
//  Created by Mehmet NARLIOGLU on 5.02.2023.
//

import SwiftUI

import SwiftUI

struct ScoreView: View {
    
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                Text("Final Score:")
                    .font(.body)
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses) 👍🏻")
                    Text("\(viewModel.incorrectGuesses) 👎🏻")
                }
                .font(.system(size: 30))
                Spacer()
                NavigationLink(destination: GameView()) {
                    WelcomeBottomTextView(str: "Re-take Quiz")
                }
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 5, incorrectGuesses: 2))
            
    }
}
