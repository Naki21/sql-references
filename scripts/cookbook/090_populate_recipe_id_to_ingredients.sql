UPDATE ingredients
SET recipe_id = ids.recipe_id
FROM (SELECT TRUNC(RANDOM() * (SELECT COUNT(*) FROM recipes) + 1) recipe_id,
GENERATE_SERIES(1, (SELECT COUNT(*) FROM ingredients)) ingredient_id) ids
WHERE ingredients.id = ids.recipe_id;
