//
//  NSMenu.swift
//  GNLSwiftExtension
//
//  Created by Gieta Laksmana on 7/21/18.
//  Copyright © 2018 Gieta Laksmana. All rights reserved.
//

import Foundation

extension NSMenu {
    func item(withIdentifier identifier: NSUserInterfaceItemIdentifier, recursive: Bool = false) -> NSMenuItem? {
        for item in self.items {
            if recursive {
                if let childResult = item.menu?.item(withIdentifier: identifier, recursive: recursive) {
                    return childResult
                }
            }
            if item.identifier == identifier {
                return item
            }
        }
        
        return nil
    }
    
}
