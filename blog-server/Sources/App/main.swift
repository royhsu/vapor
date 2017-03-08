import Vapor

let drop = Droplet()

let postController = PostController()

drop.post("posts", handler: postController.create)

drop.run()
