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
        NavigationView {
            List(AppData.landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetailView()) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
