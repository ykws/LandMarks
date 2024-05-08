//
//  HikeBadge.swift
//  LandMarks
//
//  Created by KAWASHIMA Yoshiyuki on 2019/12/21.
//  Copyright © 2019 ykws. All rights reserved.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    var body: some View {
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibility(label: Text("Badge for \(name)."))
        }
    }
}

#Preview {
    HikeBadge(name: "Preview Testing")
}
