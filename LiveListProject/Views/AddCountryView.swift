//
//  AddCountryView.swift
//  LiveListProject
//
//  Created by Fer Vargas on 13/05/21.
//

import SwiftUI

struct AddCountryView: View {
    
    @EnvironmentObject var countryController: CountryController
    
    @State var countryName: String = ""
    @State var population: String = ""
    
    var body: some View {
        VStack{
            Text("Please write a country and its population")
                .font(.title2)
                .multilineTextAlignment(.center)
            
            HStack{
                Image(systemName: "pencil.circle")
                    .foregroundColor(.gray)
                TextField("Country", text: $countryName)
            }
            
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1.0))
            
            HStack{
                Image(systemName: "person.3")
                    .foregroundColor(.gray)
                TextField("Pupulation", text: $population)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1.0))
            
            HStack{
                Button(action: {}) {
                    Text("Cancel")
                }
                .padding(.all)
                .padding(.horizontal)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(7.0)
                
                Button(action: {
                    countryController.addCountry(newCountry: CountryModel(id: UUID(), name: countryName, population: population))
                }) {
                    Text("Add Country")
                }
                
                .padding(.all)
                
                
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(7.0)
            }
            .padding(.top, 30)
            
        }//VStack
        .padding(.horizontal, 10)
        .navigationBarTitle("Add a New Country")
    }
}

struct AddCountryView_Previews: PreviewProvider {
    
    static var previews: some View {
        AddCountryView()
    }
}
