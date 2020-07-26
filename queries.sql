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
--     project.name = 'Personal Website';

--Perform a left outer join from the tech table to the project_uses_tech table - 
--which techs has no associated project?
-- SELECT
--     name, tech_id
-- FROM
--     tech --name 1st table
-- LEFT OUTER JOIN
--     project_uses_tech --name second table
-- ON
--   tech.id = project_uses_tech.tech_id --match up like data of 1st and 2nd tables
-- WHERE
--     project_id IS NULL;

--Based on the previous query, get the count of the number of techs used by each project.
-- SELECT
--     name, count(tech_id)
-- FROM
--     tech --name 1st table
-- LEFT OUTER JOIN
--     project_uses_tech --name second table
-- ON
--   tech.id = project_uses_tech.tech_id --match up like data of 1st and 2nd tables

--Perform a left outer join from the project table to the project_users_tech table - which projects has no associated tech?
-- SELECT
--     project.name, project_uses_tech.tech_id
-- FROM 
--     project
-- LEFT OUTER JOIN
--     project_uses_tech
-- ON
--     project.id = project_uses_tech.project_id
-- WHERE
--     tech_id IS NULL;

--Based on the previous query, get the count of the number of projects that use each tech.
-- SELECT
--    project.*, count(project_uses_tech.tech_id)
-- FROM 
--     project
-- LEFT OUTER JOIN
--     project_uses_tech
-- ON
--     project.id = project_uses_tech.project_id
-- GROUP BY
--     project.id

--List all projects along with each technology used by it. You will need to do a three-way join.
-- SELECT
--     project.name, tech.name
-- FROM
--     project
-- INNER JOIN 
--     project_uses_tech
-- ON  
--     project.id = project_uses_tech.project_id
-- INNER JOIN
--     tech
-- ON
--     project_uses_tech.tech_id = tech.id;

--List all the distinct techs that are used by at least one project.
-- SELECT
--     distinct(tech.name)
-- FROM
--     project
-- INNER JOIN 
--     project_uses_tech
-- ON  
--     project.id = project_uses_tech.project_id
-- INNER JOIN
--     tech
-- ON
--     project_uses_tech.tech_id = tech.id;

--List all the distinct techs that are not used by any projects.
-- SELECT
--     distinct(tech.name)
-- FROM
--     project
-- RIGHT OUTER JOIN 
--     project_uses_tech
-- ON  
--     project.id = project_uses_tech.project_id
-- RIGHT OUTER JOIN
--     tech
-- ON
--     project_uses_tech.tech_id = tech.id
-- WHERE 
--     project.id IS NULL;

--List all the distinct projects that use at least one tech.
-- SELECT
--     distinct(project.name)
-- FROM
--     project
-- RIGHT OUTER JOIN 
--     project_uses_tech
-- ON  
--     project.id = project_uses_tech.project_id
-- RIGHT OUTER JOIN
--     tech
-- ON
--     project_uses_tech.tech_id = tech.id
-- WHERE 
--     project.id > 0;

--List all the distinct projects that use no tech.
-- SELECT
--     distinct(project.name)
-- FROM
--     project
-- RIGHT OUTER JOIN 
--     project_uses_tech
-- ON  
--     project.id = project_uses_tech.project_id
-- RIGHT OUTER JOIN
--     tech
-- ON
--     project_uses_tech.tech_id = tech.id
-- WHERE 
--    tech.id IS NULL;

--Order the projects by how many tech it uses.
SELECT
    project.name, count(project_uses_tech.project_id)
FROM
    project
RIGHT OUTER JOIN 
    project_uses_tech
ON  
    project.id = project_uses_tech.project_id
RIGHT OUTER JOIN
    tech
ON
    project_uses_tech.tech_id = tech.id
ORDER BY 
    project_uses_tech.project_id DESC;