//
//  Badge.swift
//  LandMarks
//
//  Created by KAWASHIMA Yoshiyuki on 2019/12/03.
//  Copyright © 2019 ykws. All rights reserved.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0..<8) { i in
            RotatedBadgeSymbol(
                angle: .degrees(Double(i) / Double(8)) * 360.0
            )
            .opacity(0.5)
        }
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometory in
                self.badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometory.size.width / 2.0, y: (3.0 / 4.0) * geometory.size.height)
            }
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
