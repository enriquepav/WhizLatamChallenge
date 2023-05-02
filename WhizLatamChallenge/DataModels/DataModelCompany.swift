//
//  DataModelCompany.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 30/04/23.
//

import Foundation

struct Company: Decodable {
    let companyName, founderName, launchSites : String
    let year, employees, valuation: Int

    enum CodingKeys: String, CodingKey {
        case companyName, founderName, year, employees, launchSites, valuation
    }
}
