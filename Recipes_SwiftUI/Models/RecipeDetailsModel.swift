//
//  RecipeDetailsModel.swift
//  Recipes_SwiftUI
//
//  Created by Sabari on 27/07/21.
//

import Foundation

/*
 {
     "vegetarian": false,
     "vegan": false,
     "glutenFree": true,
     "dairyFree": true,
     "veryHealthy": false,
     "cheap": false,
     "veryPopular": false,
     "sustainable": false,
     "weightWatcherSmartPoints": 9,
     "gaps": "no",
     "lowFodmap": true,
     "aggregateLikes": 1,
     "spoonacularScore": 68.0,
     "healthScore": 28.0,
     "creditsText": "Foodista.com – The Cooking Encyclopedia Everyone Can Edit",
     "license": "CC BY 3.0",
     "sourceName": "Foodista",
     "pricePerServing": 104.71,
     "extendedIngredients": [
         {
             "id": 1015062,
             "aisle": "Meat",
             "image": "chicken-tenders-or-fingers.png",
             "consistency": "solid",
             "name": "chicken strips",
             "nameClean": "chicken tenders",
             "original": "1 1/2 cups (s) of faux chicken strips (Gardein has a great one, so does Trader Joe's)",
             "originalString": "1 1/2 cups (s) of faux chicken strips (Gardein has a great one, so does Trader Joe's)",
             "originalName": "(s) of faux chicken strips (Gardein has a great one, so does Trader Joe's)",
             "amount": 1.5,
             "unit": "cups",
             "meta": [
                 "(Gardein has a great one, so does Trader Joe's)"
             ],
             "metaInformation": [
                 "(Gardein has a great one, so does Trader Joe's)"
             ],
             "measures": {
                 "us": {
                     "amount": 1.5,
                     "unitShort": "cups",
                     "unitLong": "cups"
                 },
                 "metric": {
                     "amount": 354.882,
                     "unitShort": "ml",
                     "unitLong": "milliliters"
                 }
             }
         },
         {
             "id": 16124,
             "aisle": "Ethnic Foods;Condiments",
             "image": "soy-sauce.jpg",
             "consistency": "liquid",
             "name": "soy sauce",
             "nameClean": "soy sauce",
             "original": "1 tablespoon of shoyu or soy sauce",
             "originalString": "1 tablespoon of shoyu or soy sauce",
             "originalName": "shoyu or soy sauce",
             "amount": 1.0,
             "unit": "tablespoon",
             "meta": [],
             "metaInformation": [],
             "measures": {
                 "us": {
                     "amount": 1.0,
                     "unitShort": "Tbsp",
                     "unitLong": "Tbsp"
                 },
                 "metric": {
                     "amount": 1.0,
                     "unitShort": "Tbsp",
                     "unitLong": "Tbsp"
                 }
             }
         },
         {
             "id": 4058,
             "aisle": "Ethnic Foods",
             "image": "sesame-oil.png",
             "consistency": "liquid",
             "name": "sesame oil",
             "nameClean": "sesame oil",
             "original": "1 tablespoon of sesame oil",
             "originalString": "1 tablespoon of sesame oil",
             "originalName": "sesame oil",
             "amount": 1.0,
             "unit": "tablespoon",
             "meta": [],
             "metaInformation": [],
             "measures": {
                 "us": {
                     "amount": 1.0,
                     "unitShort": "Tbsp",
                     "unitLong": "Tbsp"
                 },
                 "metric": {
                     "amount": 1.0,
                     "unitShort": "Tbsp",
                     "unitLong": "Tbsp"
                 }
             }
         },
         {
             "id": 12023,
             "aisle": "Ethnic Foods;Spices and Seasonings",
             "image": "sesame-seeds.png",
             "consistency": "solid",
             "name": "sesame seeds",
             "nameClean": "sesame seeds",
             "original": "1 tablespoon of sesame seeds",
             "originalString": "1 tablespoon of sesame seeds",
             "originalName": "sesame seeds",
             "amount": 1.0,
             "unit": "tablespoon",
             "meta": [],
             "metaInformation": [],
             "measures": {
                 "us": {
                     "amount": 1.0,
                     "unitShort": "Tbsp",
                     "unitLong": "Tbsp"
                 },
                 "metric": {
                     "amount": 1.0,
                     "unitShort": "Tbsp",
                     "unitLong": "Tbsp"
                 }
             }
         },
         {
             "id": 11043,
             "aisle": "Produce;Ethnic Foods",
             "image": "bean-sprouts.jpg",
             "consistency": "solid",
             "name": "mung bean sprouts",
             "nameClean": "bean sprouts",
             "original": "3/4 cup (s) of mung bean sprouts",
             "originalString": "3/4 cup (s) of mung bean sprouts",
             "originalName": "(s) of mung bean sprouts",
             "amount": 0.75,
             "unit": "cup",
             "meta": [],
             "metaInformation": [],
             "measures": {
                 "us": {
                     "amount": 0.75,
                     "unitShort": "cups",
                     "unitLong": "cups"
                 },
                 "metric": {
                     "amount": 177.441,
                     "unitShort": "ml",
                     "unitLong": "milliliters"
                 }
             }
         },
         {
             "id": 11741,
             "aisle": "Produce",
             "image": "slaw-mix.png",
             "consistency": "solid",
             "name": "broccoli slaw mix",
             "nameClean": "broccoli slaw",
             "original": "1 cup (s) of broccoli slaw mix (containing broccoli, carrots&",
             "originalString": "1 cup (s) of broccoli slaw mix (containing broccoli, carrots&",
             "originalName": "(s) of broccoli slaw mix (containing broccoli, carrots&",
             "amount": 1.0,
             "unit": "cup",
             "meta": [],
             "metaInformation": [],
             "measures": {
                 "us": {
                     "amount": 1.0,
                     "unitShort": "cup",
                     "unitLong": "cup"
                 },
                 "metric": {
                     "amount": 236.588,
                     "unitShort": "ml",
                     "unitLong": "milliliters"
                 }
             }
         },
         {
             "id": 2044,
             "aisle": "Produce;Spices and Seasonings",
             "image": "basil.jpg",
             "consistency": "solid",
             "name": "basil",
             "nameClean": "fresh basil",
             "original": "1/2 cup (s) of fresh basil, chopped",
             "originalString": "1/2 cup (s) of fresh basil, chopped",
             "originalName": "(s) of fresh basil, chopped",
             "amount": 0.5,
             "unit": "cup",
             "meta": [
                 "fresh",
                 "chopped"
             ],
             "metaInformation": [
                 "fresh",
                 "chopped"
             ],
             "measures": {
                 "us": {
                     "amount": 0.5,
                     "unitShort": "cups",
                     "unitLong": "cups"
                 },
                 "metric": {
                     "amount": 118.294,
                     "unitShort": "ml",
                     "unitLong": "milliliters"
                 }
             }
         },
         {
             "id": 19335,
             "aisle": "Baking",
             "image": "sugar-in-bowl.png",
             "consistency": "solid",
             "name": "sugar",
             "nameClean": "sugar",
             "original": "1 1/2 tablespoons of sugar",
             "originalString": "1 1/2 tablespoons of sugar",
             "originalName": "sugar",
             "amount": 1.5,
             "unit": "tablespoons",
             "meta": [],
             "metaInformation": [],
             "measures": {
                 "us": {
                     "amount": 1.5,
                     "unitShort": "Tbsps",
                     "unitLong": "Tbsps"
                 },
                 "metric": {
                     "amount": 1.5,
                     "unitShort": "Tbsps",
                     "unitLong": "Tbsps"
                 }
             }
         },
         {
             "id": 1022053,
             "aisle": "Ethnic Foods;Oil, Vinegar, Salad Dressing",
             "image": "rice-vinegar.png",
             "consistency": "liquid",
             "name": "rice wine vinegar",
             "nameClean": "rice vinegar",
             "original": "2 tablespoons of rice wine vinegar",
             "originalString": "2 tablespoons of rice wine vinegar",
             "originalName": "rice wine vinegar",
             "amount": 2.0,
             "unit": "tablespoons",
             "meta": [],
             "metaInformation": [],
             "measures": {
                 "us": {
                     "amount": 2.0,
                     "unitShort": "Tbsps",
                     "unitLong": "Tbsps"
                 },
                 "metric": {
                     "amount": 2.0,
                     "unitShort": "Tbsps",
                     "unitLong": "Tbsps"
                 }
             }
         },
         {
             "id": 1012047,
             "aisle": "Spices and Seasonings",
             "image": "salt.jpg",
             "consistency": "solid",
             "name": "sea salt",
             "nameClean": "coarse sea salt",
             "original": "1 teaspoon of sea salt",
             "originalString": "1 teaspoon of sea salt",
             "originalName": "sea salt",
             "amount": 1.0,
             "unit": "teaspoon",
             "meta": [],
             "metaInformation": [],
             "measures": {
                 "us": {
                     "amount": 1.0,
                     "unitShort": "tsp",
                     "unitLong": "teaspoon"
                 },
                 "metric": {
                     "amount": 1.0,
                     "unitShort": "tsp",
                     "unitLong": "teaspoon"
                 }
             }
         },
         {
             "id": 1002030,
             "aisle": "Spices and Seasonings",
             "image": "pepper.jpg",
             "consistency": "solid",
             "name": "ground pepper",
             "nameClean": "black pepper",
             "original": "1 pinch of ground black pepper",
             "originalString": "1 pinch of ground black pepper",
             "originalName": "ground black pepper",
             "amount": 1.0,
             "unit": "pinch",
             "meta": [
                 "black"
             ],
             "metaInformation": [
                 "black"
             ],
             "measures": {
                 "us": {
                     "amount": 1.0,
                     "unitShort": "pinch",
                     "unitLong": "pinch"
                 },
                 "metric": {
                     "amount": 1.0,
                     "unitShort": "pinch",
                     "unitLong": "pinch"
                 }
             }
         },
         {
             "id": 10111251,
             "aisle": "Produce",
             "image": "romaine.jpg",
             "consistency": "solid",
             "name": "romaine lettuce leaves",
             "nameClean": "romaine",
             "original": "6 large romaine lettuce leaves",
             "originalString": "6 large romaine lettuce leaves",
             "originalName": "romaine lettuce leaves",
             "amount": 6.0,
             "unit": "large",
             "meta": [],
             "metaInformation": [],
             "measures": {
                 "us": {
                     "amount": 6.0,
                     "unitShort": "large",
                     "unitLong": "larges"
                 },
                 "metric": {
                     "amount": 6.0,
                     "unitShort": "large",
                     "unitLong": "larges"
                 }
             }
         },
         {
             "id": 16098,
             "aisle": "Nut butters, Jams, and Honey",
             "image": "peanut-butter.png",
             "consistency": "solid",
             "name": "peanut butter",
             "nameClean": "peanut butter",
             "original": "1/4 cup (s) of natural peanut butter, creamy (no sugar!)",
             "originalString": "1/4 cup (s) of natural peanut butter, creamy (no sugar!)",
             "originalName": "(s) of natural peanut butter, creamy (no sugar!)",
             "amount": 0.25,
             "unit": "cup",
             "meta": [
                 "(no sugar!)"
             ],
             "metaInformation": [
                 "(no sugar!)"
             ],
             "measures": {
                 "us": {
                     "amount": 0.25,
                     "unitShort": "cups",
                     "unitLong": "cups"
                 },
                 "metric": {
                     "amount": 59.147,
                     "unitShort": "ml",
                     "unitLong": "milliliters"
                 }
             }
         },
         {
             "id": 16124,
             "aisle": "Ethnic Foods;Condiments",
             "image": "soy-sauce.jpg",
             "consistency": "liquid",
             "name": "soy sauce",
             "nameClean": "soy sauce",
             "original": "2 tablespoons of shoyu or soy sauce",
             "originalString": "2 tablespoons of shoyu or soy sauce",
             "originalName": "shoyu or soy sauce",
             "amount": 2.0,
             "unit": "tablespoons",
             "meta": [],
             "metaInformation": [],
             "measures": {
                 "us": {
                     "amount": 2.0,
                     "unitShort": "Tbsps",
                     "unitLong": "Tbsps"
                 },
                 "metric": {
                     "amount": 2.0,
                     "unitShort": "Tbsps",
                     "unitLong": "Tbsps"
                 }
             }
         },
         {
             "id": 1022053,
             "aisle": "Ethnic Foods;Oil, Vinegar, Salad Dressing",
             "image": "rice-vinegar.png",
             "consistency": "liquid",
             "name": "rice wine vinegar",
             "nameClean": "rice vinegar",
             "original": "1 tablespoon of rice wine vinegar",
             "originalString": "1 tablespoon of rice wine vinegar",
             "originalName": "rice wine vinegar",
             "amount": 1.0,
             "unit": "tablespoon",
             "meta": [],
             "metaInformation": [],
             "measures": {
                 "us": {
                     "amount": 1.0,
                     "unitShort": "Tbsp",
                     "unitLong": "Tbsp"
                 },
                 "metric": {
                     "amount": 1.0,
                     "unitShort": "Tbsp",
                     "unitLong": "Tbsp"
                 }
             }
         },
         {
             "id": 4058,
             "aisle": "Ethnic Foods",
             "image": "sesame-oil.png",
             "consistency": "liquid",
             "name": "sesame oil",
             "nameClean": "sesame oil",
             "original": "2 tablespoons of sesame oil",
             "originalString": "2 tablespoons of sesame oil",
             "originalName": "sesame oil",
             "amount": 2.0,
             "unit": "tablespoons",
             "meta": [],
             "metaInformation": [],
             "measures": {
                 "us": {
                     "amount": 2.0,
                     "unitShort": "Tbsps",
                     "unitLong": "Tbsps"
                 },
                 "metric": {
                     "amount": 2.0,
                     "unitShort": "Tbsps",
                     "unitLong": "Tbsps"
                 }
             }
         },
         {
             "id": 16091,
             "aisle": "Nuts;Savory Snacks",
             "image": "peanuts.png",
             "consistency": "solid",
             "name": "peanuts",
             "nameClean": "peanuts",
             "original": "cup (s) of peanuts, crushed",
             "originalString": "cup (s) of peanuts, crushed",
             "originalName": "(s) of peanuts, crushed",
             "amount": 1.0,
             "unit": "cup",
             "meta": [
                 "crushed"
             ],
             "metaInformation": [
                 "crushed"
             ],
             "measures": {
                 "us": {
                     "amount": 1.0,
                     "unitShort": "cup",
                     "unitLong": "cup"
                 },
                 "metric": {
                     "amount": 236.588,
                     "unitShort": "ml",
                     "unitLong": "milliliters"
                 }
             }
         }
     ],
     "id": 663078,
     "title": "Thai \"Chicken\" Wraps",
     "readyInMinutes": 45,
     "servings": 6,
     "sourceUrl": "https://www.foodista.com/recipe/W8JB7TL3/thai-chicken-wraps",
     "image": "https://spoonacular.com/recipeImages/663078-556x370.jpg",
     "imageType": "jpg",
     "summary": "Thai \"Chicken\" Wraps is a <b>gluten free, dairy free, and fodmap friendly</b> side dish. This recipe serves 6. For <b>$1.05 per serving</b>, this recipe <b>covers 18%</b> of your daily requirements of vitamins and minerals. One serving contains <b>319 calories</b>, <b>14g of protein</b>, and <b>26g of fat</b>. 1 person were glad they tried this recipe. Head to the store and pick up , of natural peanut butter, sesame oil, and a few other things to make it today. Not a lot of people really liked this Asian dish. From preparation to the plate, this recipe takes roughly <b>roughly 45 minutes</b>. It is brought to you by Foodista. All things considered, we decided this recipe <b>deserves a spoonacular score of 67%</b>. This score is solid. If you like this recipe, take a look at these similar recipes: <a href=\"https://spoonacular.com/recipes/thai-chicken-wraps-428292\">Thai Chicken Wraps</a>, <a href=\"https://spoonacular.com/recipes/thai-chicken-wraps-171902\">Thai Chicken Wraps</a>, and <a href=\"https://spoonacular.com/recipes/thai-chicken-lettuce-wraps-755740\">Thai Chicken Lettuce Wraps</a>.",
     "cuisines": [
         "Thai",
         "Asian"
     ],
     "dishTypes": [
         "side dish"
     ],
     "diets": [
         "gluten free",
         "dairy free",
         "fodmap friendly"
     ],
     "occasions": [],
     "winePairing": {
         "pairedWines": [
             "chenin blanc",
             "gewurztraminer",
             "riesling"
         ],
         "pairingText": "Chenin Blanc, Gewurztraminer, and Riesling are my top picks for Asian. The best wine for Asian food depends on the cuisine and dish - of course - but these acidic whites pair with a number of traditional meals, spicy or not. You could try David & Nadia Chenin Blanc. Reviewers quite like it with a 4.2 out of 5 star rating and a price of about 36 dollars per bottle.",
         "productMatches": [
             {
                 "id": 484378,
                 "title": "David & Nadia Chenin Blanc",
                 "description": "Chenin Blanc from the Swartland focuses yet again on various Old Vine Vineyards, ranging plantings from 1962 till 1982 and based on granite from the Paardeberg, blended with schale/schist from the east, clay from the north and iron from the western parts of the Swartland. Dry-land farmed bush vines stood the test of time and it showcases the ultimate reason why Chenin Blanc is their main focus in the Swartland. Whole bunch pressed and naturally fermented, matured for 11 months in old neutral French oak barrels.",
                 "price": "$35.99",
                 "imageUrl": "https://spoonacular.com/productImages/484378-312x231.jpg",
                 "averageRating": 0.8400000000000001,
                 "ratingCount": 7.0,
                 "score": 0.7945454545454547,
                 "link": "https://click.linksynergy.com/deeplink?id=*QCiIS6t4gA&mid=2025&murl=https%3A%2F%2Fwww.wine.com%2Fproduct%2Fdavid-and-nadia-chenin-blanc-2017%2F600857"
             }
         ]
     },
     "instructions": "Toss faux chicken strips with shoyu and oil until well coated. Heat in saute pan over medium-low heat until heated through.\nIn medium bowl, add sesame seeds, sprouts, slaw mix, basil, sugar, vinegar and salt & pepper. Toss until thoroughly coated. Set aside.\nTo make the SAUCE: in small bowl, whisk Earth Balance natural peanut butter with shoyu and vinegar. Add in oil while whisking until consistency is slightly runny.\nChop off the rough end of romaine leaves; smooth out flat and pile on the faux chicken, slaw mixture and drizzle with peanut sauce.\nTop with crushed peanuts (optional) and carefully wrap and roll, starting from one end. Leave seam side down.",
     "analyzedInstructions": [
         {
             "name": "",
             "steps": [
                 {
                     "number": 1,
                     "step": "Toss faux chicken strips with shoyu and oil until well coated.",
                     "ingredients": [
                         {
                             "id": 1015062,
                             "name": "chicken tenders",
                             "localizedName": "chicken tenders",
                             "image": "chicken-tenders-or-fingers.png"
                         },
                         {
                             "id": 16123,
                             "name": "shoyu",
                             "localizedName": "shoyu",
                             "image": "soy-sauce.jpg"
                         },
                         {
                             "id": 4582,
                             "name": "cooking oil",
                             "localizedName": "cooking oil",
                             "image": "vegetable-oil.jpg"
                         }
                     ],
                     "equipment": []
                 },
                 {
                     "number": 2,
                     "step": "Heat in saute pan over medium-low heat until heated through.",
                     "ingredients": [],
                     "equipment": [
                         {
                             "id": 404645,
                             "name": "frying pan",
                             "localizedName": "frying pan",
                             "image": "pan.png"
                         }
                     ]
                 },
                 {
                     "number": 3,
                     "step": "In medium bowl, add sesame seeds, sprouts, slaw mix, basil, sugar, vinegar and salt & pepper. Toss until thoroughly coated. Set aside.",
                     "ingredients": [
                         {
                             "id": 1102047,
                             "name": "salt and pepper",
                             "localizedName": "salt and pepper",
                             "image": "salt-and-pepper.jpg"
                         },
                         {
                             "id": 12023,
                             "name": "sesame seeds",
                             "localizedName": "sesame seeds",
                             "image": "sesame-seeds.png"
                         },
                         {
                             "id": 10011109,
                             "name": "coleslaw mix",
                             "localizedName": "coleslaw mix",
                             "image": "coleslaw.png"
                         },
                         {
                             "id": 11001,
                             "name": "sprouts",
                             "localizedName": "sprouts",
                             "image": "alfalfa-sprouts.png"
                         },
                         {
                             "id": 2053,
                             "name": "vinegar",
                             "localizedName": "vinegar",
                             "image": "vinegar-(white).jpg"
                         },
                         {
                             "id": 2044,
                             "name": "basil",
                             "localizedName": "basil",
                             "image": "basil.jpg"
                         },
                         {
                             "id": 19335,
                             "name": "sugar",
                             "localizedName": "sugar",
                             "image": "sugar-in-bowl.png"
                         }
                     ],
                     "equipment": [
                         {
                             "id": 404783,
                             "name": "bowl",
                             "localizedName": "bowl",
                             "image": "bowl.jpg"
                         }
                     ]
                 },
                 {
                     "number": 4,
                     "step": "To make the SAUCE: in small bowl, whisk Earth Balance natural peanut butter with shoyu and vinegar.",
                     "ingredients": [
                         {
                             "id": 16098,
                             "name": "peanut butter",
                             "localizedName": "peanut butter",
                             "image": "peanut-butter.png"
                         },
                         {
                             "id": 2053,
                             "name": "vinegar",
                             "localizedName": "vinegar",
                             "image": "vinegar-(white).jpg"
                         },
                         {
                             "id": 0,
                             "name": "sauce",
                             "localizedName": "sauce",
                             "image": ""
                         },
                         {
                             "id": 16123,
                             "name": "shoyu",
                             "localizedName": "shoyu",
                             "image": "soy-sauce.jpg"
                         }
                     ],
                     "equipment": [
                         {
                             "id": 404661,
                             "name": "whisk",
                             "localizedName": "whisk",
                             "image": "whisk.png"
                         },
                         {
                             "id": 404783,
                             "name": "bowl",
                             "localizedName": "bowl",
                             "image": "bowl.jpg"
                         }
                     ]
                 },
                 {
                     "number": 5,
                     "step": "Add in oil while whisking until consistency is slightly runny.",
                     "ingredients": [
                         {
                             "id": 4582,
                             "name": "cooking oil",
                             "localizedName": "cooking oil",
                             "image": "vegetable-oil.jpg"
                         }
                     ],
                     "equipment": [
                         {
                             "id": 404661,
                             "name": "whisk",
                             "localizedName": "whisk",
                             "image": "whisk.png"
                         }
                     ]
                 },
                 {
                     "number": 6,
                     "step": "Chop off the rough end of romaine leaves; smooth out flat and pile on the faux chicken, slaw mixture and drizzle with peanut sauce.",
                     "ingredients": [
                         {
                             "id": 99028,
                             "name": "peanut sauce",
                             "localizedName": "peanut sauce",
                             "image": "no.jpg"
                         },
                         {
                             "id": 5006,
                             "name": "whole chicken",
                             "localizedName": "whole chicken",
                             "image": "whole-chicken.jpg"
                         },
                         {
                             "id": 10111251,
                             "name": "romaine",
                             "localizedName": "romaine",
                             "image": "romaine"
                         }
                     ],
                     "equipment": []
                 },
                 {
                     "number": 7,
                     "step": "Top with crushed peanuts (optional) and carefully wrap and roll, starting from one end. Leave seam side down.",
                     "ingredients": [
                         {
                             "id": 16091,
                             "name": "peanuts",
                             "localizedName": "peanuts",
                             "image": "peanuts.png"
                         },
                         {
                             "id": 0,
                             "name": "roll",
                             "localizedName": "roll",
                             "image": "dinner-yeast-rolls.jpg"
                         },
                         {
                             "id": 10018364,
                             "name": "wrap",
                             "localizedName": "wrap",
                             "image": "flour-tortilla.jpg"
                         }
                     ],
                     "equipment": []
                 }
             ]
         }
     ],
     "originalId": null,
     "spoonacularSourceUrl": "https://spoonacular.com/thai-chicken-wraps-663078"
 }



 */
