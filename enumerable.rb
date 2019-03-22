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

  def my_all?
    all = true
    i = 0
    while i < length
      all = false unless yield(self[i])
      i += 1
    end
    print all
  end
end

