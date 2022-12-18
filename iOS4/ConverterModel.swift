//
//  ConverterModel.swift
//  iOS4
//
//  Created by Reyhan Rumengan
//

import Foundation

struct ConverterModel{
    
//    var dollar: Double = 1.0413
//
//    var pound: Double = 0.85933

    var euro: Double = 1
    
    var dollar: Double{
        get{
            euro * 1.0413
        }
        set {
            euro = newValue / 1.0413
        }
    }
    
    var pound: Double{
        get{
            euro * 0.85933
        }
        set {
            euro = newValue / 0.85933
        }
    }

}
