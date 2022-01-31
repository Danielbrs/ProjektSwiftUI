//
//  ContentView.swift
//  ProjektSwiftUI
//
//  Created by Daniel Boros / BBS2H20A on 24.01.22.
//

import SwiftUI


    
struct SingleMessageView: View{
    var body: some View {
        
        HStack{
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 42, height: 42)
                .foregroundColor(.gray)
            
            VStack(alignment: .leading){
                
                HStack{
                Text("Absender")
                    .font(Font.headline)
                
                 Spacer()
                
                Text("2022-17-08")
                    .font(Font.subheadline.monospacedDigit())
                    .foregroundColor(.secondary)
                }
                
                Text("Alles hat  ein Ende nur die Wusrt hat zwei;)")
                    .font(Font.subheadline)
            }
        }
    }
}

struct ContentView_PreviewsProvider{
    static var previews: some View{
        ContentView()
    }
}

