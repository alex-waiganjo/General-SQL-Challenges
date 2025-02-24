""" Joins Covered
 - Inner Join
 - LEFT Join
 - RIGHT Join
 - FULL OUTER Join
 - SELF Join
 """

 -- Insert into department ( id, department_name)
--  VALUES
-- (1, "HR"),
-- (2, "Tech"),
-- (3, "Marketing")
-- (8, "Legal"),
-- (9, "Finance"),
-- (10, "Bidding")

-- Insert into manager( id, name, department_id)
--  VALUES
-- (101, "James", 2),
-- (102, "Rose",3),
-- (103, "Pauline", 1)

-- Insert into employee ( id, name,salary,department_id,manager_id)
--  VALUES
-- (1, "Alex",5000, 2, 101),
-- (2, "Brian",3500, 1,103),
-- (3, "Keshi",3000,3,102)
-- (4, "Kelly",15000, 5, 104),
-- (5, "Abby",4500, 6,105),
-- (6, "Newton",3600,7,106)

-- Insert into project ( id, name,team_member_id)
--  VALUES
-- (1, "Rental System",101),
-- (2, "System Marketing",102),
-- (3, "System People Management",103)

-- Insert into family( member_id, full_name, age,parent_id)
--  VALUES
-- ("F1", "Esther",30, "F5"),
-- ("F2", "Harrison",26, "F5"),
-- ("F3", "Alex",23, "F5"),
-- ("F4", "Baba Ben",53,null),
-- ("F5", "Richard",58, "F6"),
-- ("F6", "Martin Kimani",83,null),
-- ("F7", "Brayo",27, "F4"),
-- ("F8", "Ben",30, "F4");


-- LEFT JOIN # gets all values in letf table only, together with those on the right table
-- SELECT employee.name AS Employee_Name, department_name AS Department_Name, manager.name AS Manager_Name
-- FROM employee
-- LEFT JOIN department ON employee.department_id = department.id
-- LEFT JOIN manager ON employee.manager_id = manager.id;


-- RIGHT JOIN # gets all values in right table only, together with those on the left table
-- SELECT employee.name AS Employee_Name, department_name AS Department_Name, manager.name AS Manager_Name
-- FROM employee
-- RIGHT JOIN department ON employee.department_id = department.id

-- INNER JOIN # common values in both left and right tables
-- SELECT employee.name AS Employee_Name, department_name AS Department_Name, manager.name AS Manager_Name
-- FROM employee
-- INNER JOIN department ON employee.department_id = department.id


-- FULL OUTTER JOIN # comines inner, left and rights join
-- SELECT d.department_name AS Department_Name, m.name AS Manager_Name
-- FROM department d
-- LEFT JOIN manager m ON m.department_id= d.id 
-- UNION
-- SELECT d.department_name AS Department_Name, m.name AS Manager_Name
-- FROM department d
-- RIGHT JOIN manager m ON m.department_id= d.id ;


-- CROSS JOIN
-- SELECT employee.name, department.department_name
-- FROM employee
-- CROSS JOIN department;


-- SELF JOIN # occurs where there is only one table involved
--SELECT child.full_name as Child_Name, child.age as Child_Age, parent.full_name as Parent_Name, parent.age as Parent_Age
-- FROM Family AS child 
-- JOIN Family as parent ON child.parent_id = parent.member_id;

