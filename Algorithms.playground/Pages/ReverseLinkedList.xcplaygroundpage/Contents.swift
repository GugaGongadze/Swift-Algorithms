public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func reverseList(_ head: ListNode?) -> ListNode? {
   if (head == nil) { return nil }
   var prevNode: ListNode? = nil
   var currNode = head
   var nextNode = head?.next

    while currNode != nil {
        currNode?.next = prevNode

        prevNode = currNode
        currNode = nextNode
        nextNode = nextNode?.next
    }

    return prevNode
}
