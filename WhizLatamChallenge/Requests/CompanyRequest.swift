//
//  CompanyRequest.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 30/04/23.
//

import Foundation


class CompanyRequest: ObservableObject {
    
    var company = try? JSONDecoder().decode(Company.self, from: dataCompany)
}

