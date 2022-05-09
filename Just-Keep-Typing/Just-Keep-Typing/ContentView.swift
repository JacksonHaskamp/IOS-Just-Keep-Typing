//
//  ContentView.swift
//  Just-Keep-Typing
//
//  Created by Jackson on 5/1/22.
//

//Used this stackoverflow post discussion for file saving:
//https://stackoverflow.com/questions/19351535/saving-text-file-to-documents-directory-in-ios-7

import SwiftUI




struct ContentView: View {
    @State public var showingTyping = false
    // 0 means showing default, 1 means failure, 2 means success
    @State public var showingSuccessOrFail: Int = 0
    
    
    var body: some View {
        
        if showingSuccessOrFail == 2
        {
            SuccessView(showingSuccessOrFail: $showingSuccessOrFail)
        }
        if showingSuccessOrFail == 1
        {
            FailureView(showingSuccessOrFail: $showingSuccessOrFail)
        }
        else {
            TypingView(showingSuccessOrFail: $showingSuccessOrFail)
        }
        
        
       
    }
}
struct ContentView_Previews: PreviewProvider {
    @State static var showingSuccessOrFail: Int = 0
    static var previews: some View {
        TypingView(showingSuccessOrFail: $showingSuccessOrFail)
    }
}
