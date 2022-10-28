# frozen_string_literal: true

require_relative 'lib/linked_list'
require_relative 'lib/node'

list = LinkedList.new
list.append(10)
list.append(11)
list.append(12)
list.append(13)
list.append(14)
list.append(15)
list.pop
list.pop
puts list.size
puts list.at(3).value
puts list.at(0).value
puts list.contains?(12)
puts list.contains?(15)
puts list.find(11)
puts list.find(30)
puts list.to_s
list.insert_at(11.5, 2)
puts list.to_s
list.remove_at(2)
puts list.to_s