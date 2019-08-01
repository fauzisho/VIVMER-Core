//
//  VIVMERCore.swift
//  Pods-Example VIVMER
//
//  Created by UziApel on 01/08/19.
//

import Foundation

public class VIVMERCore : NSObject{
    class var bundle:Bundle{
        get{
            let podBundle   = Bundle(for: VIVMERCore.self)
            
            if let bundleURL = podBundle.url(forResource: "VIVMERCore", withExtension: "bundle") {
                return Bundle(url: bundleURL)!
            }else{
                return podBundle
            }
        }
    }
    
    open func test() -> Bool{
        return true
    }
}
