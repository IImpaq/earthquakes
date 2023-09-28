//
//  CacheEntryObject.swift
//  Earthquakes
//
//  Created by Marcus Gugacs on 28.09.23.
//

import Foundation

final class CacheEntryObject {
    let entry: CacheEntry
    
    init(entry: CacheEntry) { self.entry = entry }
}

enum CacheEntry {
    case inProgress(Task<QuakeLocation, Error>)
    case ready(QuakeLocation)
}
