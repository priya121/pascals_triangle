require 'rspec' 

describe 'pascals triangle' do

  it 'calculates 1 for the first row of the triangle' do
    expect(row_numbers(1)).to eq([1])
  end

  it 'calculates 1,2,1 for the second row of the triangle' do
    expect(row_numbers(2)).to eq([1,2,1])
  end

  it 'calculates 1,3,3,1 for row 3' do
    expect(row_numbers(3)).to eq([1,3,3,1])
  end

  it 'calculates 1,4,6,4,1 for row 4' do
    expect(row_numbers(4)).to eq([1,4,6,4,1])
  end

  it 'calculates 1,5,10,10,5,1 for row 5' do
    expect(row_numbers(5)).to eq([1,5,10,10,5,1])
  end


end

def row_numbers(number)
  for i in 0..number
    if number == 1 
      row = [] 
    else 
      row = [1]
    end
    counter = 1
    result = 1
    for s in 0..(i-1)
      result = result * (i - counter + 1) / counter
      row << result
      counter += 1
    end
  end
  row
end

