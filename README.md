# Ansible
# Automate deployment by creating two roles for (Magenta webserver & Mysql)
simple ansible test. It is critical that the web server can communicate with the database.

      In order to verify that the roles are performing their tasks as expected, we writine  unit tests to validate their operation prior to production deployment for the company's e-commerce site. These tests will be used to verify        the connection between the web server Magento and the database MySql. So that users have good access to the homepage of the site.
------------------------------------------------------------------------------------
# Deliverables:

-Two role trees with scripts that meet the needs of the statement.

-The playbook that will allow to orchestrate the launch of your roles.

-The logs of results associated with tests in a .txt file.

-The scripts must be functional regardless of the environment used.

# Additional info:

- a "root" user for the database so that the web server can connect to it.
 
- The default protocol used by all web servers is http, this is open on port 80.

- The MySql connection protocol is open on port 3306 by default.

- For a complex architecture, it's better to split  configuration between multiple roles than to write a single large playbook.

- One role per machine, start by building the inventory.

- totally create  own custom tests with Python and the pytest or requests library.

- To  perform  tests "Molecule " with the _"verifier"_ testinfra that you can specify when creating the role.





