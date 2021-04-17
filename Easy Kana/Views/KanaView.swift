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
    @State var answer = 0
    @State private var recording = ""
    @State private var recordingFinished: Bool = false
    private let speechRecognizer = SpeechRecognizer()
    let next_kana: Kana
    @State var recordingText = "Preparing..."
    @State var recordingColor = Color.red
    
    
    var body: some View {
        if (answer == 0) {
            VStack {
                Spacer()

                Text(next_kana.get_kana())
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .frame(height: 150)

                
                Spacer()
                HStack {
                    Text(recordingText)
                        .font(.title)
                        .padding(.all)
                        .background(recordingColor)
                        .foregroundColor(.black)
                        .padding(10)
                        .cornerRadius(40)
                        .overlay(RoundedRectangle(cornerRadius: 40.0).stroke(recordingColor, lineWidth: 6))
                }

            }
            .onAppear{
                speechRecognizer.record(to: $recording)
                recordingColor = Color.green
                recordingText = "Recording"
                Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false) { timer in
                    speechRecognizer.stopRecording()
                    recordingFinished = true
                    Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { timer in
                        speechRecognizer.stopRecording()
                    }
                    self.answer = 1
                }
            }
        }
        else if (recordingFinished == true && test_recording(kana: next_kana, recording: recording)) {
            CorrectView(show_hiragana: $show_hiragana, recording: recording, next_kana: next_kana)
        }
        else if (recordingFinished == true) {
            IncorrectView(show_hiragana: $show_hiragana, recording: recording, next_kana: next_kana)
        }
    }

}

struct KanaView_Previews: PreviewProvider {

    static var previews: some View {
        Group {
            KanaView(show_hiragana: .constant(true), next_kana: get_random_hiragana())
            KanaView(show_hiragana: .constant(false), next_kana: get_random_katakana())
        }
    }
}
