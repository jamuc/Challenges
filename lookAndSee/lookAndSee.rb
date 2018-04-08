# Look and see initializes with and array of [1]
# then I see one 1
# [1, 1]
# I see two 1s
# [2, 1]
# I see one 2 and one 1
# [1, 2, 1, 1], etc, etc.
def lAS(n: 0)
  array = [1]
  puts "#{array.inspect}"
  previous = array.first
  new_array = []
  counter = 0
  
  n.times do
    previous = array.first
    counter = 0
    new_array = []
    
    array.each do |element|
      if(element == previous)
        counter = counter + 1
      else
        new_array << counter
        new_array << previous
        counter = 1
        previous = element
      end
    end
  
    new_array << counter
    new_array << previous
    array = new_array.dup
    puts "#{array.inspect}"
  end
end
