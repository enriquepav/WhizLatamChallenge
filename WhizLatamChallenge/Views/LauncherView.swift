//
//  LauncherView.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 2/05/23.
//

import SwiftUI

struct LauncherView: View {
    
    @ObservedObject var viewModel = ContentViewModel()
    @State private var startDate = Date()
    
    var body: some View {
        List(viewModel.missions, id: \.id) { mission in
            HStack(alignment: .center) {
                Image(systemName: "paperplane").resizable().frame(width: 40, height: 40).foregroundColor(Color.cyan).padding(10)
                VStack(alignment: .leading) {
                    Text("Mission: \(mission.missionName) ")
                    Text("Date/Time: \(mission.date) at \(mission.time)")
                    Text("Rocket: \(mission.rocketName) / \(mission.rocketType)")
                    if daysCalculate(dateMission: mission.date) < 0 {
                        Text("Days since:\(-daysCalculate(dateMission: mission.date))")
                    } else {
                        Text("Days from:\(daysCalculate(dateMission: mission.date))")
                    }
                    
                }.padding()
                if mission.successful {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 30, height: 30)
                        .padding(30)
                } else {
                    Circle()
                        .fill(Color.red)
                        .frame(width: 30, height: 30)
                        .padding(30)
                }
                
            }
        }
    }
    func daysCalculate(dateMission: String) -> Int {
        let dateString = dateMission
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.date(from: dateString)
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: Date(), to: date ?? Date())
        return components.day ?? 0
    }
}


struct LauncherView_Previews: PreviewProvider {
    static var previews: some View {
        LauncherView()
    }
}
