//
//  LaunchesInfo.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 2/05/23.
//

import Foundation

let dataLaunches = """
{
  "launches": [
       {
           "id": "001",
           "missionName": "Seven Waters",
           "date": "14-09-1991",
           "time": "20:57:13",
           "rocketName": "Going Merry Go",
           "rocketType": "Falcon 1",
           "successful": true
       },
       {
           "id": "002",
           "missionName": "Ways to the moon",
           "date": "26-01-1993",
           "time": "10:12:09",
           "rocketName": "Abensur",
           "rocketType": "Falcon 1",
           "successful": false
       }
   ]
}
""".data(using: .utf8)!



//"""
//{
//  "launches": [
//       {
//           "id": "001",
//           "mission_name": "Seven Waters",
//           "date": "14-09-1991",
//           "time": "20:57:13",
//           "rocket_name": "Going Merry Go",
//           "rocket_type": "Falcon 1",
//           "successful": true
//       },
//       {
//           "id": "002",
//           "mission_name": "Ways to the moon",
//           "date": "26-01-1993",
//           "time": "10:12:09",
//           "rocket_name": "Abensur",
//           "rocket_type": "Falcon 1",
//           "successful": false
//       },
//       {
//           "id": "003",
//           "mission_name": "East Blue",
//           "date": "27-09-1995",
//           "time": "20:57:13",
//           "rocket_name": "Meleoron",
//           "rocket_type": "Falcon 9",
//           "successful": true
//       },
//       {
//           "id": "004",
//           "mission_name": "MarineFord",
//           "date": "28-04-2001",
//           "time": "20:57:13",
//           "rocket_name": "Thousand Sunny",
//           "rocket_type": "Falcon Heavy",
//           "successful": false
//       }
//   ]
//}
//"""
