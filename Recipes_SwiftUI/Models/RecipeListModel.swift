//
//  RecipeListModel.swift
//  Recipes_SwiftUI
//
//  Created by Sabari on 27/07/21.
//

import Foundation
/*
 {
     "results": [
         {
             "id": 663078,
             "title": "Thai \"Chicken\" Wraps",
             "image": "https://spoonacular.com/recipeImages/663078-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 654307,
             "title": "Ozoni",
             "image": "https://spoonacular.com/recipeImages/654307-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 45937,
             "title": "Mole Pork",
             "image": "https://spoonacular.com/recipeImages/45937-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 663136,
             "title": "Thai Pizza",
             "image": "https://spoonacular.com/recipeImages/663136-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 653399,
             "title": "Nutty Rice",
             "image": "https://spoonacular.com/recipeImages/653399-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 637876,
             "title": "Chicken 65",
             "image": "https://spoonacular.com/recipeImages/637876-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 640182,
             "title": "Cottage Pie",
             "image": "https://spoonacular.com/recipeImages/640182-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 1096294,
             "title": "Chori-Pollo",
             "image": "https://spoonacular.com/recipeImages/1096294-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 634476,
             "title": "Bbq Chicken",
             "image": "https://spoonacular.com/recipeImages/634476-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 633105,
             "title": "Autumn Salad",
             "image": "https://spoonacular.com/recipeImages/633105-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 716342,
             "title": "Chicken Suya",
             "image": "https://spoonacular.com/recipeImages/716342-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 652134,
             "title": "Mixed Paella",
             "image": "https://spoonacular.com/recipeImages/652134-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 657379,
             "title": "Pumpkin Soup",
             "image": "https://spoonacular.com/recipeImages/657379-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 657067,
             "title": "Pozole Verde",
             "image": "https://spoonacular.com/recipeImages/657067-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 634977,
             "title": "Bihon Pancit",
             "image": "https://spoonacular.com/recipeImages/634977-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 665491,
             "title": "Yakhni Puloa",
             "image": "https://spoonacular.com/recipeImages/665491-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 1096263,
             "title": "Broccoli Soup",
             "image": "https://spoonacular.com/recipeImages/1096263-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 665781,
             "title": "Zucchini Rice",
             "image": "https://spoonacular.com/recipeImages/665781-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 633959,
             "title": "Balti Chicken",
             "image": "https://spoonacular.com/recipeImages/633959-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 638420,
             "title": "Chicken Wings",
             "image": "https://spoonacular.com/recipeImages/638420-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 638308,
             "title": "Chicken Satay",
             "image": "https://spoonacular.com/recipeImages/638308-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 663971,
             "title": "Turbo Chicken",
             "image": "https://spoonacular.com/recipeImages/663971-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 659907,
             "title": "Shrimp & Orzo",
             "image": "https://spoonacular.com/recipeImages/659907-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 632810,
             "title": "Asian Chicken",
             "image": "https://spoonacular.com/recipeImages/632810-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 664359,
             "title": "Veal Piccatas",
             "image": "https://spoonacular.com/recipeImages/664359-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 648432,
             "title": "Jambalaya Stew",
             "image": "https://spoonacular.com/recipeImages/648432-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 629963,
             "title": "chilli chicken",
             "image": "https://spoonacular.com/recipeImages/629963-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 663144,
             "title": "Thai Red Curry",
             "image": "https://spoonacular.com/recipeImages/663144-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 648746,
             "title": "Karahi Chicken",
             "image": "https://spoonacular.com/recipeImages/648746-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 715467,
             "title": "Turkey Pot Pie",
             "image": "https://spoonacular.com/recipeImages/715467-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 660128,
             "title": "Simple Rendang",
             "image": "https://spoonacular.com/recipeImages/660128-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 636488,
             "title": "Butter Chicken",
             "image": "https://spoonacular.com/recipeImages/636488-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 652602,
             "title": "Murgh Tandoori",
             "image": "https://spoonacular.com/recipeImages/652602-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 648430,
             "title": "Jambalaya Soup",
             "image": "https://spoonacular.com/recipeImages/648430-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 641221,
             "title": "Dan Dan Noodles",
             "image": "https://spoonacular.com/recipeImages/641221-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 638086,
             "title": "Chicken Fingers",
             "image": "https://spoonacular.com/recipeImages/638086-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 602643,
             "title": "Apricot Chicken",
             "image": "https://spoonacular.com/recipeImages/602643-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 632749,
             "title": "Arroz Con Pollo",
             "image": "https://spoonacular.com/recipeImages/632749-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 649131,
             "title": "Kung Po Chicken",
             "image": "https://spoonacular.com/recipeImages/649131-312x231.jpg",
             "imageType": "jpg"
         },
         {
             "id": 638174,
             "title": "Chicken Lo Mein",
             "image": "https://spoonacular.com/recipeImages/638174-312x231.jpg",
             "imageType": "jpg"
         }
     ],
     "offset": 0,
     "number": 40,
     "totalResults": 611
 }

 */


// MARK: - RecipeListData
struct RecipeListData: Codable {
    let results: [Recipe]?
    let offset, number, totalResults: Int?
}

// MARK: - Recipe
struct Recipe: Codable,Identifiable {
    let id: Int?
    let title: String?
    let image: String?
    let imageType: String?
}

/*
 
 */
