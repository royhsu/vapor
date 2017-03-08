# Set Up Vapor with MongoDB

## Install Provider

1. Add the mongodb provider dependency in Package.swift

		.Package(url: "https://github.com/vapor/mongo-provider.git", "<version>")

2. Add mongo.json

		{
			"user": "<user name>",
			"password: "<user password>",
			"database": "<database name>",
    		"host": "localhost",
    		"port": "27017"
		}
		
3. Clean vapor project

		vapor clean
		
4. Re-create Xcode project

		vapor xcode

	