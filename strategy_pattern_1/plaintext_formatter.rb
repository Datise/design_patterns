require './formatter'
require './report'
class PlaintextFormatter < Formatter
  def output_report(text, title)
    raise TypeError, "Title must be a string" if !title.respond_to?(:strip)
    raise TypeError, "Text should be array of strings" if !text.respond_to?(:flatten!)
    raise ArgumentError, "Reports need a title!" if title.strip.empty?
    puts "**** #{title} ****"
    text.each do |line|
      puts "-- #{line}"
    end
  end
end