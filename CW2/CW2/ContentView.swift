//
//  ContentView.swift
//  CW2
//
//  Created by khaled falah alazemi  on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var track1 = "iOS"
    @State var track2 = "Gamedev"
    @State var track3 = "Web"
    @State var track4 = "Android"
    @State var image = "question"

    var body: some View {
        VStack{
            Text("ماهو المسار المفضل لديك")
                .padding()
                .font(.largeTitle)
            Image(image)
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            
            Text(track1)
                .foregroundColor(.white)
                .font(.title2)
                .padding()
                .frame(width: 150, height: 40)
                .background(
                    Color.teal
                    )
                .onTapGesture {
                    image = "ios"
                }
                .onLongPressGesture {
                    image = "question"
                }
                
                .clipShape(RoundedRectangle(cornerRadius: 50))
            Text(track2)
                .foregroundColor(.white)
                .font(.title2)
                .padding()
                .frame(width: 150, height: 40)
                .background(
                    Color.red
                    )
                .onTapGesture {
                    image = "gamedev"
                }
                .onLongPressGesture {
                    image = "question"
                }
                .clipShape(RoundedRectangle(cornerRadius: 50))
            Text(track3)
                .foregroundColor(.white)
                .font(.title2)
                .padding()
                .frame(width: 150, height: 40)
                .background(
                    Color.blue
                    )
                .onTapGesture {
                    image = "Web"
                }
                .onLongPressGesture {
                    image = "question"
                }
                .clipShape(RoundedRectangle(cornerRadius: 50))
        
        Text(track4)
            .foregroundColor(.white)
            .font(.title2)
            .padding()
            .frame(width: 150, height: 40)
            .background(
                Color.green
                )
            .onTapGesture {
                image = "Android"
            }
            .onLongPressGesture {
                image = "question"
            }
            .clipShape(RoundedRectangle(cornerRadius: 50))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
