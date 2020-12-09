public struct Stack<Element> {
    private var storage: [Element] = []
    
    public init(_ elements: [Element]) {
        storage = elements
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        storage.last
    }
    
    public var isEmpty: Bool {
        peek() == nil
    }
    
}

extension Stack: CustomStringConvertible {
    public var description: String {
        """
        --------top----------
        \(storage.map{ "\($0)" }.reversed().joined(separator: "\n"))
        ---------------------
        """
    }
}

var stack = Stack<Int>([])
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)

print(stack)

if let poppedElement = stack.pop() {
    assert(4 == poppedElement)
    print("Popped: \(poppedElement)")
}

var array = ["A", "B", "C", "D"]
var stack2 = Stack(array)
print(stack2)
stack2.pop()
print(stack2)
