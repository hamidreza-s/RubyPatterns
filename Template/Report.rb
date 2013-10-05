class Report

  def initialize
    @title = 'Monthly Report'
    @text = ['Things are going', 'really really well']
  end

  # template method:
  # it calls methods, 
  # which needs to vary
  def output_report
    output_start
    output_head
    output_body_start

    @text.each do |line|
      output_line line
    end
    
    output_body_end
    output_end
  end

  def output_body
    @text.each do |line|
      output_line line
    end
  end

  def output_line line
    raise 'Called abstract method: output_line'
  end

  def output_start
  end

  def output_head
    output_line @title
  end

  def output_body_start
  end

  def output_body_end
  end

  def output_end
  end

end
