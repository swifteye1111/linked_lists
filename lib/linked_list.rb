# frozen_string_literal: true

require_relative './node'

# Linked list class.
class LinkedList
  attr_accessor :head, :tail

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
end

