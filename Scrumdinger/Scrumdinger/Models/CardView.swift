//
//  CardView.swift
//  Scrumdinger
//
//  Created by KimJei on 11/9/23.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        Text("Hello, World!")
            .background(scrum.theme.mainColor)
    }
}


struct CardView_Previews: PreviewProvider { 
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
    }
}
