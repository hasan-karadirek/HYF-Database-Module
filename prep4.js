db.createCollection("Categories");

db.Categories.insertMany([
  { _id: 1, name: "Appetizers" },
  { _id: 2, name: "Desserts" },
  { _id: 3, name: "Main Dishes" },
]);

db.createCollection("Ingredients");

db.Ingredients.insertMany([
  { _id: 1, name: "Cheese" },
  { _id: 2, name: "Chocolate" },
  { _id: 3, name: "Chicken Breast" },
  { _id: 4, name: "Flour" },
  { _id: 5, name: "Sugar" },
  { _id: 6, name: "Soy Sauce" },
  { _id: 7, name: "Rice Vinegar" },
  { _id: 8, name: "Noodles" },
  { _id: 9, name: "Beef" },
  { _id: 10, name: "Olive Oil" },
  { _id: 11, name: "Onion" },
]);

db.createCollection("Recipes");

db.Recipes.insertMany([
  {
    _id: 1,
    name: "Recipe 1",
    category_ids: [1, 2],
    ingredient_quantities: [
      { ingredient_id: 1, quantity: "1 cup" },
      { ingredient_id: 2, quantity: "100 grams" },
    ],
  },
  {
    _id: 2,
    name: "Recipe 2",
    category_ids: [3],
    ingredient_quantities: [
      { ingredient_id: 3, quantity: "2 pieces" },
      { ingredient_id: 4, quantity: "1 cup" },
      { ingredient_id: 5, quantity: "200 grams" },
    ],
  },
]);

db.createCollection("Steps");

db.Steps.insertMany([
  { _id: 1, description: "Mix cheese and flour." },
  { _id: 2, description: "Melt chocolate in a microwave." },
]);

db.createCollection("RecipeSteps");

db.RecipeSteps.insertMany([
  { recipe_id: 1, step_order: 1, step_id: 1 },
  { recipe_id: 1, step_order: 2, step_id: 2 },
  { recipe_id: 2, step_order: 1, step_id: 3 },
  { recipe_id: 2, step_order: 2, step_id: 4 },
]);
