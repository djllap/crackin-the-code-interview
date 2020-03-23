class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
    @val = val
    @next = next_node
  end
end

class Linked_List
  attr_accessor :head

  def insert(val)
    @head = Node.new(val, @head)
  end

  def print
    node = @head
    str = "#{node.val}"
    while (node = node.next) do
      str += " -> #{node.val}"
    end

    p str
  end
end