class Report
  attr_reader :text, :title
  attr_accessor :formatter
  def initialize(formatter)
    @text = "My moon my man, killin' the books."
    @title = ['text 1', 'text 2']
    @formatter = formatter
  end

  def output_report
    @formatter.output_report(@title, @text)
  end
end