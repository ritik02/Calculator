class Calculator
   def initialize (number=0.0)
      @number=number
   end
   def add (number2=0.0)
      @number=@number+number2
      puts @number
   end
   def subtract (number2=0.0)
      @number=@number-number2
      puts @number
   end
   def multiply (number2=1.0)
      @number=@number*number2
      puts @number
   end
   def divide (number2=1.0)
      if number2.zero?
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

def CheckValidity? value
   return true if value.length==2 && (value[1].to_i.to_s==value[1] || value[1].to_f.to_s== value[1])
   return false
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
          if CheckValidity? values
             object1.add values[1].to_f
          else object1.add
          end
       when 'subtract'
           if CheckValidity? values
               object1.subtract values[1].to_f
           else object1.subtract
           end
       when 'divide'
          if CheckValidity? values
               object1.divide values[1].to_f
           else object1.divide
           end
       when 'multiply'
          if CheckValidity? values
             object1.multiply values[1].to_f
          else object1.multiply
          end
      else
       puts "Invalid Command , enter a valid one"
    end
    if flag == 1
       break
    end

end

