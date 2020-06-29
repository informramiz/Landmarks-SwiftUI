//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Ramiz Raja on 30/06/2020.
//  Copyright © 2020 Ramiz Raja. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: AppData.landmarkData[0])
    }
}
