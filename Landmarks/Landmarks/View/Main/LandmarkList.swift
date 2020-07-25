//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Ramiz Raja on 30/06/2020.
//  Copyright © 2020 Ramiz Raja. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject private var appData: ObservableUserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $appData.showFavoritesOnly) {
                    Text("Favorites Only")
                }
                ForEach(appData.landmarks) { landmark in
                    if !self.appData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetailView(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
                .navigationBarTitle(Text("Landmarks"))
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(ObservableUserData())
    }
}
