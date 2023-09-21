SELECT detalle FROM libro WHERE id = 1;

SELECT detalle->'$.reseña' as reseña FROM libro WHERE id = 1;
