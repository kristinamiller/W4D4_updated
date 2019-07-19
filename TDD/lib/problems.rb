require "byebug"
class Array
  def my_uniq
    hash = {}

    self.each do |el|
      hash[el] = 1
    end

    hash.keys
  end

  def two_sum  #[-1, 0, 2, -2, 1]
    pairs = []
    i = 0
    while i < self.length - 1
      j = i + 1
      while j < self.length 
        pair = [self[i], self[j]]    
        if pair[0] + pair[1] == 0
          pairs << [i,j]
        end
        j += 1
      end
      i+=1
    end
    pairs
  end

  def my_transpose
    new_array = Array.new(self.length) {Array.new(self.length)}
    #copy = self.dup
    self.each_with_index do |row, row_idx|
      row.each_with_index do |el, col_idx|
        new_array[col_idx][row_idx] = self[row_idx][col_idx] 
      end
    end

    new_array
  end

end

