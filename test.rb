def lea
	m = Hash.new(0)
	m["Hola"] = 5	
	while (s=gets) && s != "0\n"
		m[s]+=1
		puts m.inspect

	end	
end	





lea()

