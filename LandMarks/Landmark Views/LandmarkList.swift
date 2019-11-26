//
//  LandmarkList.swift
//  LandMarks
//
//  Created by KAWASHIMA Yoshiyuki on 2019/11/27.
//  Copyright © 2019 Yoshiyuki Kawashima. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarkData, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
