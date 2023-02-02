require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Kelly") }
  let(:cake) { Dessert.new("cake", 5, chef) }

  describe "#initialize" do
    it "sets a type" do 
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity" do 
      expect(cake.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do 
      expect(cake.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("cake", "string", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cake.add_ingredient("eggs")
      expect(cake.ingredients).to include("eggs")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      
    
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cake.eat(1)
      expect(cake.quantity).to eq(4)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { cake.eat(10)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Kelly the Great Baker")
      expect(cake.serve).to eq("Chef Kelly the Great Baker has made 5 cakes!")
    end
    
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      expect(chef).to receive(:bake).with(cake)
      cake.make_more
    end

  end
end
