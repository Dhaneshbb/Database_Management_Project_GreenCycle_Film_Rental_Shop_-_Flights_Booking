-- Task: In this challenge, you need to create a user, a role, and add privileges.
-- Query:

-- 1. Create the user "mia" with password 'mia123'
CREATE USER mia WITH PASSWORD 'mia123';

-- 2. Create the role "analyst_emp"
CREATE ROLE analyst_emp;

-- 3. Grant SELECT on all tables in the public schema to that role
GRANT SELECT ON ALL TABLES IN SCHEMA public TO analyst_emp;

-- 4. Grant INSERT and UPDATE on the employees table to that role
GRANT INSERT, UPDATE ON TABLE employees TO analyst_emp;

-- 5. Add the permission to create databases to that role
-- Note: This is problematic as the CREATEDB privilege doesn't exist in many SQL implementations.
-- ALTER ROLE analyst_emp CREATEDB;

-- 6. Assign that role to "mia" and test the privileges with that user
GRANT analyst_emp TO mia;

/*
user named "mia" with the password 'mia123', creates a role named "analyst_emp", grants SELECT privileges on all tables in the public schema and INSERT and UPDATE privileges on the "employees" table to the role "analyst_emp". It then assigns the "analyst_emp" role to the "mia" user. Note: The CREATEDB privilege is commented out as it may not be available in all SQL implementations.
*/

-- Check user privileges and role assignments

-- 1. Check user privileges
-- Replace 'mia' with the username you want to check
SELECT grantee, privilege_type
FROM information_schema.role_table_grants
WHERE grantee = 'mia';

-- 2. Check role assignments
-- Replace 'mia' with the username you assigned the role to
SELECT rolname, rolsuper, rolcreaterole, rolcreatedb
FROM pg_roles
WHERE rolname = 'mia';

