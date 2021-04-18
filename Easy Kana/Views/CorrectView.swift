//  Shows results when the user is correct. Does not play audio.
//  CorrectView.swift
//  Easy Kana

import SwiftUI
import AVFoundation

struct CorrectView: View {
    @Binding var show_hiragana: Bool
    @State var show_next: Bool = false
    @Binding var recording: String
    @Binding var next_kana: Kana
    @Binding var recordingFinished: Bool
    @Environment(\.presentationMode) private var presentation
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        if !(show_next) {
            VStack {
                Spacer()
                Button(action: {
                    let correctPron = AVSpeechUtterance(string: next_kana.get_pron())
                    correctPron.voice = AVSpeechSynthesisVoice(language: "ja-JP")
                    // correctPron.rate = 0.08
                    let synthesizer = AVSpeechSynthesizer()
                    synthesizer.speak(correctPron)
                }, label: {
                    Text(next_kana.get_kana())
                        .font(.largeTitle)
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                        .overlay(RoundedRectangle(cornerRadius: 2.0).stroke(Color.green, lineWidth: 8))
                })


                Spacer()
                Button(action: {
                    recording = ""
                    recordingFinished = false
                    self.show_next = true
                })
                {
                    Text("Show Next")
                        .font(.title)
                        .padding(.all)
                        .background(Color.green)
                        .foregroundColor(.black)
                        .padding(10)
                        .cornerRadius(40)
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: { presentation.wrappedValue.dismiss() }) { Image(systemName: "chevron.left")
                .padding(.leading)
                .font(.system(.title2))
                .accentColor(.gray)
            })
            .onAppear {
                let correctPron = AVSpeechUtterance(string: next_kana.get_pron())
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

struct CorrectView_Previews: PreviewProvider {
    static var previews: some View {
        CorrectView(show_hiragana: .constant(true), recording: .constant("Yes"), next_kana: .constant(get_random_hiragana()), recordingFinished: .constant(true))
    }
}

