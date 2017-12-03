require('./lib/stree')
# syntax_tree

# root

# left1 right1

root = Node.new
tree = Tree.new(root)

right1 = Node.new
left1 = Node.new

root.value = OP_PLUS
right1.value = 1
left1.value = 2

root.rightNode = right1
root.leftNode = left1


p tree.calculate

