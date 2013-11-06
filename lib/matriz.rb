class Matriz
  
  #Get y Set
  attr_accessor :n,:m,:A
       
  #Constructor de la clase Matriz
  def initialize(*args)
    @n=args[0]
    @m=args[1]
    @A=Array.new(@n)
    for i in 0...@n do
      @A[i]=args[2+i]
    end
  end
end
