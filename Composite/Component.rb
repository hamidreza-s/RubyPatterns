class Task
	attr_reader :name, :parent
	
	def initialize name
		@name = name
		@parent = nil
	end
	
	def get_time_required
		0.0 # zero minute	
	end
end

class CompositeTask < Task
	def initialize name
		super name
		@sub_tasks = []
	end
	
	def << task
		@sub_tasks << task
		task.parent = self
	end

	def remove_sub_task task
		@sub_tasks.delete task
		task.parent = nil
	end
	
	def [] index
		@sub_tasks[index]
	end
	
	def []= index, new
		@sub_tasks[index] = new
	end
	
	def get_time_required
		time = 0.0
		@sub_tasks.each do |task|
			time += task.get_time_required
		end
		time
	end
end
