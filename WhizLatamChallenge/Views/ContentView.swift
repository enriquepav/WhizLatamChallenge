//
//  ContentView.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 30/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var companySelected = ContentViewModel()
    @State var isPresented: Bool = false
    
    
    var body: some View {
        VStack {
            Text("SPACE X")
            Spacer()
            HStack {
                Spacer()
                Text("COMPANY")
                Spacer()
                Button(action: {
                   isPresented = true
                }) {
                    Image(systemName: "line.horizontal.3.decrease.circle")
                        .foregroundColor(.white)
                        .imageScale(.large)
                }
            }.sheet(isPresented: $isPresented, onDismiss: {
                isPresented = false
               companySelected.loadMissions()
                
            }, content: { FiltersView()
            }).background(Color.gray).padding(10)
            
            Spacer()
            Text("""
                \(companySelected.company?.companyName ?? "NoCompany") was founded by \(companySelected.company?.founderName ?? "NoCompany") in \(companySelected.company?.year ?? 1800). It was how \(companySelected.company?.employees ?? 100) employees, \(companySelected.company?.launchSites ?? "NoCompany") launch sites, and is valued at USD \(companySelected.company?.valuation ?? 10000).
                """)
            Spacer()
            HStack {
                Spacer()
                Text("LAUNCHES")
                Spacer()
            }.background(Color.gray).padding(10)
            Spacer()
            LauncherView()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
