module STree
  class Node
    attr_accessor :rightNode, :leftNode, :value

    def calculate
      left = leftNode
      right = rightNode

      if number?
        value
      elsif operator?
        calculate_values(value,left.calculate, right.calculate)
      end
    end


    private

    def calculate_values(operation, left, right)
      case operation
        when Operations::OP_ADD
          left + right
        when Operations::OP_SUB
          left - right
      end
    end

    def number?
      value.is_a? Integer
    end

    def operator?
      value.is_a? Symbol
    end
  end
end
