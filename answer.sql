-- Question 1: Creating a Complete Database Backup
-- Command: Backs up the entire sales database (all tables and data)
-- into a file called sales_backup.sql
-- -u root means login as root user
-- -p means prompt for password
-- Regular backups are important because they protect data from loss,
-- allow recovery after mistakes, crashes, or failed changes.
mysqldump -u root -p sales > sales_backup.sql;

-- Question 2: Backing Up All Databases
-- Command: Backs up EVERY database on the MySQL server
-- into a file called all_databases_backup.sql
-- --all-databases exports all databases at once
-- -u root means login as root user
-- -p means prompt for password
-- Backing up all databases before migration is important because
-- it ensures no database is lost, and everything can be restored
-- on the new server if migration fails.
mysqldump -u root -p --all-databases > all_databases_backup.sql;