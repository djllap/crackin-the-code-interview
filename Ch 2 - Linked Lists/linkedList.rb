class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
    @val = val
    @next = next_node
  end
end

class Linked_List
  attr_accessor :head

  def insertAtHead(val)
    @head = Node.new(val, @head)
  end

  def insertAtTail(val)
    unless @head
      return insertAtHead(val)
    end

    node = @head
    while node.next
      node = node.next
    end
    node.next = Node.new(val, nil)
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