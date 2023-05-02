//
//  ContentView.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 30/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var companySelected = ContentViewModel()
    
    
    var body: some View {
        VStack {
            Text("COMPANY")
            Spacer()
            Text("""
                \(companySelected.company?.companyName ?? "NoCompany") was founded by \(companySelected.company?.founderName ?? "NoCompany") in \(companySelected.company?.year ?? 1800). It was how \(companySelected.company?.employees ?? 100) employees, \(companySelected.company?.launchSites ?? "NoCompany") launch sites, and is valued at USD \(companySelected.company?.valuation ?? 10000).
                """)
            Spacer()
            Text("LAUNCHES")
            Spacer()
            List {
                LauncherView()
            }
            
            
            
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
