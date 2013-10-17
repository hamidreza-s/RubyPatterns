class AddDryIngredidentsTask < Task
	def initialize
		super 'Add dry ingredients'
	end
	
	def get_time_required
		1.0 # one minute
	end
end

class AddLiquidsTask
	def initialize
		super 'Add liquids'
	end
	
	def get_time_required
		2.0 # two minutes
	end
end

class MixTask < Task
	def initialize
		super 'Mix that batter up!'
	end
	
	def get_time_required
		3.0 # three minutes
	end
end
