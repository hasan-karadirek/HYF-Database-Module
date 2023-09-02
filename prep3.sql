-- Create Categories Table
CREATE TABLE Categories
(
  category_id INT PRIMARY KEY,
  category_name VARCHAR(50)
);

-- Create Ingredients Table
CREATE TABLE Ingredients
(
  ingredient_id INT PRIMARY KEY,
  ingredient_name VARCHAR(100)
);

-- Create Recipe Categories Table
CREATE TABLE RecipeCategories
(
  recipe_id INT,
  category_id INT,
  PRIMARY KEY (recipe_id, category_id),
  FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id),
  FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Create Recipe Ingredients Table
CREATE TABLE RecipeIngredients
(
  recipe_ingredient_id INT PRIMARY KEY AUTO_INCREMENT,
  recipe_id INT,
  ingredient_id INT,
  quantity VARCHAR(50),
  FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id)
);

-- Create Steps Table (Optional)
CREATE TABLE Steps
(
  step_id INT PRIMARY KEY AUTO_INCREMENT,
  step_description TEXT
);

-- Create Recipe Steps Table (Optional)
CREATE TABLE RecipeSteps
(
  recipe_id INT,
  step_id INT,
  step_order INT,
  FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id),
  FOREIGN KEY (step_id) REFERENCES Steps(step_id),
  PRIMARY KEY (recipe_id, step_order)
);

-- Insert Data into Categories Table
INSERT INTO Categories (category_id, category_name)
VALUES
  (1, 'Appetizers'),
  (2, 'Desserts'),
  (3, 'Main Dishes');

-- Insert Data into Ingredients Table
INSERT INTO Ingredients (ingredient_id, ingredient_name)
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

-- Insert Data into RecipeIngredients Table
INSERT INTO RecipeIngredients (recipe_id, ingredient_id, quantity)
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

-- Insert Data into Steps Table (Optional)
INSERT INTO Steps (step_description)
VALUES
  ('Mix cheese and flour.'),
  ('Melt chocolate in a microwave.'),
  ('Marinate chicken with soy sauce.'),
  ('Preheat the oven.'),
  ('Whisk sugar and eggs.'),
  ('Boil noodles until tender.'),
  ('Saute beef with onion.'),
  ('Cook rice with rice vinegar.'),
  ('Bake in preheated oven.'),
  ('Heat olive oil in a pan.'),
  ('Chop vegetables for the salad.');

-- Insert Data into RecipeSteps Table
INSERT INTO RecipeSteps (recipe_id, step_id, step_order)
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
