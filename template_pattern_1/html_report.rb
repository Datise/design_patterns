require 'markaby'
require './report'
class HTMLReport < Report
  def initialize(company_name, title, text, report_number)
    super
    @mab = Markaby::Builder.new
  end

  def generate_title
    @mab.html do
      head { title @title }
    end
  end

  def generate_body
    company_name = @company_name
    text = @text
    @mab.html do
      body do
        h1 "Monthly report for #{company_name}"
        text.each do |para|
          p para
        end
      end
    end
  end

  def generate_end
    @mab.html do
      body do
        p "Thanks for everything!"
      end
    end
  end

  def save
    IO.write(@report_number, @mab.to_s)
  end
end