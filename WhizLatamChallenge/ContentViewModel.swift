//
//  ContentViewModel.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 1/05/23.
//

import Foundation

final class ContentViewModel: ObservableObject {
    
    @Published var company = CompanyRequest().company
    
    @Published var missions = [Launch]()

    init() {
        loadMissions()
    }

    func loadMissions() {
        self.missions = LaunchesRequest().loadMissions().filter {
            $0.year >= Int(FilterManager.sharedInstance.minYear) &&
            $0.year <= Int(FilterManager.sharedInstance.maxYear)
        }.filter {
            if FilterManager.sharedInstance.filterSuccessful && FilterManager.sharedInstance.filterFailure {
                return true
            }
            if FilterManager.sharedInstance.filterSuccessful && $0.successful {
                return true
            }
            if FilterManager.sharedInstance.filterFailure && !$0.successful {
                return true
            }
            return false
        }
        
    }
}
