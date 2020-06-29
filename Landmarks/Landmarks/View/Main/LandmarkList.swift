//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Ramiz Raja on 30/06/2020.
//  Copyright © 2020 Ramiz Raja. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(AppData.landmarkData) { landmark in 
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
