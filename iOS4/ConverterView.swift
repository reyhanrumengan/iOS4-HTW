//
//  ContentView.swift
//  iOS4
//
//  Created by Reyhan Rumengan 
//

import SwiftUI

struct ConverterView: View {
    
    @ObservedObject var converterViewModel: ConverterViewModel
    
    @State private var euro: String = ""
    @State private var dollar: String = ""
    @State private var pound: String = ""
    
    var body: some View {
        VStack {
            Text("Currency Converter").font(.title)
            
            HStack{
                Text("Rate € -> $")
                TextField("Euro to Dollar", text: $converterViewModel.dollar
                )
            }

            HStack{
                Text("Rate € -> £")
                TextField("Euro to Pound",text: $converterViewModel.pound)
            }
            
            HStack{
                TextField("Euro",text: $euro).onSubmit {
                    converterViewModel
                }
                Text("€")
            }
            
            HStack{
                TextField("Dollar",text: $dollar).onSubmit {
                    converterViewModel.dollar
                }
                Text("$")
            }
            
            HStack{
                TextField("Pound",text: $pound).onSubmit {
                    converterViewModel.pound
                }
                Text("£")
            }
        }
        
        
    }
}

struct ConverterView_Previews: PreviewProvider {
    static var previews: some View {
        ConverterView(converterViewModel: ConverterViewModel())
    }
}
