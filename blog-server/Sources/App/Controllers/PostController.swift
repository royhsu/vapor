import Vapor
import HTTP

final class PostController: ResourceRepresentable {
    
    func show(request: Request, post: Post) throws -> ResponseRepresentable {
        
        return post
        
    }

    func create(request: Request) throws -> ResponseRepresentable {
        
        guard
            let title = request.json?["title"]?.string
            else {
                
                throw Abort.custom(
                    status: .badRequest,
                    message: "Missing parameter title in body"
                )
                
            }
        
        guard
            let content = request.json?["content"]?.string
            else {
                
                throw Abort.custom(
                    status: .badRequest,
                    message: "Missing parameter content in body"
                )
                
            }
        
        var post = Post(title: title, content: content)
        
        try post.save()
        
        return Response(status: .created)
        
    }
    
    // MARK: ResourceRepresentable
    
    func makeResource() -> Resource<Post> {
    
        return Resource(
            store: create,
            show: show
        )
    
    }

}
