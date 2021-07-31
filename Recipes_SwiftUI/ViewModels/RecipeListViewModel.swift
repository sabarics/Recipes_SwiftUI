//
//  RecipeListViewModel.swift
//  Recipes_SwiftUI
//
//  Created by Sabari on 27/07/21.
//

import SwiftUI
import Foundation
import Combine

class RecipeListViewModel: ObservableObject {
    
    @Published var recipeData:RecipeListData!
    @Published var recipeList:[Recipe] = []
    @Published var trendingRecipeList:[RecipeDetails] = []
    @Published var isLoading:Bool = false
    @Published var isTrendingLoading:Bool = false
    @Published var searchtext:String = ""
    @Published var cuisineText:String = getCusinesList().first ?? ""
    var subscription: Set<AnyCancellable> = []
    
    
    init() {
           $searchtext
               .debounce(for: .milliseconds(800), scheduler: RunLoop.main) // debounces the string publisher, such that it delays the process of sending request to server.
               .removeDuplicates()
               .map({ (string) -> String? in
                   if string.count < 1 {
                    self.getRecipeList(cusine: self.cuisineText, searchText: "")
                       return nil
                   }
                   
                   return string
               }) // prevents sending numerous requests and sends nil if the count of the characters is less than 1.
               .compactMap{ $0 } // removes the nil values so the search string does not get passed down to the publisher chain
               .sink { (_) in
                   //
               } receiveValue: { [self] (searchField) in
                   getRecipeList(cusine: cuisineText, searchText: searchField)
               }.store(in: &subscription)
       }
    
    /// Get Recipe List
    func getRecipeList(cusine:String,searchText:String)
    {
        isLoading = true
        let searchString = searchText.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) ?? ""
        let urlString = "https://api.spoonacular.com/recipes/complexSearch?apiKey=\(apiKey)&query=\(searchString)&cuisine=\(cusine)&offset=0&number=40"
        guard let url = URL(string: urlString) else
        {
            fatalError("invalid request URL")
        }
        WebServiceWrapper.shared.jsonGetTask(url: url) { (response) in
            
            self.isLoading = false
            switch response
            {
            case .Error(let error):
                print(error.localizedDescription)
                return
            case .ApiError(let apiError):
                print(apiError.debugDescription)
            case .Success(let json):
                //6 parsing the Json response
                if let jsonData = try? JSONSerialization.data(withJSONObject: json)
                {
                    let responseData = try! JSONDecoder().decode(RecipeListData.self, from: jsonData)
                    self.recipeData = responseData
                    self.recipeList = responseData.results ?? []
                }
                
            }
            
        }
        
    }
    
    func getRecommendedRecipes(){
        
        //https://api.spoonacular.com/recipes/random?apiKey=&number=1
        isTrendingLoading = true
        let urlString = "https://api.spoonacular.com/recipes/random?apiKey=\(apiKey)&number=6"
        guard let url = URL(string: urlString) else
        {
            fatalError("invalid request URL")
        }
        WebServiceWrapper.shared.jsonGetTask(url: url) { (response) in
            
            self.isTrendingLoading = false
            switch response
            {
            case .Error(let error):
                print(error.localizedDescription)
                return
            case .ApiError(let apiError):
                print(apiError.debugDescription)
            case .Success(let json):
                //6 parsing the Json response
                if let jsonData = try? JSONSerialization.data(withJSONObject: json)
                {
                    let responseData = try! JSONDecoder().decode(RecipeDetailsData.self, from: jsonData)
                    self.trendingRecipeList = responseData.recipes ?? []
                }
                
            }
            
        }
    }
}


func getCusinesList() -> [String]{
    return ["African",
            "American",
            "British",
            "Cajun",
            "Caribbean",
            "Chinese",
            "Eastern European",
            "European",
            "French",
            "German",
            "Greek",
            "Indian",
            "Irish",
            "Italian",
            "Japanese",
            "Jewish",
            "Korean",
            "Latin American",
            "Mediterranean",
            "Mexican",
            "Middle Eastern",
            "Nordic",
            "Southern",
            "Spanish",
            "Thai",
            "Vietnamese"]
}
