//
//  ContentView.swift
//  Firsty
//
//  Created by Mehmet NARLIOGLU on 28.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    let question = Question(
        questionText: "What was the first \"Milk\" in the history?",
        possibleAnswers: ["Seth", "Baal", "Selin", "Hathor"],
        correctAnswerIndex: 2)
    
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("1/10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                Spacer()
                HStack {
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                        .padding(.horizontal, 3)
                        .lineLimit(1)
                        
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .frame(width: .infinity, height: 100)
                
                
            }
        }
        .foregroundColor(Color.white)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
