module STree
  class Tree
    attr_accessor :root, :height

    # errors to throw
    class InvalidRootError < StandardError; end

    def initialize(root)
      raise InvalidRootError, "class Node is not set to constructor" if root.class != Node
      @root  = root
    end

    def exec_calculation
      # binding.pry
      root.calculate
    end
  end
end
