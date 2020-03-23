# Implement an algorithm to delete a node in the middle of 
# a singly linked list given access only to that node.

def deleteNode node
  node.val = node.next.val
  node.next = node.next.next
end