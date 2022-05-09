//
//  TypingView.swift
//  Just-Keep-Typing
//
//  Created by Jackson on 5/8/22.
//

import SwiftUI

struct TypingView: View {
    var saveHelper = SaveHelper()
    @State private var textString: String = "Once, you start, don't stop."
    @State var timer: Timer?
    @Binding var showingSuccessOrFail: Int
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            TextEditor(text: $textString)
                .onChange(of: textString) {
                    print($0)
                    //MARK: onTextChange, update lastChangedDate and check diffInSeconds here
                    
                    timer?.invalidate() // cancel any previous timers
                    var counter = 0; // set counter to 0
                    timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                        print("counter is at \(counter)")
                        if counter >= 5 {
                            print("failView in timer")
                            //MARK: switch views to fail view, and delete all text
                            
                            showingSuccessOrFail = 1
                            
                        }
                        
                        counter = counter + 1
                      
                    }
                    
                    
                    
                }
//                reference for this code: https://developer.apple.com/forums/thread/653108
                .onTapGesture {
                    if self.textString == "Once, you start, don't stop."{
                        self.textString = ""
                        let timer2 = Timer.scheduledTimer(withTimeInterval: 15.0, repeats: false) { timer in
                            print("Complete!")
                            let saveFile = Date().string(format: "yyyy-MM-dd")
                            print(saveFile)
                            saveHelper.save(fileName: saveFile, text: textString)
                            timer.invalidate()
                            //MARK: switch to successView
                            showingSuccessOrFail = 2
                            
                        }
                        
                    }
                }
                
                
            Spacer()
        }
    }
}

struct TypingView_Previews: PreviewProvider {
    @State static var showingSuccessOrFail: Int = 0
    static var previews: some View {
        TypingView(showingSuccessOrFail: $showingSuccessOrFail)
    }
}
