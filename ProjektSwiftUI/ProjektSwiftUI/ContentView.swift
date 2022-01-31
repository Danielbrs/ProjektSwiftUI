//
//  ContentView.swift
//  ProjektSwiftUI
//
//  Created by Daniel Boros / BBS2H20A on 24.01.22.
//

import SwiftUI

struct ContentView: View {
    
   @State var showComposeMessageView: Bool = false
    
    var body: some View{
        
        TabView{
            
        NavigationView {
        
        List(0..<4){
            _ in
            
            NavigationLink(destination: Text("Hier könnte deine Nachricht stehen")){
                SingleMessageView()
            }
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("Inbox")
        .navigationBarItems(trailing: Button(action: {showComposeMessageView.toggle()
        },
        
        label:{
            Image(systemName: "square.and.pencil")
        })
        )
        }
        
        .sheet(isPresented: $showComposeMessageView, content: {
            ZStack{
                Color.blue
                Text("Neuer Benutzer")
            }
        })
        
        .tabItem {
            Image(systemName: "envelope,fill")
            Text("Inbox")
        }
            //zweiter  Tab
            Text("Sent")
                .tabItem {
                    Image(systemName: "paperplane.fill")
                    Text("Sent")
                }
    }
}
}
    
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



