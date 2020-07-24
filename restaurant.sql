
-- CREATE TABLE restaurant (
--     name varchar,
--     distance_in_miles_from_HeadQuarters integer,
--     stars integer,
--     category_type_of_food varchar,
--     favorite_dish varchar,
--     does_takeout boolean,
--     last_time_you_ate_there date
-- );

-- INSERT INTO restaurant VALUES
-- ('Zoes Kitchen', 3, 3, 'Greek', 'lamb kabobs', TRUE, '2020-03-01'),
-- ('Main Chick', 2, 5, 'American Sandwiches', 'slider', TRUE, '2020-02-21'),
-- ('The Pit Room', 3, 4, 'Barbecue', 'pork ribs', TRUE, '2020-02-24'),
-- ('Island 1515', 6, 5, 'Caribbean', 'jerk chicken', TRUE, '2019-09-05'),
-- ('Turkey Leg Hut', 2, 5, 'Southern Cajun/Creole', 'sweet hennessy glazed turkey leg', TRUE, '2019-11-10'),
-- ('Ritual', 1, 5, 'Southern American Steakhouse', 'tomahawk ribeye steak', TRUE, '2019-12-18');

--The names of the restaurants that you gave a 5 stars to
--  SELECT * FROM restaurant WHERE stars > 4;

--The favorite dishes of all 5-star restaurants
-- SELECT favorite_dish FROM restaurant WHERE stars = 5;

--The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
SELECT * FROM restaurant WHERE stars > 4;