-- Create Categories Table
CREATE TABLE Categories
(
  category_id INT PRIMARY KEY,
  category_name VARCHAR(50)
);

INSERT INTO Categories
  (category_id, category_name)
VALUES
  (1, 'Appetizers'),
  (2, 'Desserts'),
  (3, 'Main Dishes');

-- Create Ingredients Table
CREATE TABLE Ingredients
(
  ingredient_id INT PRIMARY KEY,
  ingredient_name VARCHAR(100)
);

INSERT INTO Ingredients
  (ingredient_id, ingredient_name)
VALUES
  (1, 'Cheese'),
  (2, 'Chocolate'),
  (3, 'Chicken Breast'),
  (4, 'Flour'),
  (5, 'Sugar'),
  (6, 'Soy Sauce'),
  (7, 'Rice Vinegar'),
  (8, 'Noodles'),
  (9, 'Beef'),
  (10, 'Olive Oil'),
  (11, 'Onion');

-- Create Steps Table
CREATE TABLE Steps
(
  step_id INT PRIMARY KEY,
  step_description TEXT
);

INSERT INTO Steps
  (step_id, step_description)
VALUES
  (1, 'Mix cheese and flour.'),
  (2, 'Melt chocolate in a microwave.'),
  (3, 'Marinate chicken with soy sauce.'),
  (4, 'Preheat the oven.'),
  (5, 'Whisk sugar and eggs.'),
  (6, 'Boil noodles until tender.'),
  (7, 'Saute beef with onion.'),
  (8, 'Cook rice with rice vinegar.'),
  (9, 'Bake in preheated oven.'),
  (10, 'Heat olive oil in a pan.'),
  (11, 'Chop vegetables for the salad.'),
  (12, 'Grill the chicken until cooked.');

-- Create Recipes Table
CREATE TABLE Recipes
(
  recipe_id INT PRIMARY KEY,
  recipe_name VARCHAR(200),
  category_id INT,
  FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO Recipes
  (recipe_id, recipe_name, category_id)
VALUES
  (1, 'Cheese Bites', 1),
  (2, 'Chocolate Delight', 2),
  (3, 'Soy-Glazed Chicken', 3);

-- Create RecipeIngredients Table
CREATE TABLE RecipeIngredients
(
  recipe_id INT,
  ingredient_id INT,
  quantity VARCHAR(50),
  FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id),
  PRIMARY KEY (recipe_id, ingredient_id)
);

INSERT INTO RecipeIngredients
  (recipe_id, ingredient_id, quantity)
VALUES
  (1, 1, '1 cup'),
  (1, 2, '100 grams'),
  (2, 3, '2 pieces'),
  (2, 4, '1 cup'),
  (2, 5, '200 grams'),
  (3, 6, '3 tablespoons'),
  (3, 7, '2 tablespoons'),
  (3, 8, '150 grams'),
  (3, 9, '250 grams'),
  (3, 10, '2 tablespoons'),
  (3, 11, '1 piece');

-- Create RecipeSteps Table
CREATE TABLE RecipeSteps
(
  recipe_id INT,
  step_id INT,
  step_order INT,
  FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id),
  FOREIGN KEY (step_id) REFERENCES Steps(step_id),
  PRIMARY KEY (recipe_id, step_order)
);

INSERT INTO RecipeSteps
  (recipe_id, step_id, step_order)
VALUES
  (1, 1, 1),
  (1, 2, 2),
  (2, 3, 1),
  (2, 4, 2),
  (2, 5, 3),
  (2, 6, 4),
  (2, 7, 5),
  (3, 8, 1),
  (3, 9, 2),
  (3, 10, 3),
  (3, 11, 4),
  (3, 12, 5);
