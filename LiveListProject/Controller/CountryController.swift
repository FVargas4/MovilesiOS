//
//  CountryController.swift
//  LiveListProject
//
//  Created by Fer Vargas on 06/05/21.
//

import Foundation

class CountryController: ObservableObject {
    // Create a variable which will hold the data for the list
    @Published var countryList: [CountryModel]
    
    init() {
        //put some Objects into the array - Constructor
        self.countryList = [
            CountryModel(id: UUID(), name: "Mexico", population: "127M"),
            CountryModel(id: UUID(), name: "USA", population: "332M"),
            CountryModel(id: UUID(), name: "France", population: "67M"),
            CountryModel(id: UUID(), name: "Canada", population: "37M"),
            CountryModel(id: UUID(), name: "Denmark", population: "10M")
            
        ]
    }
    func addCountry(newCountry: CountryModel){
        countryList.append(newCountry)
    }
}
