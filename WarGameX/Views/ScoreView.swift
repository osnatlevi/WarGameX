//
//  ScoreView.swift
//  WarGame
//
//  Created by Osnat Levi on 20/06/2023.
//

import SwiftUI

struct ScoreView: View {
    @StateObject private var viewModel: ScoreViewModel
    
    init(winner: String, score :Int){
        _viewModel = StateObject(wrappedValue: ScoreViewModel(winnerName: winner, score: score))
    }
    
    var body: some View {
        VStack{
                VStack {
                    //Header
                    Text(viewModel.winnerTitle)
                        .font(.system(size: 40))
                        .foregroundColor(Color.orange)
                        .bold()
                    
                    
                    Text(viewModel.scoreTitle)
                        .font(.system(size: 30))
                        .foregroundColor(Color.orange)
                        .bold()
                    
                    Button {
                        viewModel.backTomMenu()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.purple)
                                .frame(width: 150, height: 50)
                            Text("Back To Menu")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }.padding()
                    
                }.padding(.top, 30)

                NavigationLink(destination: LandMarksView(viewModel: MainViewModel()),isActive: $viewModel.isBack){}.hidden()
            }
        }
    }

    
    
    struct ScoreView_Previews: PreviewProvider {
        static var previews: some View {
            ScoreView(winner:"", score: 10)
        }
    }

