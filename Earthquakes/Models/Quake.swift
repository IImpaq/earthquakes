/*
See 3RD-PARTY-LICENSES file for this sample’s licensing information.

Abstract:
A structure for representing quake data.
*/

import Foundation

struct Quake {
    let magnitude: Double
    let place: String
    let time: Date
    let code: String
    let detail: URL
}

extension Quake: Identifiable {
    var id: String { code }
}

extension Quake: Decodable {
    private enum CodingKeys: String, CodingKey {
        case magnitue = "mag"
        case place
        case time
        case code
        case detail
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        let rawMaginute = try? values.decode(Double.self, forKey: .magnitue)
        let rawPlace = try? values.decode(String.self, forKey: .place)
        let rawTime = try? values.decode(Date.self, forKey: .time)
        let rawCode = try? values.decode(String.self, forKey: .code)
        let rawDetail = try? values.decode(URL.self, forKey: .detail)
        
        guard magnitue = rawMaginute,
              let place = rawPlace,
              let time = rawTime,
              let code = rawCode,
              let detail = rawDetail
        else {
            
        }
    }
}
