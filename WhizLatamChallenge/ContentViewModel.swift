//
//  ContentViewModel.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 1/05/23.
//

import Foundation

final class ContentViewModel: ObservableObject {
    
    @Published var company = CompanyRequest().company
    
    @Published var launches = LaunchesRequest().getLaunches()
    
    
}
