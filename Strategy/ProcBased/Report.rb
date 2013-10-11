# quick and dirty strategy pattern:
# use it when strategy pattern is 
# small, concise and simple

class Report
	attr_reader :title, :text
	attr_accessor :formatter
	
	def initialize &formatter
		@title = 'Monthly Report'
		@text = ['Things are going', 'really really well']
		@formatter = formatter
	end
	
	def output_report
		@formatter.call self
	end
end

HTML_FORMATTER = lambda do |context|
	# strategy proc implemention
	puts '<html>'
	puts '	<head>'
	puts '		<title>#{context.title}</title>'
	puts '	</head>'
	puts '	<body>'
	context.text.each do |line|
		puts '		<p>#{line}</p>'
	end
	puts '	</body>'
	puts '</html>'
end

# create html report (on the ground!)
report = Report.new &HTML_FORMATTER
report.output_report

# create plaintext report (on the fly!)
report = Report.new do |context|
	# strategy proc implemention
	puts '***** #{context.title} *****'
	title.each do |line|
		puts line
	end	
end
report.output_report
