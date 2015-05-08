require "charlock_holmes/string"

def metodo1
	File.open("100.txt") do |file|

		content = file.read
		content2 = file.readlines

		content2.each do |lines|
			print lines
		end	
	end	

# contents = File.read("Chat.txt")

end

#$; = /\s\s/ 

def met_strm
	n = 100
	File.open("100.txt") do |file|
		file.each_line do |line|
			if n>0
				#puts line.detect_encoding
				#puts line.chomp.split
				categorize(line)
				n -= 1
			end
		end	
	end
end	


def categorize(line)
	line.split.each do |word|
		if word.match(/[A-Z][A-Z]\d{4}/)
			puts word
		end
	end
end

met_strm
