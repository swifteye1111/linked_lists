# frozen_string_literal: true

require_relative 'lib/linked_list'
require_relative 'lib/node'

list = LinkedList.new
list.append(2)
puts 'done 2'
list.append(3)
puts 'done 3'
list.prepend(1)
puts 'done 1'
puts list.head.value
puts list.tail.value
puts list.head.next_node.value