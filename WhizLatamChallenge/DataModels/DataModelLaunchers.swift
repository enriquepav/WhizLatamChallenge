//
//  DataModelLaunchers.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 30/04/23.
//

import Foundation

struct Launcher: Decodable {
    let mission, date, time, name, type, launchDate : String

    enum CodingKeys: String, CodingKey {
        case mission, date, time, name, type, launchDate
    }
}

struct Launchers: Decodable {
    let launcher : Launcher
}
