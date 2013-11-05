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
    it "Se debe poder imprimir la matriz"do
       A.to_s.should == "[1, 2][2, 3]"
    end
  end




end
