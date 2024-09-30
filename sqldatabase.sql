CREATE DATABASE myrecipes;

\l

\dt

CREATE TABLE recipe (
    id SERIAL PRIMARY KEY,
    recipeName VARCHAR(55)
);

CREATE TABLE ingredient (
    id SERIAL PRIMARY KEY,
    ingredientName VARCHAR(55)
);

CREATE TABLE IngredientInRecipe (
    id SERIAL PRIMARY KEY,
    recipeId INTEGER,
    ingredientId INTEGER,
    FOREIGN KEY (recipeID) REFERENCES recipe(id),
    FOREIGN KEY (ingredientId) REFERENCES ingredient(id)
);

SELECT * FROM recipe;

DELETE FROM recipe where id=2;

INSERT INTO recipe (recipeName) 
VALUES ('Pumpkin Tartlets');

INSERT INTO recipe (recipeName) 
VALUES ('Creamy Pumpkin Soup');


INSERT INTO ingredient (ingredientName) 
VALUES ('pumpkin puree');

INSERT INTO ingredient (ingredientName) 
VALUES ('sugar');

SELECT * FROM ingredient;

DROP TABLE recipe;

INSERT INTO recipe (recipeName) 
VALUES 
('Pumpkin Pasties'),
('Pumpkin Tartlets'),
('Creamy Pumpkin Soup');

INSERT INTO ingredient (ingredientName) 
VALUES 
('pumpkin puree'),
('sugar'),
('cinnamon'),
('nutmeg'),
('cloves'),
('Pastry dough'),
('Egg wash (1 egg beaten with a splash of milk)'),
('brown sugar'),
('ginger'),
('Mini tart shells'),
('Whipped cream for garnish'),
('onion, chopped'),
('garlic, minced'),
('vegetable broth'),
('heavy cream'),
('Salt and pepper to taste');

--------------------
SELECT * FROM recipe;

SELECT * FROM ingredient;

INSERT INTO ingredient (ingredientName) 
VALUES 
('heavy cream'),
('Salt and pepper to taste');
