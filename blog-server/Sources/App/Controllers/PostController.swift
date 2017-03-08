import Vapor
import HTTP

final class PostController {

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
        
        return "success"
        
    }

}
