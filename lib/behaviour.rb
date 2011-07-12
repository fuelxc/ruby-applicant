# Found in some legacy code, without tests.
#
# TODO:
#   Work out what this method does,
#   then write a test or spec to make sure you know what it does,
#   then refactor it such that your test or spec still passes, but the
#   rubyists who come after you don't have to think so hard.
def behaviour_one(ary)
  ary2 = []
  ary.each do |ary_element|
    ary3 = []
    ary2.each do |i|
      if !ary_element.nil? && ary_element < i
        ary3 << ary_element
        ary_element = nil
      end
      ary3.push(i)
    end
    ary3 << ary_element unless ary_element.nil?
    ary2 = ary3
  end
  ary2
end

# TODO:
#   do for this method what you did for the previous
def behaviour_two(ary)
  hash = {:b => [], :a => []}
  ary.each do |i|
    if i == i/2 *2
      hash[:a] << i
    else
      hash[:b] << i
    end
  end
  hash
end

# TODO:
#   build a method that can be called against a hash to inverse the keys and values
#   write a test/spec to prove it
#   write in a little lines of code as possible but is still readable
#   given input of {:a => 'apple', :b => 'banana', :d => 'dog', :c => 'cat'} output will be {'apple' => :a, 'banana' => :b, 'cat' => :c, 'dog' => :d}
