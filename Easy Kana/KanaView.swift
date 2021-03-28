//
//  KanaView.swift
//  Easy Kana
//
//  Created by administrator on 3/27/21.
//

import SwiftUI

struct KanaView: View {
    @Binding var show_hiragana: Bool
    @State var answer = 0
    @State private var recording = ""
    private let speechRecognizer = SpeechRecognizer()
    
    
    
    var body: some View {
        if (answer == 0) {
            
        
            VStack {
                Spacer()
                if show_hiragana {
                    Text(get_random_hiragana().get_kana())
                        .font(.system(size: 100))
                        .multilineTextAlignment(.center)
                        .frame(height: 150)
                }
                else{
                    Text(get_random_katakana().get_kana())
                        .font(.system(size: 100))
                        .multilineTextAlignment(.center)
                        .frame(height: 150)
                        .scaledToFill()
                }
                Spacer()
                HStack {
                    Button(action: {
                        self.answer = 1
                    })
                    {
                        Text("Correct")
                            .font(.title)
                            .padding(.all)
                            .background(Color.red)
                            .foregroundColor(.black)
                            .padding(10)
                            .cornerRadius(40)
                    }
                
                    Button(action: {
                        self.answer = 2
                    }){
                        Text("Incorrect")
                            .font(.title)
                            .padding(.all)
                            .background(Color.red)
                            .foregroundColor(.black)
                            .padding(10)
                            .cornerRadius(40)
                    }
                }
            }
            .onAppear{
            speechRecognizer.record(to: $recording)
                Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { timer in
                    speechRecognizer.stopRecording()
                }
            }
        }
        else if (answer == 1) {
            CorrectView(show_hiragana: $show_hiragana)
        }
        else if (answer == 2) {
            IncorrectView(show_hiragana: $show_hiragana)
        }
    }

}

struct KanaView_Previews: PreviewProvider {

    static var previews: some View {
        Group {
            KanaView(show_hiragana: .constant(true))
            KanaView(show_hiragana: .constant(false))
        }
    }
}
