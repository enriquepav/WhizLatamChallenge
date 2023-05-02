//  WhizLatamChallenge
//
//  Created by MAC1DIGITAL20 on 30/04/23.
//

import Foundation

// MARK: - Missions
struct Missions: Codable {
    let launches: [Launch]
}

// MARK: Missions convenience initializers and mutators

extension Missions {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Missions.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        launches: [Launch]? = nil
    ) -> Missions {
        return Missions(
            launches: launches ?? self.launches
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Launch
struct Launch: Codable {
    let id, missionName, date, time: String
    let rocketName, rocketType: String
    let successful: Bool

    enum CodingKeys: String, CodingKey {
        case id
        case missionName = "mission_name"
        case date, time
        case rocketName = "rocket_name"
        case rocketType = "rocket_type"
        case successful
    }
}

// MARK: Launch convenience initializers and mutators

extension Launch {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Launch.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: String? = nil,
        missionName: String? = nil,
        date: String? = nil,
        time: String? = nil,
        rocketName: String? = nil,
        rocketType: String? = nil,
        successful: Bool? = nil
    ) -> Launch {
        return Launch(
            id: id ?? self.id,
            missionName: missionName ?? self.missionName,
            date: date ?? self.date,
            time: time ?? self.time,
            rocketName: rocketName ?? self.rocketName,
            rocketType: rocketType ?? self.rocketType,
            successful: successful ?? self.successful
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

