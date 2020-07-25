//
//  ObservableAppData.swift
//  Landmarks
//
//  Created by Ramiz Raja on 25/07/2020.
//  Copyright © 2020 Ramiz Raja. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class ObservableUserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = AppData.landmarkData
}
