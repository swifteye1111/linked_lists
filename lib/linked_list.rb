# frozen_string_literal: true

require_relative './node'

# Linked list class.
class LinkedList
  @@size = 0

  def append(value)
    @@size += 1
    Node.new(value, @@size)
  end

  def prepend(value)

  end
end

