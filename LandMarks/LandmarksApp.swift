//
//  LandmarksApp.swift
//  LandMarks
//
//  Created by KAWASHIMA Yoshiyuki on 2019/11/23.
//  Copyright © 2019 ykws. All rights reserved.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
