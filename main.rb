lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "pry-byebug"
require_relative "lib/stree"

# syntax_tree
# root
# left1 right1

root = STree::Node.new
tree = STree::Tree.new(root)

right1 = STree::Node.new
left1 = STree::Node.new

root.value = STree::Operations::OP_ADD
right1.value = 1
left1.value = 2

root.rightNode = right1
root.leftNode = left1

p tree.exec_calculation

