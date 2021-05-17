# frozen_string_literal: true

require 'array_calculator'


describe Array_calculator do


  it 'can create an instance of Array_calculator' do
    array_calculator = Array_calculator.new
    expect(array_calculator).to be_kind_of(Array_calculator)
  end

  it 'responds to the method sum_largest_nums' do
    expect(subject).to respond_to(:sum_largest_nums).with(1).argument
  end

  it 'responds to the method more_than_two' do
    expect(subject).to respond_to(:more_than_two).with(1).argument
  end

  it 'responds to the method remove_elements' do
    expect(subject).to respond_to(:remove_elements).with(2).argument
  end

  it 'responds to the method remove_non_numerics' do
    expect(subject).to respond_to(:remove_elements).with(1).argument
  end

  it 'if the array contains no numbers, it returns zero' do
    expect(subject.sum_largest_nums([])).to eq(0)
  end

  it 'if the array contains 1 number, it returns just that number' do
    expect(subject.sum_largest_nums([1])).to eq(1)
  end

  it 'if the array contains 2 numbers, it returns the sum of those numbers' do
    expect(subject.sum_largest_nums([1, 3])).to eq(4)
  end

  it 'returns the sum of the highest 2 numbers in an array' do
    expect(subject.sum_largest_nums([1, 3, 5])).to eq(8)
  end

  it 'returns the sum of the highest 2 numbers in an array' do
    expect(subject.sum_largest_nums([3, 3, 3, 3])).to eq(6)
  end

  it 'returns the sum of the highest 2 numbers in an array' do
    expect(subject.sum_largest_nums([3, 3, 3, 6])).to eq(9)
  end

  it 'returns the sum of the highest 2 numbers in an array' do
    expect(subject.sum_largest_nums([1, 3, 5, 7])).to eq(12)
  end

  it 'returns the sum of the highest 2 numbers in an array' do
    expect(subject.sum_largest_nums([1, 3, 5, 7, 32, 11, 21])).to eq(53)
  end

  #edge cases
  #testing negative numbers

  it 'returns the sum of the highest 2 numbers in an array' do
    expect(subject.sum_largest_nums([-1, -3, -5, -7, -32, -11, -21])).to eq(-4)
  end

  #testing letters

  it 'ignores all non-numeric values in the array' do
    expect(subject.sum_largest_nums([1, 3, 5, 7, 32, 11, 'd', 21, 'a', 'b'])).to eq(53)
  end


end
