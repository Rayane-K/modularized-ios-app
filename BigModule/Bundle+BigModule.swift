//
//  Bundle+BigModule.swift
//  BigModule
//
//  Created by Kurrimboccus Rayane on 09/04/2019.
//  Copyright © 2019 Kurrimboccus Rayane. All rights reserved.
//

import Foundation

// This class allows us to use the bundle init for class
class FakeClass {}

extension Bundle {
    
    // Returns BigModule target bundle
    public static var bigModule: Bundle {
        return Bundle(for: FakeClass.self)
    }
    
}
