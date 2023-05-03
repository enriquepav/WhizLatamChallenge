//
//  LaunchesInfo.swift
//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 2/05/23.
//

import Foundation

let jsonString = """
[
    {
       "id": "001",
       "mission_name": "Seven Waters",
       "date": "1991-09-14",
       "time": "20:57:13",
       "rocket_name": "Going Merry Go",
       "rocket_type": "Falcon 1",
       "successful": true
    },
    {
       "id": "002",
       "mission_name": "Ways to the moon",
       "date": "1994-01-26",
       "time": "10:12:09",
       "rocket_name": "Abensur",
       "rocket_type": "Falcon 1",
       "successful": false
    },
    {
        "id": "003",
        "mission_name": "East Blue",
        "date": "2023-10-30",
        "time": "10:12:09",
        "rocket_name": "SakuraMaru",
        "rocket_type": "Falcon 9",
        "successful": false
    }
]
"""

let launchesData = jsonString.data(using: .utf8)!



//{
//"id": "004",
//"mission_name": "MarineFord",
//"date":2025-12-13",
//"time": "10:12:09",
//"rocket_name": "Dark Night",
//"rocket_type": "Falcon Heavy",
//"successful": true
//},
//{
//"id": "005",
//"mission_name": "Ways to the moon",
//"date": "2000-02-28",
//"time": "10:12:09",
//"rocket_name": "Crew",
//"rocket_type": "Falcon 9",
//"successful": true
//}
