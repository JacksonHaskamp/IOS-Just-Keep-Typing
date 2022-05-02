//
//  ContentView.swift
//  Just-Keep-Typing
//
//  Created by Jackson on 5/1/22.
//

import SwiftUI


struct ContentView: View {
    @State private var textString: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            TextField("Just Start Typing", text: $textString)
                .onChange(of: textString) {
                    print($0)
                    //MARK: onTextChange, update lastChangedDate here
                    
                    
                    
                }
                .frame(width: 50 ,height: 100, alignment: .center)
                .padding()
                
            Spacer()
        }
    
       
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
