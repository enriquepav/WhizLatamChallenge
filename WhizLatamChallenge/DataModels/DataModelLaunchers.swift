//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 30/04/23.
//

import Foundation

// MARK: - Launches
struct Launches: Decodable {
    let launches: [Launch]
}

// MARK: - Launch
struct Launch: Decodable {
    let id, missionName, date, time: String
    let rocketName, rocketType: String
    let successful: Bool

    enum CodingKeys: String, CodingKey {
        case id, missionName, date, time, rocketName, rocketType, successful
    }
}

