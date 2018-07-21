//
//  Array.swift
//  GNLSwiftExtension
//
//  Created by Gieta Laksmana on 7/21/18.
//  Copyright © 2018 Gieta Laksmana. All rights reserved.
//

extension Array {
    
    public mutating func remove(at positions: Set<Int>) -> [Element] {
        // remove from the back of the array
        var removed = [Element]()
        let sortedPositions = positions.sorted().reversed()
        for index in sortedPositions {
            removed.append(self.remove(at: index))
        }
        return removed
    }
    
    public mutating func remove(matching include: (Element) -> Bool) -> [Element] {
        // remove from the back of the array
        var removed = [Element]()
        var i = self.count - 1
        while i >= 0 {
            if include(self[i]) {
                removed.append(self.remove(at: i))
            }
            
            i -= 1
        }
        return removed
    }
    
    
}
