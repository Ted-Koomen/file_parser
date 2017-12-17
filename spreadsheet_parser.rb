require 'pry'
require 'roo'
require_relative './page.rb'
class SpreadSheetParser

  attr_reader :form, :hash
  attr_accessor :test, :page_data
  
  def initialize(filename)
    @form = Roo::Spreadsheet.open("../do_not_delete/#{filename}.xlsx", extension: :xlsx)
    @pages = []
    @page_data = {}
  end

  def get_country_name
    @form.cell(13,2)
  end
  
  def country_info
    country = {
      name: get_country_name,
      country_code: get_country_code
    }
  end

  def get_country_code
    @form.cell(13,3)
  end

  def get_page_data(row,col)
    @test = []
    @hash = {}
    key_word = ''
      until key_word == 'stop'
        key_word = @form.cell(row, col + 1) ? @form.cell(row, col + 1).strip : false
        hash[@form.cell(row,3)]= key_word
        row += 1
        if key_word == "create"
          @test << Page.new(@hash)
          @hash = {}
        end
        if key_word == "new_language"
          @test << Page.new(@hash)     
          @hash = {}
          row = 19
          col += 1
        end
    end
  end
end


