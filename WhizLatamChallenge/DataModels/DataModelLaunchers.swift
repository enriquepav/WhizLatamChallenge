//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 30/04/23.
//

import Foundation

// MARK: - Launches
struct Launch: Codable {
    let id: String
    let missionName: String
    let date: String
    let time: String
    let rocketName: String
    let rocketType: String
    let successful: Bool

    enum CodingKeys: String, CodingKey {
        case id
        case missionName = "mission_name"
        case date
        case time
        case rocketName = "rocket_name"
        case rocketType = "rocket_type"
        case successful
    }
}

