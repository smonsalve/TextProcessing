def met
	materias = Hash.new(0)
	codigos = Hash.new(0)
	semestres = Hash.new(0)
	nombres = Hash.new(0)
	func = Hash.new(0)
	ingresos = Hash.new(0)
	fechas = Hash.new(0)

	imaterias = 0
	icodigos = 0
	isemestres = 0
	inombres =0	
	ifunc = 0
	iingresos = 0
	ifechas = 0

	#File.open("input/incidente.csv") do |file|
	File.open("input/test1.txt") do |file|
	
		file.each_line do |line|
			#puts line
			l = line.split
			if !(line.include?('-----') || l[0]=="MATERIA" || line == "\n" )
			 	materia = l[0]
				n=1
				palabra = l[n]

				while !(palabra.match(/[A-Z][A-Z]\d{4}/) || palabra == "GEMEIP"  || palabra == "CVCERLALC42" || palabra == "ORI" || palabra == "RSI")
					materia = materia + " " + palabra
					n+=1
					palabra = l[n]	
				end
				codigo = l[n]
				n+=1
				semestre = l[n] 
				if !semestre.match(/\d{5}/)
					semestre = "NA"
				end
				n+=1
				funcionalidad = l[l.length-3]
				ingreso = l[l.length-2] 	
				fecha = l[l.length-1]
				palabra = l[n]
				nombre = ""
				while palabra != funcionalidad
					nombre = nombre + palabra + " "
				 	n +=1
				 	palabra = l[n]
				end	

				if !(materias.has_key?(materia))
					imaterias += 1
					materias[materia] = imaterias
				end	
				print(materias[materia].to_s + ",")

				if !(codigos.has_key?(codigo))
					icodigos += 1
					codigos[codigo] = icodigos					
				end	
				print(codigos[codigo].to_s + ",")

				if !(semestres.has_key?(semestre))
					isemestres += 1
					semestres[semestre] = isemestres					
				end	
				print(semestres[semestre].to_s + ",")

				if !(nombres.has_key?(nombre))
					inombres += 1
					nombres[nombre] = inombres					
				end	
				print(nombres[nombre].to_s + ",")

				if !(func.has_key?(funcionalidad))
					ifunc += 1
					func[funcionalidad] = ifunc					
				end	
				print(func[funcionalidad].to_s + ",")
		
				if !(ingresos.has_key?(ingreso))
					iingresos += 1
					ingresos[ingreso] = iingresos					
				end	
				print(ingresos[ingreso].to_s + ",")

				if !(fechas.has_key?(fecha))
					ifechas += 1
					fechas[fecha] = ifechas					
				end	
				print(fechas[fecha].to_s)
				
				puts
			end
		end
		# puts materias.inspect
		# puts codigos.inspect
		# puts semestres.inspect
		# puts nombres.inspect
		# puts func.inspect
		# puts ingresos.inspect
		# puts fechas.inspect
	end	
end	

met