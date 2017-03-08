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

Check updates for Homebrew

	brew update
	
Install MongoDB via Homebrew
	
	brew install mongodb --with-openssl

### Start the database

1. Create the default data directory for MongoDB

		sudo mkdir -p /data/db
	
2. Check permissions of data directory

		ls -ld /data/db/
	
3. Change to the correct permissions

		sudo chown -R `id -u` /data/db
		
	> Note:
	>
	> There won't be a mongodb user appears in /etc/passwd if installed through Homebrew

4. Run

		mongod
	
5. Add admin user for Mongo database (Skip)

### Stop the database

1. Quit

	`ctrl` + `c`
	
### Reference

* [mongodb Mongod complains that there is no /data/db folder](http://stackoverflow.com/questions/7948789/mongodb-mongod-complains-that-there-is-no-data-db-folder/10097680)
	