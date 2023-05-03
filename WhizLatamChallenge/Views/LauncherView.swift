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
    @State var isPresented: Bool = false
    @State var selectedMission: Launch? = nil
    
    var body: some View {
        List(viewModel.missions, id: \.id) { mission in
            HStack(alignment: .center) {
                Image(systemName: "paperplane").resizable().frame(width: 20, height: 20).foregroundColor(Color.cyan).padding(10)
                VStack(alignment: .leading) {
                    Text("Mission: \(mission.missionName) ").font(.system(size: 9))
                    Text("Date/Time: \(mission.date) at \(mission.time)").font(.system(size: 9))
                    Text("Rocket: \(mission.rocketName) / \(mission.rocketType)").font(.system(size: 9))
                    if daysCalculate(dateMission: mission.date) < 0 {
                        Text("Days since:\(-daysCalculate(dateMission: mission.date))").font(.system(size: 9))
                    } else {
                        Text("Days from:\(daysCalculate(dateMission: mission.date))").font(.system(size: 9))
                    }
                    
                }.padding()
                if mission.successful {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 15, height: 15)
                        .padding(30)
                } else {
                    Circle()
                        .fill(Color.red)
                        .frame(width: 15, height: 15)
                        .padding(30)
                }
                
            }.onTapGesture {
                selectedMission = mission
                isPresented = true
                
            }.sheet(isPresented: $isPresented, onDismiss: {isPresented = false}, content: {
                Text("Articulo de lanzamiento \(selectedMission?.rocketName ?? "")")
                Text("ver Wikipedia \(selectedMission?.id ?? "")")
                Text("ver video")
            })
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
