# Given a circular linked list, implement an algorithm which
# returns the node at the beginning of the loop.
#
# DEFINITION: 
# Circular linked list: A (corrupt) linked list in which a node's
# next pointer points to an earlier node, so as to make a loop
# in the linked list

def findLoopBeginning(list)
  slow = fast =  list.head

  while fast.next
    slow = slow.next
    fast = fast.next.next
    break if slow == fast
  end
  return unless slow == fast

  tracer = list.head
  until tracer == slow
    slow = slow.next
    tracer = tracer.next
  end

  slow
end
