//
//  RecipeDetailsViewModel.swift
//  Recipes_SwiftUI
//
//  Created by Sabari on 28/07/21.
//

import Foundation

class RecipeDetailsViewModel: ObservableObject {
    
    @Published var isLoading:Bool = false
    @Published var recipeDetails:RecipeDetails!
    
    /// Get Recipe List
    func getRecipeDetails(recipeID:Int)
    {
        
        isLoading = true
        let urlString = "https://api.spoonacular.com/recipes/\(recipeID)/information?apiKey=\(apiKey)"
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
                    let responseData = try! JSONDecoder().decode(RecipeDetails.self, from: jsonData)
                    self.recipeDetails = responseData
                }
                
            }
            
        }
        
    }
}
