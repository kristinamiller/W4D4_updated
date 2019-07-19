require 'rspec'
require 'problems'

describe 'Array#my_uniq' do
  subject(:array) { [1, 2, 1, 3, 3] }
  it 'return an array that has no duplicates' do
    expect(array.my_uniq).to eq(array.uniq)
  end  

  it 'works with an empty array' do
    expect([].my_uniq).to eq([])
  end

end

describe 'Array#two_sum' do
  subject(:array) { [-1, 0, 2, -2, 1] }
  it 'all pairs of positions where the elements at those positions sum to zero' do
    expect(array.two_sum).to eq([[0, 4], [2, 3]])
  end  

  it 'works with an empty array' do
    expect([].two_sum).to eq([])
  end

end

describe 'Array#my_transpose' do
  subject(:array) {rows = [
    ["a", "b", "c"],
    [3, 4, 5],
    [6, 7, 8]
  ]}
  it 'return an array in which the columns and rows are switched' do
    expect(array.my_transpose).to eq(array.transpose)
  end  

  it 'does not modify original array' do
    expect{array.my_transpose}.to_not change{array}
  end  
  

end

# describe 'Array#two_sum' do
#   subject(:array) { [-1, 0, 2, -2, 1] }
#   it 'all pairs of positions where the elements at those positions sum to zero' do
#     expect(array.two_sum).to eq([[0, 4], [2, 3]])
#   end  

#   it 'works with an empty array' do
#     expect([].two_sum).to eq([])
#   end

# end