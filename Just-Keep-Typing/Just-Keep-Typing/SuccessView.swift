//
//  SuccessView.swift
//  Just-Keep-Typing
//
//  Created by Jackson on 5/2/22.
//

import SwiftUI

//green background
//approving symbol
//successText
//Come back tomorrow or overWrite this file with new attempt?

struct SuccessView: View {
    
    @Binding var showingSuccessOrFail: Int
    
    var body: some View {
        ZStack {
            Color.successBackground.ignoresSafeArea(.all)

            VStack {
                Image(systemName: "hand.thumbsup.circle")
                    .font(.system(size: 90))
                Text("Success!")
                    .font(.largeTitle)
                    .bold()
                    .padding([.bottom])
                Text("Congrats on making it! \nCome back tomorrow for your daily typing practice. ").font(.headline).multilineTextAlignment(.center)
                Button("Try again?"){
                    //MARK: switch to editorView
                    showingSuccessOrFail = 0
                }
                .tint(Color.white)
                .buttonStyle(.bordered)
                .controlSize(.large)
                .frame(width: .infinity, height: 50, alignment: .center)
                    .padding()
                Text("* Note: this will overwrite today's file \n \(Date().string(format: "yyyy-MM-dd")) ")
            }
            
        }
       
        
                
    }
}

struct SuccessView_Previews: PreviewProvider {
    @State static var showingSuccessOrFail: Int = 2
    static var previews: some View {
        TypingView(showingSuccessOrFail: $showingSuccessOrFail)
    }
}
