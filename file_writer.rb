require_relative './csv_parser_refactored'

parser = CSVParser.new
parser.get_page_data(19,3)
parser.test.pop
# parser.test.each do |page|
#   File.new("#{page.page["page"]}_seed.rb", 'w+')
# end




parser.test.each do |page|
  File.open("#{page.country_code}_#{page.language_code}_#{page.page["page_title"]}_page.rb", 'w') do |f|
    f.puts("country = Country.find_by(country_code: '#{page.country_code}') ? Country.find_by(country_code: '#{page.country_code}') : Country.create(name:'#{page.country_name}', country_code:'#{page.country_code}')")
  end
end

parser.test.each do |page|
  File.open("#{page.country_code}_#{page.language_code}_#{page.page["page_title"]}_page.rb", 'a') do |f|
    f.puts("page = #{page.page["page_type"]}.new (")
  end
end

parser.test.each do |page|
  File.open("#{page.country_code}_#{page.language_code}_#{page.page["page_title"]}_page.rb", 'a') do |f|
      page.page.each_entry {|key, value| f.puts("#{key}" ":" '"' "#{value}" '",')}
  end
  
end

parser.test.each do |page|
  File.open("#{page.country_code}_#{page.language_code}_#{page.page["page_title"]}_page.rb", 'a') do |f|
    f.puts("country: country")
  end
end

parser.test.each do |page|
  File.open("#{page.country_code}_#{page.language_code}_#{page.page["page_title"]}_page.rb", 'a') do |f|
    f.puts(")")
  end
end

parser.test.each do |page|
  File.open("#{page.country_code}_#{page.language_code}_#{page.page["page_title"]}_page.rb", 'a') do |f|
    f.puts("page.save")
  end
end