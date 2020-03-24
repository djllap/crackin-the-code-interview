# Write code to partition a linked list around a value x, such 
# that all nodes less than x come before all nodes greater or 
# equal to x.

def partitionList list, x
  prev = list.head
  node = prev.next

  while node
    p "#{prev.val}, #{node.val}"
    if (node.val < x)
      prev.next = node.next
      node.next = list.head
      list.head = node
      node = prev.next
    else
      prev = prev.next
      node = prev ? prev.next : nil
    end
  end
end
