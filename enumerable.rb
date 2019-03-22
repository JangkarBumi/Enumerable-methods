# This is our clone of the each method
module Enumerable
  def my_each
    i = 0 if block_given?
    while i < length
      yield(self[i])
      i += 1
    end
    self
  end

  def my_each_with_index
    i = 0 if block_given?
    while i < length
      yield(self[i], i)
      i += 1
    end
    self
  end
end

[1, 2, 2, 2, 3, 4, 6].my_each { |var| print var * 2 }
[1, 2, 2, 2, 3, 4, 6].my_each_with_index { |var, index| print "#{index}:#{var} " }
