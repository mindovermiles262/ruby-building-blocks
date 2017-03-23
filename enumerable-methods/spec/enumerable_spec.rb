require "enumerable"

describe Enumerable do
    
    let (:arr) { [2,4,7,2] }
    let (:ans) { [] }

    describe "my_each" do
        it "should steps through array and do block" do
            arr.my_each { |i| ans << i*2 }
            expect(ans).to eq([4, 8, 14, 4])
        end
    end

    describe "my_each_with_index" do
        it "should step through array and return index" do
            arr.my_each_with_index { |i, j| ans << j }
            expect(ans).to eq([0, 1, 2, 3])
        end
    end

    describe "my_select" do
        it "returns array containing all elements for which given block returns true" do
            expect(arr.my_select { |i| i % 2 == 0 }).to eq([2,4,2])
        end
        it "returns a blank array if all false" do
            expect(arr.my_select { |i| i > 10 }).to eq([])
        end
    end

    describe "my_all?" do
        it "returns true if no elements return false" do
            expect(arr.my_all? { |i| i < 10 }).to eq(true)
        end
        it "returns false if one or more elements return false" do
            expect(arr.my_all? { |i| i < 6 }).to eq(false)
        end
    end
=begin
    describe "my_any?" do
        it "returns true if one condition is true" do
            expect()
    end
=end
end
