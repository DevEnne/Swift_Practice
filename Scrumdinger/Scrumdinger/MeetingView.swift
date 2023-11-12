//
//  ContentView.swift
//  Scrumdinger
//
//  Created by KimJei on 10/4/23.
//

import SwiftUI
    
struct MeetingView: View { // View를 반환하는 뷰 프로토콜
    var body: some View { // 내용, 레이아웃 및 동작을
        VStack {
            ProgressView(value:5, total:15) // 진행 바
            HStack{
                VStack(alignment: .leading){ // (왼쪽 정렬)
                    Text("경과 시간")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill") // 레이블 추가 (시스템 이미지)
                }
                Spacer() // 공백
                VStack(alignment: .trailing){ // (오른쪽 정렬)
                    Text("남은 시간") // 텍스트
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: /*@START_MENU_TOKEN@*/.ignore/*@END_MENU_TOKEN@*/) // VoiceOver에 대한 접근성 설정 (VStack만 읽게 됨)
            .accessibilityLabel("남은 시간") // 시각적으로 표시되지 않는 텍스트 레이블로, 사용자에게 화면의 내용을 설명하는 역할 (VoiceOver, 시각장애인 유용)`
            .accessibilityValue("10분") // 특정 뷰의 현재 상태, 정보, 값을 설명하는 텍스트.
            Circle()
                .strokeBorder(lineWidth: 24) // 도형을 그릴 때 선을 그리는 방법을 커스터마이즈
            HStack{
                Text("Speaker 1 of 3")
                Spacer() // 공백
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next Speaker")
            }
        }
        .padding() // 가장자리로 가져오기
    }
}
    
struct MettingView_Previews: PreviewProvider { // 미리보기를 정의
    static var previews: some View {
        MeetingView()
    }
}
