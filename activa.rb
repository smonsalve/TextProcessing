def met_strm
	materias = Hash.new(0)
	n = 100
	File.open("incidente.cvs") do |file|
		file.each_line do |line|
			if n>0
				line.split.each do |word|
					if word.match(/[A-Z][A-Z]\d{4}/)
						materias[word] += 1
					end
				end
				n -= 1
			end
		end	
	end
	puts materias.inspect
end	

met_strm