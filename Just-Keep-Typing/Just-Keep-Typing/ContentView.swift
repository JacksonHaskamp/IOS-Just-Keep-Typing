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
    @State private var textString: String = "Once, you start, don't stop."
    @State var timer: Timer?
    var saveHelper = SaveHelper()
    
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
                            
                            timer.invalidate()
                        }
                        
                        counter = counter + 1
                      
                    }
                    
                    
                    
                }
//                reference for this code: https://developer.apple.com/forums/thread/653108
                .onTapGesture {
                    if self.textString == "Once, you start, don't stop."{
                        self.textString = ""
                        let timer2 = Timer.scheduledTimer(withTimeInterval: 10.0, repeats: false) { timer in
                            print("Complete!")
                            let saveFile = Date().string(format: "yyyy-MM-dd")
                            print(saveFile)
                            saveHelper.save(fileName: saveFile, text: textString)
                            
                        }
                        
                    }
                }
                
                
            Spacer()
        }
    
       
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
