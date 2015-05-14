<<<<<<< HEAD
#require "charlock_holmes/string"
=======
#class Interactiva
require "charlock_holmes/string"
>>>>>>> 9a0d939a31b038820b7e06955ec9234a24ee2315

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
<<<<<<< HEAD
	#n = 100
	File.open("incidente.csv") do |file|
	#File.open("100.txt") do |file|
		file.each_line do |line|
			#if n>0
				#puts line.detect_encoding
				#puts line.chomp.split
				categorize(line)
	#			n -= 1
=======
	materias = Hash.new(0)
	n = 100
	File.open("100.txt") do |file|
		file.each_line do |line|
			if n>0
				line.split.each do |word|
					if word.match(/[A-Z][A-Z]\d{4}/)
						materias[word] += 1
					end
				end
				n -= 1
			end
>>>>>>> 9a0d939a31b038820b7e06955ec9234a24ee2315
		end	
	end
	puts materias.inspect
end	



met_strm

#end

