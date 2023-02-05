//
//  GameViewModel.swift
//  Firsty
//
//  Created by Mehmet NARLIOGLU on 5.02.2023.
//

import SwiftUI

class GameViewModel: ObservableObject {
    
    @Published private var game = Game()
    
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
}
