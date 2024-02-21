class FindSubValue
  def initialize(array)
    @my_array = array
  end

  def get_sub(sum)
    result = []
    @my_array.each_with_index do |value1, index1|
          @my_array.each_with_index do |value2, index2|
           next if index1 >= index2

           if value1 + value2 == sum
            result << [value1, value2]
           end
          end
       end

     if result.empty?
       puts 'not found'
     else
       result.each do |i|
        puts i.inspect
      end
  end
 end
end

arr = FindSubValue.new([1,2,3,4,5])

arr.get_sub(6)
arr.get_sub(14)
