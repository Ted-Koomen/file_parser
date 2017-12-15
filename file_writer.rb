require_relative './csv_parser_refactored'

parser = CSVParser.new
parser.get_page_data(19,3)
parser.test.pop
parser.test.each do |page|
  File.new("#{page.page["page"]}_seed.rb", 'w+')
end


parser.test.each do |page|
  File.open("#{page.page["page"]}_seed.rb", 'w') do |f|
    f.puts( "country = Country.new(country_name:'#{page.page["page"]}' country_code:'#{page.page["page"]}')")
  end
end

parser.test.each do |page|
  File.open("#{page.page["page"]}_seed.rb", 'a') do |f|
    f.puts("#{page.page["page"]} = #{page.page["page"]}.new(")
  end
end

parser.test.each do |content|
  File.open("#{content.page["page"]}_seed.rb", 'a') do |f|
      content.page.each_entry {|key, value| f.puts("#{key}" ":" '"' "#{value}" '",')}
  end
end

parser.test.each do |content|
  File.open("#{content.page["page"]}_seed.rb", 'a') do |f|
    f.puts("country: country")
  end
end

parser.test.each do |content|
  File.open("#{content.page["page"]}_seed.rb", 'a') do |f|
    f.puts(")")
  end
end

parser.test.each do |content|
  File.open("#{content.page["page"]}_seed.rb", 'a') do |f|
    f.puts("#{content.page["page"]}.save \n country.save")
  end
end