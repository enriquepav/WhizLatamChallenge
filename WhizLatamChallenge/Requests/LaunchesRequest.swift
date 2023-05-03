//
//  LaunchesRequest.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 2/05/23.
//

import Foundation

class LaunchesRequest: ObservableObject {
    
    func getLaunches() -> Launches {
        var launches : Launches? = nil
        do {
            
            launches = try JSONDecoder().decode(Launches.self, from: dataLaunches)
        }
        catch {
            // Couldn't create audio player object, log the error
            print("Error al decodificar la lista de lanzamientos: \(error)")
        }
        print(launches!)
        return launches!
    }
    
//    var launches = try? JSONDecoder().decode(Launches.self, from: dataLaunches)
}
