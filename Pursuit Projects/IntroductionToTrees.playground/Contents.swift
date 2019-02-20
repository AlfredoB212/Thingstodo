import Cocoa

class TreeNode<T:Equatable>: CustomStringConvertible {
    var value: T
    var parent: TreeNode?
    var children = [TreeNode]()
    
    var description: String {
        guard !children.isEmpty else {
            return "\(value)"
        }
        return "\(value)" + "{" + "\(children.map{ $0.description }.joined(separator: ", ") )" + "}"
    }
    
    init(value: T) {
        self.value = value
    }
    
    public func addChild(node: TreeNode) {
        children.append(node)
        node.parent = self
    }
    public func search(value: T) -> TreeNode? {
        if self.value == value {
            return self
        }
        for child in children {
            if let foundNode = child.search(value: value) {
                return foundNode
            }
        }
        return nil
    }
}

let tree = TreeNode<String>(value: "animal")

let mammalNode = TreeNode<String>(value: "mammal")
let reptileNode = TreeNode<String>(value: "Reptile")
let primateNode = TreeNode<String>(value: "Primate")
let canineNode = TreeNode<String>(value: "Canine")

tree.addChild(node: mammalNode)
tree.addChild(node: reptileNode)
tree.addChild(node: primateNode)

print(tree)

