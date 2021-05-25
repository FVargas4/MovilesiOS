//
//  ContentView.swift
//  LiveListProject
//
//  Created by Fer Vargas on 06/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var countryController = CountryController()
    
    var body: some View {
        NavigationView {
            List(countryController.countryList ) { country in
                NavigationLink(destination: DetailView(country: country)) {
                     Text(country.name)
                }
            }//List
            
            .navigationBarTitle("CountryList", displayMode: .inline)
            
            
            .navigationBarItems(
                trailing:
                        NavigationLink(
                            destination: AddCountryView().environmentObject(countryController)) {
                        Image(systemName: "plus").foregroundColor(/*@START_MENU_TOKEN*/.blue/*@END_MENU_TOKEN*/)
                    })
        }//Navigation View
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}

