--What are all projects that use JavaScript?
-- SELECT 
--     project.name, tech.name
-- FROM 
--     project --names 1st table
-- INNER JOIN
--     project_uses_tech --names 2nd table
-- ON
--     project.id = project_uses_tech.project_id --matches up like data of 1st and 2nd tables
-- INNER JOIN
--     tech -- bring in 3rd table
-- ON  
--     project_uses_tech.tech_id = tech.id --match up like data from 2nd and 3rd tables
-- WHERE
--     tech.name = 'JavaScript';

--What are all technologies used by the Personal Website?
SELECT 
    project.name, tech.name
FROM 
    project --names 1st table
INNER JOIN
    project_uses_tech --names 2nd table
ON
    project.id = project_uses_tech.project_id --matches up like data of 1st and 2nd tables
INNER JOIN
    tech -- bring in 3rd table
ON  
    project_uses_tech.tech_id = tech.id --match up like data from 2nd and 3rd tables
WHERE
    project.name = 'Personal Website';

--Perform a left outer join from the tech table to the project_uses_tech table - which techs has no associated project?
