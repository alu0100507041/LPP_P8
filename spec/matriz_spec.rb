require "matriz.rb"
describe Matriz do
  before :all do
   A = Matriz.new(2,2,[1,2],[2,3])
   B = Matriz.new(2,2,[1,2],[2,3])
 end
 describe "basicas" do
    it "existe numero de filas" do
       A.n.should ==2
    end
    it "existe numero de columnas" do
       A.m.should ==2
    end
    it "es una matriz cuadrada" do
       A.cuadrada.should == true
    end
    it "Se puede imprimir la matriz"do
       A.to_s.should == "[1, 2][2, 3]"
    end
  end

   describe "operaciones algebraicas" do
    it "se pueden sumar dos matrices" do

    (A+B).to_s.should=="[2, 4][4, 6]"
    end
    it "se pueden multiplicar dos matrices" do
        (A*B).to_s.should=="[5, 8][8, 13]"
    end
    it "se pueden restar dos matrices" do
       (A-B).to_s.should=="[0, 0][0, 0]"

    end
   it "Se puede dividir una matriz por un escalar" do
       (A/2).to_s.should =="[0.5, 1.0][1.0, 1.5]"
   end

    it "Se puede multiplicar una matriz por un escalar" do
        (A.mult(2)).to_s.should =="[2, 4][4, 6]"
    end

   end



end
