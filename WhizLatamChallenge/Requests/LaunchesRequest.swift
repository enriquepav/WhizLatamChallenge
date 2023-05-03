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
//
//    func decodeLaunches(from dataLaunches: Data) throws -> [Launch] {
//        let decoder = JSONDecoder()
//        var missions:[Launch] = []
//
//        do {
//            missions = try decoder.decode([Launch].self, from: launchesData)
//            print(missions)
//        } catch {
//            print("Error: \(error.localizedDescription)")
//        }
//
//        return missions
//    }
    

