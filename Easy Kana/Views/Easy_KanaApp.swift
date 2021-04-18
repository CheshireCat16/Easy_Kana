//  Basic start of the app
//
//  Easy_KanaApp.swift
//  Easy Kana

import SwiftUI

@main
struct Easy_KanaApp: App {
    @State var next_kana = get_random_hiragana()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView(next_kana: $next_kana)
            }

        }
    }
}
