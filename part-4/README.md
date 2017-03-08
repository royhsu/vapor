# Install MongoDB

## Homebrew

The missing package manager for macOS

* [Homebrew](https://brew.sh)

### Installation

	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		
## MongoDB

Building on the Best of Relational with the Innovations of NoSQL

* [MongoDB](https://www.mongodb.com)

### Installation

1. Check updates for Homebrew

		brew update
	
2. Install MongoDB via Homebrew
	
		brew install mongodb --with-openssl

### Set up MongoDB

1. Create the default data directory for MongoDB

		sudo mkdir -p /data/db
	
2. Check permissions of data directory

		ls -ld /data/db/
	
3. Change to the correct permissions

		sudo chown -R `id -u` /data/db
		
	> Note:
	>
	> There won't be a mongodb user appears in /etc/passwd if installed through Homebrew

4. Run the MongoDB instance

		mongod
	
5. Add admin user for Mongo database

6. Use MongoDB shell

		mongo
		
7. Use admin database
	
		use admin
		
8. Create a administrator
	
		db.createUser(
  			{
    			user: "<admin name>",
    			pwd: "<admin password>",
    			roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  			}
		)		

9. Re-start the MongoDB instance with access control
	
		mongod --auth
		
10. Use MongoDB shell with authentication
	
		mongo -u "<admin name>" -p "<admin password>" --authenticationDatabase "admin"

### and 

1. Create a database for the application

		use <database name>

2. Create a MongoDB user for reading and writing data in the database

		db.createUser(
			{
				user: "<user name>",
				pwd: "<user password>",
				roles: [
					{
						role: "readWrite",
						db: "<database name>"
					}
				]
			}
		)
		
3. Use MongoDB shell with application user

		mongo -u "<user name>" -p "<user password>" --authenticationDatabase "<database name>"

### Stop MongoDB instance or shell

1. Quit

	`ctrl` + `c`
	
### Reference

* [Install MongoDB Community Edition on OS X](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/)
* [Enable Auth](https://docs.mongodb.com/manual/tutorial/enable-authentication/)
* [Manage Users and Roles](https://docs.mongodb.com/manual/tutorial/manage-users-and-roles/)
* [Introduction to MongoDB Security](http://tgrall.github.io/blog/2015/02/04/introduction-to-mongodb-security/)
* [mongodb Mongod complains that there is no /data/db folder](http://stackoverflow.com/questions/7948789/mongodb-mongod-complains-that-there-is-no-data-db-folder/10097680)
* [How To Use passwd and adduser to Manage Passwords on a Linux VPS](https://www.digitalocean.com/community/tutorials/how-to-use-passwd-and-adduser-to-manage-passwords-on-a-linux-vps)