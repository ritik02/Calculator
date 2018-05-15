class Calculator
   @number
   def initialize (number=0.0)
      @number=number
   end
   def add number2
      @number=@number+number2
   end
   def subtract number2
      @number=@number-number2
   end
   def multiply number2
      @number=@number*number2
   end
   def divide number2
      temp=@number
      begin
         @number=@number/number2
      rescue ZeroDivisionError => e
         puts e.message
      ensure
         @number=temp
         puts "Division not performed ,enter another number other than zero"
      end
   end
   def cancel
      @number=0.0
end

object1=Calculator.new
loop do
    operation=gets.chomp
    values=operation.split(" ")
    if values[0]=='exit'
       puts "Program Terminated"
       break
    elsif values[0]=='cancel'
       cancel
    elsif values[0]=='add' && values.length==2
       add values[1].to_f
    elsif values[0]=='subtract' && values.length==2
       subtract values[1].to_f
    elsif values[0]=='divide' && values.length==2
       divide values[1].to_f
    elsif 

end

