//
//  CircleImage.swift
//  LandMarks
//
//  Created by KAWASHIMA Yoshiyuki on 2019/11/24.
//  Copyright © 2019 Yoshiyuki Kawashima. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
