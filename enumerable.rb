# This is our clone of the each method
module Enumerable
    def each_clone
      i = 0 if block_given?
      begin
        yield(self[i])
        i += 1
      end while i < length
      self
    end
    end
  
  [1, 2, 2, 2, 3, 4, 6].each_clone { |var| print "#{var} " }
  