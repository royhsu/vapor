import Vapor
import Fluent
import Foundation

final class Post: Model {
    
    struct Schema {
        
        static let id = "_id"

        static let title = "title"
        
        static let content = "content"
        
    }
    
    // MARK: Property
    
    var id: Node?
    
    var title: String
    
    var content: String
    
    // MARK: Init

    init(title: String, content: String) {
        
        self.title = title
        
        self.content = content
        
    }
    
    init(node: Node, in context: Context) throws {
        
        self.id = try node.extract(Schema.id)
        
        self.title = try node.extract(Schema.title)
        
        self.content = try node.extract(Schema.content)
        
    }

    func makeNode(context: Context) throws -> Node {
        
        return try Node(
            node: [
                Schema.id: id,
                Schema.title: title,
                Schema.content: content
            ]
        )
        
    }
}

// MARK: - Preparation

extension Post: Preparation {
    
    static func prepare(_ database: Database) throws {
        
    }

    static func revert(_ database: Database) throws {
        
    }
    
}
