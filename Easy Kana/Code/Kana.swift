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
var last_kana: Kana = Kana(kana: "", answerKey: [])

// Get alist of hiragana
private func get_hiragana() -> [Kana]{
    var hiragana_list: [Kana] = []
    
    hiragana_list.append(Kana(kana: "ある", answerKey: ["ある"]))
    hiragana_list.append(Kana(kana: "いま", answerKey: ["いま", "今"]))
    hiragana_list.append(Kana(kana: "うし", answerKey: ["うし", "牛"]))
    hiragana_list.append(Kana(kana: "えび", answerKey: ["えび", "蛇"]))
    hiragana_list.append(Kana(kana: "おく", answerKey: ["おく", "奥", "屋"]))
    hiragana_list.append(Kana(kana: "かも", answerKey: ["かも", "カモ", "鴨"]))
    
    return hiragana_list

    
}

// Get a list of katakana
private func get_katakana() -> [Kana]{
    var hiragana_list: [Kana] = []
    
    hiragana_list.append(Kana(kana: "アル", answerKey: ["ある"]))
    hiragana_list.append(Kana(kana: "イカ", answerKey: ["以下", "イカ", "いか", "１日", "1日"]))
    hiragana_list.append(Kana(kana: "ウマ", answerKey: ["うま", "馬"]))
    hiragana_list.append(Kana(kana: "エリ", answerKey: ["えり", "エリ", "ヘリ"]))
    hiragana_list.append(Kana(kana: "オフ", answerKey: ["オフ", "今"]))
    hiragana_list.append(Kana(kana: "カバ", answerKey: ["カバ", "かば", "カバー"]))
    
    return hiragana_list
    
}

// Test a recording against an answer key - return true or false
func test_recording(kana: Kana, recording: String) -> Bool {
    for answer in kana.get_AnswerKey() {
        if (recording == answer) {
            return true
        }
    }
    return false
}

// This gets a random hiragana
func get_random_hiragana() -> Kana {
    last_kana = hiraganas.randomElement()!
    return last_kana
    
}

// This gets a random katakana
func get_random_katakana() -> Kana {
    last_kana = katakanas.randomElement()!
    return last_kana
    
}
// This class holds each hiragana and katakana as well as keeps track of how many times
// it has been gotten wrong and write
class Kana {
    private var kana: String
    private var rightCount: Int
    private var wrongCount: Int
    private var answerKey: [String]
    
    // Initializes the Kana object and sets right and wrong count to zero
    init(kana: String, answerKey: [String]){
        self.kana = kana
        self.rightCount = 0
        self.wrongCount = 0
        self.answerKey = answerKey
    }
    
    // Gets the kana
    func get_kana() -> String {
        return self.kana
    }
    
    // Gets the number of time an item has been answered correctly
    func get_rightCount() -> Int {
        return self.rightCount
    }
    
    // Gets the answer key
    func get_AnswerKey() -> [String] {
        return self.answerKey
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
