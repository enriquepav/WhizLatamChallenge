//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 30/04/23.
//

import Foundation

// MARK: - Missions
struct Missions: Codable {
    let launches: [Launch]
}

// MARK: - Launch
struct Launch: Codable {
    let id, missionName, date, time: String
    let rocketName, rocketType: String
    let successful: Bool

    enum CodingKeys: String, CodingKey {
        case id
        case missionName = "mission_name"
        case date, time
        case rocketName = "rocket_name"
        case rocketType = "rocket_type"
        case successful
    }
}

