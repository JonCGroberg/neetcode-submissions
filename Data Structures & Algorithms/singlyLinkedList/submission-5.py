class Node:
    def __init__(self,value,next):
        self.value = value 
        self.next = next

class LinkedList:
    def __init__(self):
        self.head = None
        self.tail= None
    
    def get(self, targetIndex: int) -> int:
        curr = self.head
        index = 0

        while curr:
            # check if at correct index yet
            if index == targetIndex:
                return curr.value 
            else:
                curr = curr.next 
                index += 1

        # out of bounds
        return -1

    def insertHead(self, val: int) -> None:
        previousHead = self.head 
        self.head = Node(val, previousHead)

        if self.tail is None:
            self.tail = self.head

    def insertTail(self, val: int) -> None:
        prevTail = self.tail
        self.tail = Node(val, None)

        if prevTail:
            prevTail.next = self.tail
        else:
            self.head=self.tail 

    def remove(self, targetIndex):
        if not self.head:
            return False
        if targetIndex == 0:
            self.head = self.head.next
            if self.head is None:
                self.tail = None
            return True

        prev, curr = self.head, self.head.next
        idx = 1
        while curr:
            if idx == targetIndex:
                prev.next = curr.next
                if curr.next is None:
                    self.tail = prev
                return True
            prev, curr = curr, curr.next
            idx += 1
        return False    

    def getValues(self) -> List[int]:
        values = []
        curr = self.head

        while curr:
            values.append(curr.value)
            curr = curr.next

        return values
    
        
