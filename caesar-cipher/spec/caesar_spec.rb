require "caesar"

describe CaesarCipher do
    describe "encrypt" do
        it "lowercase" do
            expect(CaesarCipher.encrypt("hello", 5)).to eql("mjqqt")
        end
        
        it "uppercase" do
            expect(CaesarCipher.encrypt("FOO", 3)).to eql("IRR")
        end
        
        it "wraps around" do
            expect(CaesarCipher.encrypt("wxYZ", 5)).to eql("bcDE")
        end

        it "ignores numbers" do
            expect(CaesarCipher.encrypt("abc123", 3)).to eql("def123")
        end

        it "multiple words" do
            expect(CaesarCipher.encrypt("What a string!", 5)).to eql("Bmfy f xywnsl!")
        end

        it "key of 53" do
            expect(CaesarCipher.encrypt("abc", 53)).to eql("bcd")
        end
    end
end
