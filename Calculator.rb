class Calculator
   @number
   def initialize (number=0.0)
      @number=number
   end
   def add number2
      @number=@number+number2
      puts @number
   end
   def subtract number2
      @number=@number-number2
      puts @number
   end
   def multiply number2
      @number=@number*number2
      puts @number
   end
   def divide number2
      if number2.zero?
      temp=@number
      puts "Division not performed , enter another number other than zero"
      return
      end
      @number=@number/number2
      puts @number

   end
   def cancel
      @number=0.0
      puts @number
   end
end

object1=Calculator.new
loop do
    operation=gets.chomp
    values=operation.split(" ")
    case values[0]
       when 'exit'
         puts "Program Terminated"
         flag=1
       when 'cancel'
         object1.cancel
       when 'add'
          if values.length==2
             object1.add values[1].to_f
          end
       when 'subtract'
           if values.length==2
               object1.subtract values[1].to_f
           end
       when 'divide'
           if values.length==2
               object1.divide values[1].to_f
           end
       when 'multiply'
          if values.length==2
             object1.multiply values[1].to_f
          end
      else
       puts "Invalid Command , enter a valid one"
    end
    if flag == 1
       break
    end

end

