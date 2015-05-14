def met
	File.open("100.txt") do |file|

		file.seek(2420)
		puts file.read(10)
	end	
end	

met