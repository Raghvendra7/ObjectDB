//
//  SelectionPredicate.swift
//  ObjectDB
//
//  Created by Raghvendra on 21/01/17.
//  Copyright © 2017 OneCorp. All rights reserved.
//

import Foundation



public class SelectionPredicate<ObjectClass: NSObject>: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Public class methods
    
    
    // MARK: Private class methods
    
    
    // MARK: Initializers
    
    public init(block: @escaping (_ object: ObjectClass) -> Bool) {
        super.init()
        
        
        // Initialize predicate block
        
        predicateBlock = block
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Object variables & properties
    
    private var predicateBlock: ((_ object: ObjectClass) -> Bool)!
    
    
    // MARK: Public object methods
    
    public func evaluateWithObject(object: ObjectClass) -> Bool {
        let result = predicateBlock(object)
        return result
    }
    
    
    // MARK: Private object methods
    
    
    // MARK: Protocol methods
    
}
