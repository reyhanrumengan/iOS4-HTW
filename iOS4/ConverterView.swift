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
                    .padding(.leading)
                Text("1.10413")
                .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                .border(.secondary)
            }

            HStack{
                Text("Rate € -> £")
                    .padding(.leading)
                Text("0.85933")
                    .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                    .border(.secondary)
            }
            
            HStack{
                TextField("Euro",text: $euro).onSubmit {
                    converterViewModel.dollar
                }
                .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                .border(.secondary).padding(.leading)
                Text("€")
                    .padding(.trailing)
            }
            
            HStack{
                TextField("Dollar",text: $dollar).onSubmit {
                    converterViewModel.dollar
                }
                .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                .border(.secondary).padding(.leading)
                Text("$")
                    .padding(.trailing)
            }
            
            HStack{
                TextField("Pound",text: $pound).onSubmit {
                    converterViewModel.pound
                }
                .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                .border(.secondary).padding(.leading)
                Text("£")
                    .padding(.trailing)
            }
        }
        
        
    }
}

struct ConverterView_Previews: PreviewProvider {
    static var previews: some View {
        ConverterView(converterViewModel: ConverterViewModel())
    }
}


