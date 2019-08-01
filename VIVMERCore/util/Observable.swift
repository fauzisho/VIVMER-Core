//
//  Observable.swift
//  Pods-Example VIVMER
//
//  Created by UziApel on 07/02/19.
//  Copyright © 2019 uzi. All rights reserved.
//

import Foundation

open class Observable<T> {
    open var value: T {
        didSet {
            DispatchQueue.main.async {
                self.valueChanged?(self.value)
            }
        }
    }
    
    open var valueChanged: ((T) -> Void)?
    
    public init(value: T) {
        self.value = value
    }
    
    open func addObserver(enable: Bool = true, _ onChange: ((T) -> Void)?) {
        valueChanged = onChange
        if enable {
            onChange?(value)
        }
    }
    
    open func removeObserver() {
        valueChanged = nil
    }
    
}
