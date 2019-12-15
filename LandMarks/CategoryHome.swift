//
//  CategoryHome.swift
//  LandMarks
//
//  Created by KAWASHIMA Yoshiyuki on 2019/12/15.
//  Copyright © 2019 ykws. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationView {
            Text("LandMarks Content")
                .navigationBarTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
