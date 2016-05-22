class Duplicates

	def self.findDuplicate(array)
		@hash = Hash.new  
		array.map{|x| @hash[x] ? (return x) : @hash[x] = 1; 
	end

  # Find the first non­repeating character in a string: ("DEFD" ­> E)

  	# First Method, this is fastest
  	def self.firstNonRepeating(s)
 
	    	repetitions =  Hash.new  
	 	beginning_time = Time.now
	 
	 	characters.each_char {|c| repetitions[c] ? repetitions[c] += 1 : repetitions[c] = 1
		 
	 	# Cualquiera de estos dos pasos son ineficientes ya que se debe hacer un bucle por cada letra del texto
	 	
	 	result = repetitions.group_by{|k,v| v} # Agrupar el hash por valor
	 	
	 	puts result["1"].first imprimir la primera letra con una sola repeticion
	 	
	 	end_time = Time.now
	 	puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
	end

	#Second Method
	def self.first_nonrepeat(s)
		beginning_time = Time.now
	   
	    	nonrepeat = []
	    	repeat = []
	    	s.each_char do |c|
	        	if !repeat.include?(c) && !nonrepeat.include?(c)
	            		nonrepeat << c
	        	elsif nonrepeat.include?(c)
	            		nonrepeat.delete(c)
	            		repeat << c
	        	end
	    	end
	    	end_time = Time.now

	 	puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
	    return !nonrepeat.empty? ? nonrepeat.first : ""    
	end

end
