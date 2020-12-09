

struct Stack<Element> {
    private var storage: [Element] = []
    
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



// MARK: - Challenge 1: Reverse an Array
// Create a function that prints the contents of an array in reversed order

func reverse<Element>(_ array: [Element]) {
    var stack = Stack<Element>()
    
    for value in array {
        stack.push(value)
    }
    
    while let value = stack.pop() {
        print(value)
    }
}

// MARK: - Challenge 2: Balance the parentheses
// Check for balanced parentheses. Given a string, check if there are ( and ) characters, and return true if the parentheses in the string are balanced.

func checkParentheses(_ string: String) -> Bool{
    var stack = Stack<Character>()
    for character in string {
        if character == "(" {
            stack.push(character)
        } else if character == ")" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
        }
    }
    return stack.isEmpty
}
