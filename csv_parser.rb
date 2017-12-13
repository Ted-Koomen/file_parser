require 'pry'
require 'roo'

class RidersPageParser

   def call_to_action_two(row,col)
    until @form.cell(row,col) == "Call to Action 2"
      row += 1
    end
    if @form.cell(row,col) == "Call to Action 2"
      return call_to_action_two = {
      title: @form.cell(row,col + 1).strip,
        body: @form.cell(row + 1, col + 1)
      }
    end
  end
  
  def find_page_info    
    col = 1
    row = 0
    until @form.cell(col,row) == "Development Details"
      @form.cell(row += 1,col)    
      if @form.cell(row,col) == "Development Details"
          country_code = @form.cell(row + 1, col + 2),
          country = @form.cell(row + 1, col + 1)
          row += 1
        col += 2
        break
      end
    end
    language_count(row,col)
  
    return {
      country: {
        country_name: country,
        country_code: @form.cell(row, col)
        },
      pages:{
          laguage_code: find_language_info(row,col),
          title: find_title_info(row,col),
          header: find_header_info(row,col),
          content_1: find_content_block_1(row,col),
          content_2: content_block_2_info(row,col),
          call_to_action: find_call_to_action_1(row, col),
          how_to_1: how_to_info(row,col),
          content_3:content_block_3(row,col),
          bike_info: bike_description(row,col),
          content_5: content_block_5(row,col),
          call_to_action_2:call_to_action_two(row,col)
        }
      }
  end
  
  def initialize
    @form = Roo::Spreadsheet.open('./usa-translations.xlsx', extension: :xlsx)
    @language_count = 0
  end

  def content_block_5(row,col)
    until @form.cell(row,col) == "Content Block 5"
      row += 1
    end
    if @form.cell(row,col) == "Content Block 5"
      return content_block_text = @form.cell(row, col + 1)
    end
  end
  
  def find_title_info(row, col)
      until @form.cell(row, col) == "Page"
        row += 1
      end
      if @form.cell(row,col) == "Page"
          title = @form.cell(row,col+1)
      end
      return {title: title}
  end
  
  def find_header_info(row,col)
    until @form.cell(row,col) == "Header Text"
      row += 1
    end
    if @form.cell(row,col) == "Header Text"
      header = @form.cell(row,col + 1)
      header_body = @form.cell(row + 1, col + 1)
    end
    return header_info = {header: header, header_body: header_body}
  end
  
  def find_content_block_1(row,col)
    until @form.cell(row,col) == "Content Block 1 Title"
      row += 1
    end
    if @form.cell(row,col) == "Content Block 1 Title"
      title = @form.cell(row, col + 1).strip
      body = @form.cell(row + 1, col + 1)
    end
    return header_info = {title: title, body: body}
  end

  def find_call_to_action_1(row,col)
    until @form.cell(row,col)  == "Call to Action"
      row += 1
    end
    if @form.cell(row,col) == "Call to Action"
      title = @form.cell(row, col + 1).strip
      body = @form.cell(row + 1, col + 1).strip
    end
    return call_to_action_info = {title: title, body: body}
  end

  def find_language_info(row,col)
    until @form.cell(row,col) == "Page Section"
      row += 1
    end
    if @form.cell(row,col) == "Page Section"
      language_code = @form.cell(row + 1, col + 1)
    end
    return language_code
  end

  def language_count(row,col)
    languages = 0
     until @form.cell(row,col) == "Page Section"
        row += 1
        break if @form.cell(row,col == "Page Section")
     end
    if @form.cell(row + 1, col + 1) == "en"
      row +=1 
      col += 1
      until @form.cell(row,col) == nil
        col += 1
        languages += 1
      end
    end
    @language_count = languages
  end

  
  def content_block_2_info(row,col)
    until @form.cell(row,col) == "Content Block 2"
      row += 1
    end
    if @form.cell(row,col) == "Content Block 2"   
      title = @form.cell(row, col + 1)
      paragraph = @form.cell(row + 1, col + 1)
    end
    return content_block_2 = {title: title, paragraph: paragraph}
  end
  
  def how_to_info(row,col)
    until @form.cell(row,col) == "How-to 1"
      row += 1
    end
    if @form.cell(row,col) == "How-to 1"
      col += 1
      how_to_1 = {
        title: @form.cell(row,col),
        body: @form.cell(row + 1, col)
      }
    end
    how_to_2 = {
      title: @form.cell(row + 2, col),
      body: @form.cell(row + 3, col)
    }
    how_to_3 = {
      title: @form.cell(row + 4, col),
      body: @form.cell(row + 5, col)
    }
    how_to_4 = {
      title: @form.cell(row + 6, col),
      body: @form.cell(row + 7, col)
    }
    return all_how_to_info = {
      how_to_1: how_to_1,
      how_to_2: how_to_2,
      how_to_3: how_to_3,
      how_to_4: how_to_4
    }
  end
  
  def content_block_3(row,col)
    until @form.cell(row,col) == "Content Block 4"
      row += 1
    end
    if @form.cell(row,col) == "Content Block 4"
      content_block = @form.cell(row, col + 1)
    end
    return content_block_3 = {text: content_block}
  end
end


def bike_description(row,col)
  until @form.cell(row,col) == "Handle bar"
    row += 1
  end
  if @form.cell(row,col) == "Handle bar"
    return bike_info = {
      handle_bar: @form.cell(row, col + 1),
      front_wheel: @form.cell(row + 1, col + 1),
      tire: @form.cell(row + 2, col + 1),
      frame_bar: @form.cell(row + 3, col + 1),
      seat: @form.cell(row + 4, col + 1),
      lock: @form.cell(row + 5, col + 1),
      brake: @form.cell(row + 6, col + 1),
      back_wheel: @form.cell(row + 7, col + 1),
      kickstand: @form.cell(row + 8, col + 1)
    }
  end  
end

parser = RidersPageParser.new

p parser.find_page_info[:country]
