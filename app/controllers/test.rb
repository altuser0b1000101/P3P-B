require 'pry'

class DegreesConverter 
    attr_reader :degrees_f

    def initialize(degrees_f)
        @degrees_f = degrees_f 
    end

    def degrees_c
        offset = 32
        factor = (5/9)
        result = factor * (@degrees_f-offset)
       
        return result 
    end
end 

converter = DegreesConverter.new(ARGV.first.to_f)

puts "Converted #{converter.degrees_f} degF to #{converter.degrees_c} degC"