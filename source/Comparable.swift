//
//  Comparable.swift
//  GNLSwiftExtension
//
//  Created by Gieta Laksmana on 7/21/18.
//  Copyright © 2018 Gieta Laksmana. All rights reserved.
//

import Foundation

public func clamp<T>(_ item: T, low: T, high: T) -> T where T: Comparable {
    if item < low {
        return low
    }
    if item > high {
        return high
    }
    return item
}
