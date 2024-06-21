import pandas as pd

from model import output_recommended_recipes, recommend

# Assuming `dataset` is a DataFrame loaded from somewhere, e.g., dataset = pd.read_csv('recipes.csv')

# Sample input recipe features (replace with actual features)
_input = [0.5, 1.2, 0.3, -0.7, 1.5, 0.9, -1.1, 0.2, 0.8]

# Optional: List of ingredients to filter recipes
ingredients = ['chicken', 'garlic']

# Optional: Parameters for the nearest neighbors
params = {'n_neighbors': 5, 'return_distance': False}

# Call the recommend method
recommended_recipes = recommend(_input, ingredients, params)

# Process and print the recommended recipes
output = output_recommended_recipes(recommended_recipes)
print(output)
