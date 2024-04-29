//
//  MeetingView.swift
//  myfirstiosapp
//
//  Created by Imran Matin on 4/29/24.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 10, total: 15)
            HStack {
                VStack {
                    Text("Seconds Elapsed")
                    Label(
                        "300",
                        systemImage: "hourglass.tophalf.fill"
                    )
                }
                VStack {
                    Text("Seconds Remaining")
                    Label(
                        "600",
                        systemImage: "hourglass.bottomhalf.fill"
                    )
                }
            }
        }
    }
}

#Preview {
    MeetingView()
}
