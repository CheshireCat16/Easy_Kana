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
    @State var recordingText = "Preparing..."
    @State var recordingColor = Color.red
    @State var returnHome = false
    
    
    var body: some View {
        if (answer == 0) {
            VStack {
                Spacer()
                if show_hiragana {
                    Text(get_random_hiragana().get_kana())
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .frame(height: 150)
                }
                else{
                    Text(get_random_katakana().get_kana())
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .frame(height: 150)
                        .scaledToFill()
                }
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
        else if (returnHome == true){
            ContentView()
        }
        else if (recordingFinished == true && test_recording(kana: last_kana, recording: recording)) {
            CorrectView(show_hiragana: $show_hiragana, recording: recording)
        }
        else if (recordingFinished == true) {
            IncorrectView(show_hiragana: $show_hiragana, recording: recording)
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
