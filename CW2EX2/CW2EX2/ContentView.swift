//
//  ContentView.swift
//  CW2EX2
//
//  Created by khaled falah alazemi  on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var currency = ""
  
    var body: some View {
        
            VStack{
            Text("محول العملات العجيب!")
                .padding(50)
                .font(.largeTitle)
            TextField("العملة بالدينار", text : $currency)
                    .multilineTextAlignment(.center)
                    .padding(20)
                    .font(.subheadline)
                    .overlay(
                            Rectangle()
                                .stroke(.black, lineWidth: 2)
                                .padding(10)
                        )
                    .padding()
          
                Text("🇺🇸  $\(String(format: "%.2f", (Double(currency) ?? 0) * 3.28))")
                    .font(.title)
                Text("🇬🇧  £\(String(format: "%.2f", (Double(currency) ?? 0) * 2.46))")
                    .font(.title)
                    .padding()
                Text("🇪🇺  €\(String(format: "%.2f", (Double(currency) ?? 0) * 2.70))")
                    .font(.title)

                Spacer()
                Image("currency")
                    .resizable()
                    .frame(width: 430, height: 200)
                
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
