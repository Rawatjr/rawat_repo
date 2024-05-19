
-- 1. Creating a database named " create_User":
create database create_User;
use create_User;

-- 2.Creating user
create user 'New_Usr'@'localhost' identified by 'Newpass';

-- 3. granting Privileges
grant select,insert, update on create_User .* to 'New_Usr'@'localhost';

-- 4. Revoke privileges
revoke insert on create_User.* from 'New_Usr'@'localhost';
 
-- 5. Drop User
drop user 'New_Usr'@'localhost';
