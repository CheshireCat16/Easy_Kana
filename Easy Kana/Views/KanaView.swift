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
    @State var recording = ""
    @State var recordingFinished = false
    private let speechRecognizer = SpeechRecognizer()
    @State var next_kana: Kana = get_random_hiragana()
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
                if (show_hiragana) {
                    next_kana = get_random_hiragana()
                } else {
                    next_kana = get_random_katakana()
                }
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
            CorrectView(show_hiragana: $show_hiragana, recording: $recording, next_kana: $next_kana, recordingFinished: $recordingFinished)
        }
        else if (recordingFinished == true) {
            IncorrectView(show_hiragana: $show_hiragana, recording: $recording, next_kana: $next_kana, recordingFinished: $recordingFinished)
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
