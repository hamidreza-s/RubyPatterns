class PlainTextFormatter < Formatter
	# strategy class implemention
	def output_report context
		puts '***** #{context.title} *****'
		title.each do |line|
			puts line
		end
	end
end
