# Implement an algorithm to find the nth to last element of a linked list

def nth_from_last list, n
  node = nth = list.head
  n.times do
    raise RuntimeError.new "No nth element present. List too short." unless node
    node = node.next
  end

  while (node)
    node = node.next
    nth = nth.next
  end

  nth.val
end
