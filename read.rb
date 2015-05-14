n = 10000

File.open("input/incidente.csv") do |file|
	file.each_line do |line|
		if n>0
		#	puts line == "\n"
  	   		puts line
    	  	n -= 1
    	 else
    	 	break
    	end
  	end
end
