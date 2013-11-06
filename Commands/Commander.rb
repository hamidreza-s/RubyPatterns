class Commander

	def initialize
		@commands = []
	end
	
	def add_command command
		@commands << command
	end
	
	def execute
		@commands.each { |cmd| cmd.execute }
	end
	
	def unexecute
		@commands.reverse.each { |cmd| cmd.unexecute }
	end
	
	def description
		description = ''
		@commands.each do |cmd| 
			description += cmd.description + "\n" 
		end
		description
	end

end
