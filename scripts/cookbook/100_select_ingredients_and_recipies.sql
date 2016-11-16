SELECT d.name ingredients, p.name recipie, description
FROM ingredients d
INNER JOIN recipes p
  ON p.id = d.recipe_id
WHERE d.name IN ('canola oil');
