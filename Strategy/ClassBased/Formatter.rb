class Formatter
	# strategy class interface
	# it is un-Ruby pattern
	# so we don't use it
	def output_report context
		reaise 'Abstract method called'
	end
end
