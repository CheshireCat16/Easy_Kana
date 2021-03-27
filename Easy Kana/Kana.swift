//
//  Kana.swift
//  Easy Kana
//
//  Created by administrator on 3/27/21.
//

import Foundation

// These variables hold the list of hiragana and katakana to be studied
var hiraganas: [Kana] = get_hiragana()
var katakanas: [Kana] = get_katakana()

// Get alist of hiragana
private func get_hiragana() -> [Kana]{
    var hiragana_list: [Kana] = []
    
    hiragana_list.append(Kana(kana: "あ"))
    hiragana_list.append(Kana(kana: "い"))
    hiragana_list.append(Kana(kana: "う"))
    hiragana_list.append(Kana(kana: "え"))
    hiragana_list.append(Kana(kana: "お"))
    hiragana_list.append(Kana(kana: "か"))
    
    return hiragana_list

    
}

// Get a list of katakana
private func get_katakana() -> [Kana]{
    var hiragana_list: [Kana] = []
    
    hiragana_list.append(Kana(kana: "ア"))
    hiragana_list.append(Kana(kana: "イ"))
    hiragana_list.append(Kana(kana: "ウ"))
    hiragana_list.append(Kana(kana: "エ"))
    hiragana_list.append(Kana(kana: "オ"))
    hiragana_list.append(Kana(kana: "カ"))
    
    return hiragana_list

    
}

// This class holds each hiragana and katakana as well as keeps track of how many times
// it has been gotten wrong and write
class Kana {
    private var kana: String
    private var rightCount: Int
    private var wrongCount: Int
    
    // Initializes the Kana object and sets right and wrong count to zero
    init(kana: String){
        self.kana = kana
        self.rightCount = 0
        self.wrongCount = 0
    }
    
    // Gets the kana
    func get_kana() -> String {
        return self.kana
    }
    
    // Gets the number of time an item has been answered correctly
    func get_rightCount() -> Int {
        return self.rightCount
    }
    
    // Gets the number of time an item has been answered correctly
    func get_wrongCount() -> Int {
        return self.wrongCount
    }
    
    // Incrementals rightCount
    func inc_rightCount() {
        self.rightCount += 1
    }
    
    // Incrementals wrongCount
    func inc_wrongCount() {
        self.wrongCount += 1
    }
}
