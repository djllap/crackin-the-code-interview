# Write the code to remove duplicates from an unsorted Linked List

# FOLLOW UP: Solve without using a temporary memory buffer

require_relative './linkedList.rb'

l = Linked_List.new
l.insert('hi')
l.insert('ho')
l.insert('awesome')
l.insert('beef')
l.insert('hi')
l.insert('hi')
l.insert('awesome')

def remove_with_buffer(list)
  prev = list.head
  buffer = [prev.val]

  while (prev and prev.next) do
    node = prev.next
    if buffer.include? node.val
      prev.next = node.next
    else
      buffer.push(node.val)
    end
    prev = prev.next
  end
end

def remove_without_buffer (list)
  node = list.head
  while node
    runner = node
    while runner and runner.next
      if runner.next.val == node.val
        runner.next = runner.next.next
      end
      runner = runner.next
    end
    node = node.next
  end
end

l.print
remove_without_buffer(l)
l.print