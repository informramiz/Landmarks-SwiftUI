//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Ramiz Raja on 30/06/2020.
//  Copyright © 2020 Ramiz Raja. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @State var showFavoritesOnly = false
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                ForEach(AppData.landmarkData) { landmark in
                    if !self.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetailView(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
                .navigationBarTitle("Landmarks")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
