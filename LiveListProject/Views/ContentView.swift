//
//  ContentView.swift
//  LiveListProject
//
//  Created by Fer Vargas on 06/05/21.
//

import SwiftUI

struct ContentView: View {
    var countryCont = CountryController()
    
    var body: some View {
        NavigationView {
            List(countryCont.countryList ) {
                country in
                NavigationLink(destination:DetailView(country: country)) {
                     Text(country.name)
                }
            }//List
            
            .navigationBarTitle("CountryList", displayMode: .inline)
            
            
            .navigationBarItems(
                trailing:NavigationLink(destination: AddCountryView(cityname: "Country")) {
                       
                    Image(systemName: "plus").foregroundColor(.blue)
                    }
            
            )
            
            
            
        }//Navigation View
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}

