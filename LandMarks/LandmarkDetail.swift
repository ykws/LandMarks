//
//  LandmarkDetail.swift
//  LandMarks
//
//  Created by KAWASHIMA Yoshiyuki on 2019/11/23.
//  Copyright © 2019 Yoshiyuki Kawashima. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree Natinal Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
