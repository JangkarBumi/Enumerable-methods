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

  def my_select
    selected = [] if block_given?
    my_each do |x|
      selected << x if yield(x)
    end
    puts selected
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

  def my_any?
    all = false
    i = 0
    while i < length
      all = true if yield(self[i])
      i += 1
    end
    print all
  end
end
