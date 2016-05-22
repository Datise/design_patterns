class Report
  def initialize(company_name, title, text, report_number)
    @company_name = company_name
    @title = title
    # text is array of paragaraphs
    @text = text
    @report_number = report_number.to_s
  end
  def output_report
    generate_title
    generate_body
    generate_end
    save
  end
end