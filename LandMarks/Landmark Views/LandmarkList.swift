//
//  LandmarkList.swift
//  LandMarks
//
//  Created by KAWASHIMA Yoshiyuki on 2019/11/27.
//  Copyright © 2019 ykws. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @State var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                if !self.showFavoritesOnly || landmark.isFavorite {
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
