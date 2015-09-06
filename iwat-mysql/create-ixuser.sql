CREATE USER 'ixuser'@'localhost' IDENTIFIED BY 'ixuser';
GRANT ALL PRIVILEGES ON * . * TO 'ixuser'@'localhost' IDENTIFIED BY 'ixuser' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON  `ixuser\_%` . * TO  'ixuser'@'localhost';
FLUSH PRIVILEGES;