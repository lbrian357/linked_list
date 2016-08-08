class Node
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList 
  def initialize
    @head = Node.new('head')
  end

  def append(data)
    a_node = Node.new(data)
    tail.next_node = a_node
  end

  def prepend(data)
    a_node = Node.new(data, @head.next_node)
    @head.next_node = a_node
  end

  def size #not including head
    count = 0
    tmp = @head
    while tmp.next_node != nil
      tmp = tmp.next_node
      count += 1
    end
    count
  end

  def head
    @head.new_node.value
  end

  def tail
    tmp = @head
    while tmp.next_node != nil
      tmp = tmp.next_node
    end
    tmp
  end

  def at(index)
    count = 0
    tmp = @head
    while count <= index
      if count == index
        return tmp.value
      else
        tmp = tmp.next_node
      end
      count += 1
    end
  end

  def pop 
    tmp = @head
    while tmp.next_node.next_node !=nil
      tmp = tmp.next_node
    end
    tmp.next_node = nil

  end

  def contains?(thing)
    condition = false    
    tmp = @head
    while tmp != nil
      condition = true if tmp.value == thing
      tmp = tmp.next_node
    end
    condition
  end

  def find(data) 
    count = 0
    tmp = @head
    if contains?(data)
      while tmp.next_node != nil
        tmp = tmp.next_node
        count += 1
        if tmp.value == data
          return count
        end
      end
    else
      return nil
    end
  end

  def to_s
    string = ''
    tmp = @head
    while tmp !=nil

      string = string + "( #{tmp.value} ) -> "
      tmp = tmp.next_node
    end
    string = string + 'nil'
    p string
  end

  def insert_at(index)
  end

  def remove_at(index)
  end
end
