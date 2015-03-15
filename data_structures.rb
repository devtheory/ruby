# Queue - A FIFO abstract data type that models a waiting line (like grocery checkout line).
# It has methods to APPEND, SERVE, IS_EMPTY, PEEK
class Queue
  attr_reader :queue # an array to hold the elements
  
  def initialize
    @queue = []
  end
  
  def append(el)
    queue.unshift(el) # adds the element to the back of the array
  end
  
  def serve
    queue.pop unless is_empty # serves the next element if there is any
  end
  
  def is_empty?
    queue.length == 0 # checks if the queue is empty to prevent error when serving from empty queue
  end
  
  def peek
    queue[-1] # takes a look at the el at the front of the line without serving it
  end
end