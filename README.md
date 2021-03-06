## Largest-pair-sum-in-array


## Code style

[![js-standard-style](https://img.shields.io/badge/code%20style-standard-brightgreen.svg?style=flat)](https://github.com/feross/standard)


## Specification

### Requirements

Given a sequence of numbers, find the largest pair sum in the sequence.

For example
```
[10, 14, 2, 23, 19] -->  42 (= 23 + 19)
[99, 2, 2, 23, 19]  --> 122 (= 99 + 23)
```

## Installation
To install the program do the following:
```
- Clone this repo
- Run cd array-pair-sum
- Run bundle install
```

## Run tests

To perform tests run:
```
rspec
```
## Use program

To use the program run:
```
irb
```
## Program Example
```
irb(main):001:0> require './lib/array_calculator.rb'
=> true
irb(main):002:0> array_calculator = Array_calculator.new
irb(main):003:0> array_calculator.sum_largest_nums([1,5,2,8,6,12])
=> 20
```