// MARK: - PropertyData
struct RecipeDetailsData: Codable {
    let recipes: [RecipeDetails]?
}

// MARK: - RecipeDetailsData
struct RecipeDetails: Codable,Identifiable {
    let vegetarian, vegan, glutenFree, dairyFree: Bool?
    let veryHealthy, cheap, veryPopular, sustainable: Bool?
    let weightWatcherSmartPoints: Int?
    let gaps: String?
    let lowFodmap: Bool?
    let aggregateLikes, spoonacularScore, healthScore: Int?
    let creditsText, license, sourceName: String?
    let pricePerServing: Double?
    let extendedIngredients: [ExtendedIngredient]?
    let id: Int?
    let title: String?
    let readyInMinutes, servings: Int?
    let sourceURL: String?
    let image: String?
    let imageType, summary: String?
    let cuisines, dishTypes, diets: [String]?
    let winePairing: WinePairing?
    let instructions: String?
    let analyzedInstructions: [AnalyzedInstruction]?
    let originalID: String?
    let spoonacularSourceURL: String?

    enum CodingKeys: String, CodingKey {
        case vegetarian, vegan, glutenFree, dairyFree, veryHealthy, cheap, veryPopular, sustainable, weightWatcherSmartPoints, gaps, lowFodmap, aggregateLikes, spoonacularScore, healthScore, creditsText, license, sourceName, pricePerServing, extendedIngredients, id, title, readyInMinutes, servings
        case sourceURL = "sourceUrl"
        case image, imageType, summary, cuisines, dishTypes, diets, winePairing, instructions, analyzedInstructions
        case originalID = "originalId"
        case spoonacularSourceURL = "spoonacularSourceUrl"
    }
}

