require "caesar"

describe "#caesar_cipher" do 
	context "with 1 word" do 
		context "when given ('hello', 1)" do 
			it "returns 'ifmmp'" do 
				expect(caesar_cipher("hello", 1)).to eql("ifmmp")
			end
		end

		context "when give ('hello', 5)" do 
			it "returns 'mjqqt'" do 
				expect(caesar_cipher("hello", 5)).to eql("mjqqt")
			end
		end

		context "when given ('World', 1)" do 
			it "returns 'xpsme'" do 
				expect(caesar_cipher("World", 1)).to eql("xpsme")
			end
		end
	end 
end