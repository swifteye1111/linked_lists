# frozen_string_literal: true

require_relative './node'

# Linked list class.
class LinkedList
  attr_accessor :head, :tail
  attr_reader :size

  def initialize
    @size = 0
    self.head = nil
  end

  def append(value)
    if head.nil?
      self.head = Node.new(value)
    elsif tail.nil?
      self.tail = Node.new(value)
      head.next_node = tail
    else
      tail.next_node = Node.new(value)
      self.tail = tail.next_node
    end
    @size += 1
  end

  def prepend(value)
    if head.nil?
      self.head = Node.new(value)
    else
      self.head = Node.new(value, head)
    end
    @size += 1
  end

  def at(index)
    i = 0
    current = head
    while i < index
      current = current.next_node
      i += 1
    end
    current
  end

  def pop
    if tail.nil?
      self.head = nil
    else
      current = head
      current = current.next_node until current.next_node == tail
      self.tail = current
    end
    @size -= 1
  end

  def contains?(value)
    i = 0
    while i < @size
      return true if at(i).value == value

      i += 1
    end
    false
  end

  def find(value)
    i = 0
    while i < @size
      return i if at(i).value == value

      i += 1
    end
    nil
  end

  def to_s
    str = ''
    current = head
    while current.next_node
      str += "( #{current.value} ) -> "
      current = current.next_node
    end
    str += 'nil'
    str
  end

  def insert_at(value, index)
    nil if index >= @size

    node_before = at(index - 1)
    node_after = node_before.next_node
    new_node = Node.new(value, node_after)
    node_before.next_node = new_node
    @size += 1
  end

  def remove_at(index)
    nil if index >= @size

    node_before = at(index - 1)
    node_after = at(index + 1)
    node_before.next_node = node_after
    @size -= 1
  end
end
