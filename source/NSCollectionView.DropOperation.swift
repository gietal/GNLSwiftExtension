//
//  NSCollectionView.DropOperation.swift
//  GNLSwiftExtension
//
//  Created by Gieta Laksmana on 7/21/18.
//  Copyright © 2018 Gieta Laksmana. All rights reserved.
//

extension NSCollectionView.DropOperation: CustomDebugStringConvertible {
    public var debugDescription: String {
        if self == .on {
            return "on"
        } else if self == .before {
            return "before"
        }
        return "unknown"
    }
}
