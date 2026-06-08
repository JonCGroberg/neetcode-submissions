class DynamicArray:
    
    def __init__(self, capacity: int):
        self.capacity = capacity
        self.arr = [None]* capacity
        self.size = 0

    def get(self, i: int) -> int:
        return self.arr[i]

    def set(self, i: int, n: int) -> None:
        self.arr[i] = n 

    def pushback(self, n: int) -> None:
        if self.getSize() >= self.getCapacity():
            self.resize()
        self.set(self.size,n)
        self.size+=1

    def popback(self) -> int:
        val = self.get(self.size-1)
        self.size-=1
        return val 

    def resize(self) -> None:
        self.capacity*=2
        self.arr += ([0]*self.capacity) # add empty array of size capacity 

    def getSize(self) -> int:
        return self.size
    
    def getCapacity(self) -> int:
        return self.capacity