import Vapor
import VaporMongo

let drop = Droplet()

try drop.addProvider(VaporMongo.Provider.self)

drop.preparations.append(Post.self)

let postController = PostController()

drop.post("posts", handler: postController.create)

drop.run()
