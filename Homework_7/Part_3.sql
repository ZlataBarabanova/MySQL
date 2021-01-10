SELECT c1.name as cities_from, c2.name as cities_to FROM teach_vk.fligths fl
JOIN cities c1 ON fl.from = c1.label
JOIN cities c2 ON fl.to = c2.label
ORDER by id