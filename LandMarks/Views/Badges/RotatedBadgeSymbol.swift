//
//  RotatedBadgeSymbol.swift
//  LandMarks
//
//  Created by KAWASHIMA Yoshiyuki on 2019/12/03.
//  Copyright © 2019 ykws. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: .init(degrees: 5))
}
