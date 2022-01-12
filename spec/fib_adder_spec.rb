require 'fib_adder'

RSpec.describe Fib_adder do
  context "gets the correct sums" do
    # ensure something we can calculate manually is correct
    # 0 1 1 2 3 5 8 13 21 34 55 89
    #       2     8       34
    # = 44
    it "sums the even numbers from 1 to 100" do
      fib_adder = Fib_adder.new
      sum = fib_adder.getSums(100)
      expect(sum).to eq 44
    end
    it "sums the even numbers from 1 to 4_000_000" do
      fib_adder = Fib_adder.new
      sum = fib_adder.getSums()
      expect(sum).to eq 4613732
    end
  end
end
