SELECT c.id, c.name as categories, p.name as name_product FROM shop_teach.catalogs c
JOIN products p ON c.id = p.catalog_id