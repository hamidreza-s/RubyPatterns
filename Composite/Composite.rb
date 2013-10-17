class MakeCakeTask < CompositeTask
	def initialize
		super 'Make cake'
		@sub_tasks << MakeBatterTask.new
		@sub_tasks << FillPanTask.new
		@sub_tasks << BakeTask.new
		@sub_tasks << FrostTask.new
		@sub_tasks << LickSpoonTask.new
	end
end

class MakeBatterTask < CompositeTask
	def initialize
		super 'Make batter'
		@sub_tasks << AddDryIngredientsTask.new
		@sub_tasks << AddLiquidsTask.new
		@sub_tasks << MixTask.new
	end
end

class FillPanTask < CompositeTask ; end
class BakeTask < CompositeTask ; end
class FrostTask < CompositeTask ; end
class LickSpoonTask < CompositeTask ; end
