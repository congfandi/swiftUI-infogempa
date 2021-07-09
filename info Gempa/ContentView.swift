//
//  ContentView.swift
//  info Gempa
//
//  Created by Cong Fandi on 09/07/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkingManager  = NetworkingManager()
             var body: some View {
                 NavigationView{
                     List(networkingManager.dataList.features,id: \.properties){ data in
                         NavigationLink(destination: DetailView(data: data)){
                             ItemList(data: data)
                         }.navigationBarTitle("Info Gempa")
                     }
                 }
             }
            }

        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
