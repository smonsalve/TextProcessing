def met
	func = Hash.new(0)
	File.open("incidente.csv") do |file|
		file.each_line do |line|
			if !line.include?('----')
				l = line.split
				funcionalidad = l[l.length-3]
				func[funcionalidad] +=1 
			end
		end
		puts func.inspect
	end
end	

met