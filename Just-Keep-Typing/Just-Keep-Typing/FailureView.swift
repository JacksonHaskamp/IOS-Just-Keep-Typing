//
//  FailureView.swift
//  Just-Keep-Typing
//
//  Created by Jackson on 5/2/22.
//

import SwiftUI

//red background
//disaproving symbol
//failuretext
//try again button

struct FailureView: View {
    
    var body: some View {
        ZStack {
            Color.failBackground.ignoresSafeArea(.all)

            VStack {
                Image(systemName: "hand.thumbsdown.circle")
                    .font(.system(size: 90))
                Text("FAIL")
                    .font(.largeTitle)
                    .bold()
                    .padding([.bottom])
                Text("Make sure to keep typing next time!").font(.headline)
                Button("Try again"){
                    //MARK: switch to editorView
                }
                .tint(Color.white)
                .buttonStyle(.bordered)
                .controlSize(.large)
                .frame(width: .infinity, height: 50, alignment: .center)
                    .padding()
            }
            
        }
       
        
                
    }
}

struct FailureView_Previews: PreviewProvider {
    static var previews: some View {
        FailureView()
    }
}
