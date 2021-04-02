//  Displays the fact that the result was incorrect. Also
//  plays the correct pronunciation.
//
//  IncorrectView.swift
//  Easy Kana
//
//  Created by administrator on 3/27/21.
//

import SwiftUI
import AVFoundation

struct IncorrectView: View {
    @Binding var show_hiragana: Bool
    @State var show_next: Bool = false
    @State var returnHome = false
    var recording: String

    
    var body: some View {
 
        if (returnHome == true) {
            ContentView()
        }
        
        else if !(show_next) {
            VStack {
                HStack {
                    Button(action: {
                        self.returnHome = true
                        self.show_next = true
                    }) {
                        Text("◁")
                            .font(.title)
                            .foregroundColor(Color.gray)
                            .padding(.horizontal)
                            .padding([.top, .leading], 10)
                    }
                    Spacer()
                }
                Spacer()
                Text(last_kana.get_kana())
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .frame(height: 150)
                    .overlay(Rectangle().stroke(Color.red, lineWidth: 8))
                Spacer()
                Button(action: {
                    self.show_next = true
                })
                {
                    Text(recording)
                        .font(.title)
                        .padding(.all)
                        .background(Color.red)
                        .foregroundColor(.black)
                        .padding(10)
                        .cornerRadius(40)
                }
            }
            .onAppear {
                let correctPron = AVSpeechUtterance(string: last_kana.get_kana())
                correctPron.voice = AVSpeechSynthesisVoice(language: "ja-JP")
                // correctPron.rate = 0.08
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(correctPron)
            }
        }
        else {
            KanaView(show_hiragana: $show_hiragana)
        }
    }
}

struct IncorrectView_Previews: PreviewProvider {
    static var previews: some View {
        IncorrectView(show_hiragana: .constant(true), recording: "Next")
    }
}
