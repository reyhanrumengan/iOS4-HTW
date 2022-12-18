//
//  iOS4App.swift
//  iOS4
//
//  Created by Reyhan Rumengan
//

import SwiftUI

@main
struct iOS4App: App {
    var body: some Scene {
        WindowGroup {
            ConverterView(converterViewModel: ConverterViewModel())
        }
    }
}
