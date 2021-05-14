//
//  AddCountryView.swift
//  LiveListProject
//
//  Created by Fer Vargas on 13/05/21.
//

import SwiftUI

struct AddCountryView: View {
    
    @State var cityName: String
    var body: some View {
        VStack{
            
            TextField("Add new Country view", text: $cityName)
            
            Text(cityName)
            
        }//VStack
        .navigationBarTitle("Add a New Country")
    }
}

struct AddCountryView_Previews: PreviewProvider {
    static var previews: some View {
        AddCountryView(cityName: "Country")
    }
}