// MARK: - AnalyzedInstruction
struct AnalyzedInstruction: Codable,Identifiable {
    let id = UUID()
    let name: String?
    let steps: [Step]?
}

// MARK: - Step
struct Step: Codable,Identifiable {
    let id = UUID()
    let number: Int?
    let step: String?
    let ingredients, equipment: [Ent]?
}

// MARK: - Ent
struct Ent: Codable {
    let id: Int?
    let name, localizedName, image: String?
}

// MARK: - ExtendedIngredient
struct ExtendedIngredient: Codable,Identifiable {
    let id: Int?
    let aisle, image: String?
    let consistency: Consistency?
    let name, nameClean, original, originalString: String?
    let originalName: String?
    let amount: Double?
    let unit: String?
    let meta, metaInformation: [String]?
    let measures: Measures?
}

enum Consistency: String, Codable {
    case liquid = "liquid"
    case solid = "solid"
}

// MARK: - Measures
struct Measures: Codable {
    let us, metric: Metric?
}

// MARK: - Metric
struct Metric: Codable {
    let amount: Double?
    let unitShort, unitLong: String?
}

// MARK: - WinePairing
struct WinePairing: Codable {
    let pairedWines: [String]?
    let pairingText: String?
    let productMatches: [ProductMatch]?
}

// MARK: - ProductMatch
struct ProductMatch: Codable {
    let id: Int?
    let title, productMatchDescription, price: String?
    let imageURL: String?
    let averageRating: Double?
    let ratingCount: Int?
    let score: Double?
    let link: String?

    enum CodingKeys: String, CodingKey {
        case id, title
        case productMatchDescription = "description"
        case price
        case imageURL = "imageUrl"
        case averageRating, ratingCount, score, link
    }
}
