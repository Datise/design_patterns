require './report'
class TEXTReport < Report
  def initialize(company_name, title, text, report_number)
    super
    @file_name = @report_number + ".txt"
    @file = File.new(@file_name, 'w+')
    @file.close
  end

  def generate_title
    File.open(@file_name, "a+") do |f|
      f.puts @title
    end
  end

  def generate_body
    File.open(@file_name, "a+") do |f|
      f.puts "Report for: #{@company_name}"
      @text.each do |line|
        f << "--" + line + "\n"
      end
    end
  end

  def generate_end
    File.open(@file_name, "a+") do |f|
      f.puts "THANKS FOR EVERYTHING"
    end
  end

  def save
    puts "Check file "
  end
end