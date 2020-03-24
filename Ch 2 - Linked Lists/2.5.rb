# You have two numbers represented by a linked list,
# where each node contains a single digit. The digits
# are stored in reverse order, such that the 1's digit 
# is at the head of the list. Write a function that
# adds the two numbers and returns the sum as a linked list

def sumTwoLists l1, l2
  n1 = l1.head
  n2 = l2.head
  carry = 0
  sumList = Linked_List.new

  while n1 or n2
    v1 = n1 ? n1.val : 0
    v2 = n2 ? n2.val : 0
    sum = v1 + v2 + carry
    digit = (sum > 9) ? sum % 10 : sum
    carry = (sum > 9) ? 1 : 0

    sumList.insertAtTail(digit)
    n1 = n1.next if n1
    n2 = n2.next if n2
  end
  sumList.insertAtTail(carry) if carry > 0
  sumList.print
end
