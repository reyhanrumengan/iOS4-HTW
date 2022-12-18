//
//  ConverterViewModel.swift
//  iOS4
//
//  Created by Reyhan Rumengan on 18.12.22.
//

import Foundation

class ConverterViewModel: ObservableObject{
    
    
    @Published private var converter = ConverterModel()
    
    var euro: String {
        get {
            String(format: "%.10f", converter.euro)
        }
        set{
            if let value = Double(newValue){
                converter.euro = value
            }
        }
    }
    
    var dollar: String {
        get {
            String(format: "%.10f", converter.dollar)
        }
        set{
            if let value = Double(newValue){
                converter.dollar = value
            }
        }
    }
    
    var pound: String {
        get {
            String(format: "%.10f", converter.pound)
        }
        set{
            if let value = Double(newValue){
                converter.pound = value
            }
        }
    }
}
