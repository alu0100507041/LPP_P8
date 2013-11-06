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

  #Comprobar si una matriz tiene el mismo numero de filas que de columnas
  def cuadrada
    @n==@m
  end

  #Imprimir la matriz
  def to_s
    salida=""
    for i in 0...@n do
      salida+="#{@A[i]}"
    end
    return salida
  end

  #Resta de Matrices
  def -(other)
    c=Matriz.new(@n,@m,[0,0],[0,0])
    for i in 0...@n do
      for j in 0...@m do
        c.A[i][j] =@A[i][j] - other.A[i][j]
      end
    end
   return c
  end

  #Suma de Matrices
  def +(other) 
    c=Matriz.new(@n,@m,[0,0],[0,0])
    for i in 0...@n do
      for j in 0...@m do
        c.A[i][j] =@A[i][j] + other.A[i][j]
      end
    end
    return c
  end

  #Multiplicacion de Matrices
  def *(other)
    c=Matriz.new(@n,@m,[0,0],[0,0])
    for i in 0...@n do
      for j in 0...@n do  
        for k in 0...@n do
          c.A[i][j] += @A[i][k] * other.A[k][j]           
         end
      end
    end
    c 
  end

  #Division de una matriz por un escalar
  def /(other)
    c=Matriz.new(@n,@m,[0,0],[0,0])
    for i in 0...@n do
      for j in 0...@m do
        c.A[i][j] =@A[i][j] / other.to_f
      end
    end
    return c
  end

  #Division de una matriz por un escalar
  def mult(a)
    c=Matriz.new(@n,@m,[0,0],[0,0])
    for i in 0...@n do
      for j in 0...@m do
        c.A[i][j]=@A[i][j]*a
      end
    end
    c
  end
end
