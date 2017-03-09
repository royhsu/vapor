import Vapor
import VaporMongo

let drop = Droplet()

try drop.addProvider(VaporMongo.Provider.self)

drop.preparations.append(Post.self)

drop.resource("posts", PostController())

drop.run()
