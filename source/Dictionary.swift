//
//  File.swift
//  GNLSwiftExtension
//
//  Created by Gieta Laksmana on 7/21/18.
//  Copyright © 2018 Gieta Laksmana. All rights reserved.
//

extension Dictionary {
    public func contains(key: Key) -> Bool {
        return self.index(forKey: key) != nil
    }
}
