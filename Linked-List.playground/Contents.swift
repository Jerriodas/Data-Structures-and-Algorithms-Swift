let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)

node1.next = node2
node2.next = node3

//print(node1)

var list = LinkedList<Int>()
list.push(3)
list.push(2)
list.push(1)

//print(list)

var list1 = LinkedList<Int>()
list1.append(1)
list1.append(2)
list1.append(3)

print(list1)
