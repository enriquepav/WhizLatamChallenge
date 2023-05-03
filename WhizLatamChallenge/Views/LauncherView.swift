//
//  LauncherView.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 2/05/23.
//

import SwiftUI

struct LauncherView: View {
    
    var launches = ContentViewModel().launches
    
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "paperplane").resizable().frame(width: 40, height: 40).foregroundColor(Color.cyan).padding(10)
            VStack(alignment: .leading) {
                Text("Mission:")
                Text("Date/Time:")
                Text("Rocket:")
                Text("Days:")
            }.padding()
            Circle()
                .fill(Color.green)
                .frame(width: 30, height: 30)
                .padding(30)
        }
    }
}

struct LauncherView_Previews: PreviewProvider {
    static var previews: some View {
        LauncherView()
    }
}
