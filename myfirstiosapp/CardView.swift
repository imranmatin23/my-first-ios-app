//
//  CardView.swift
//  myfirstiosapp
//
//  Created by Imran Matin on 4/29/24.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
            }
        }
    }
}

#Preview {
    let scrum = DailyScrum.sampleData[0]
    let cardView = CardView(scrum: scrum)
        .background(scrum.theme.mainColor)
        .previewLayout(.fixed(width: 400, height: 60))
    return cardView
}
