//
//  LaunchesRequest.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 2/05/23.
//

import Foundation

class LaunchesRequest {
    
    
    
    func loadMissions() -> [Launch]{
        
        let decoder = JSONDecoder()
        do {
            return try decoder.decode([Launch].self, from: launchesData)
        } catch {
            print("Error decoding JSON: \(error.localizedDescription)")
        }
        return []
    }
    
}

    

