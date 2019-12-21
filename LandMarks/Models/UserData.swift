//
//  UserData.swift
//  LandMarks
//
//  Created by KAWASHIMA Yoshiyuki on 2019/12/01.
//  Copyright © 2019 ykws. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profiles = Profile.default
}
