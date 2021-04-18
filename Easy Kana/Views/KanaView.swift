//  The KanaView file contains the main view where Kana
//  are displayed. It also includes logic to record the users
//  voice.
//
//  KanaView.swift
//  Easy Kana

import SwiftUI
import AVFoundation

struct KanaView: View {
    @Binding var show_hiragana: Bool
    @State private var recording = ""
    @State private var recordingFinished: Bool = false
    private let speechRecognizer = SpeechRecognizer()
    @Binding var next_kana: Kana
    @Environment(\.presentationMode) private var presentation
    
    var body: some View {
        if !(recordingFinished) {
            VStack {
                Spacer()

                Text(next_kana.get_kana())
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .frame(height: 150)

                
                Spacer()
                HStack {
                    Text("Recording")
                        .font(.title)
                        .padding(.all)
                        .background(Color.green)
                        .foregroundColor(.black)
                        .padding(10)
                        .cornerRadius(40)
                        .overlay(RoundedRectangle(cornerRadius: 40.0).stroke(Color.green, lineWidth: 6))
                }

            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: { presentation.wrappedValue.dismiss() }) { Image(systemName: "chevron.left")
                .padding(.leading)
                .font(.system(.title2))                .accentColor(.gray)
            })
            .onAppear{
                speechRecognizer.record(to: $recording)
                Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { timer in
                    speechRecognizer.stopRecording()
                    recordingFinished = true
                }
            }
            .onDisappear{
                speechRecognizer.stopRecording()
            }
        }
        else if (recordingFinished == true && test_recording(kana: next_kana, recording: recording)) {
            CorrectView(show_hiragana: $show_hiragana, recording: recording, next_kana: $next_kana)
        }
        else if (recordingFinished == true) {
            IncorrectView(show_hiragana: $show_hiragana, recording: recording, next_kana: $next_kana)
        }

    }
    

}

struct KanaView_Previews: PreviewProvider {

    static var previews: some View {
        Group {
            KanaView(show_hiragana: .constant(true), next_kana: .constant(get_random_hiragana()))
            KanaView(show_hiragana: .constant(false), next_kana: .constant(get_random_katakana()))
        }
    }
}
