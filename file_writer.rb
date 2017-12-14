require_relative './csv_parser_refactored'

parser = CSVParser.new
parser.get_page_data(19,3)
parser.test.pop
parser.test.each do |page|
  File.new("#{page.page["page"]}.rb", 'w+')
end



parser.test.each do |content|
  File.open("#{content.page["page"]}.rb", 'w') do |f|
      content.page.each_entry {|key, value| f.puts( "#{key}" ":" '"' "#{value}" '"')}
  end
end

