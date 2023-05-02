//
//  LaunchesRequest.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 2/05/23.
//

import Foundation

class LaunchesRequest: ObservableObject {
    
    var launches = try? JSONDecoder().decode(Launch.self, from: dataLaunches)
}
