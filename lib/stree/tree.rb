require('./node')

module STree
  class Tree

    attr_accessor :root

    # errors to throw
    class InvalidRootError < StandardError; end

    def initialize(root)
      raise InvalidRootError, "class Node is not set to constructor" if root.class != Node
      @root  = root
    end

    def calculate

    end
  end

end
