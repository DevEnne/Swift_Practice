//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by KimJei on 11/9/23.
//

import Foundation

struct DailyScrum { // DailyScrum의 구조체 선언
    var title: String // 제목 문자열
    var attendes : [String] // 회의 참가자를 저장하는 문자열 배열
    var lengthInMinutes : Int // 회의 소요시간을 나타내는 정수
    var theme : Theme
}

extension DailyScrum{
    static let sampleData : [DailyScrum] = // 코드 예시, 실제 데이터를 사용하기 전 테스트 목적으로 사용할 수 있음.
    [
        DailyScrum(title: "Design",
                attendes: ["Cathy", "Daisy", "Simon", "Jonathan"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        
        DailyScrum(title: "App Dev",
                   attendes: ["Cathy", "Gray", "Euna", "Luis", "Darla"],
                   lengthInMinutes: 5,
                   theme: .orange),
        
        DailyScrum(title: "Web Dev",
                   attendes: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                   lengthInMinutes: 5,
                   theme: .poppy)
    ]
}
