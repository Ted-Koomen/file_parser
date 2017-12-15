require 'pry'
require 'roo'
require_relative './page.rb'
class CSVParser

  attr_reader :form, :hash
  attr_accessor :test, :page_data
  
  def initialize
    @form = Roo::Spreadsheet.open('./usa-translations.xlsx', extension: :xlsx)
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

  # def get_number_of_languages(row,col)
  #   languages = 0
  #   @form.cell(row,col)
  #   until @form.cell(row,col) == nil
  #     col += 1
  #     languages += 1
  #   end
  #   languages
  # end

  def get_page_data(row,col)
    @test = []
    @hash = {}
      until @form.cell(row, col) == 'stop'
        hash[@form.cell(row,3)]= @form.cell(row,col + 1) if !!(@form.cell(row,col + 1))
        row += 1
        if row == 54
          @test << Page.new(@hash)     
          @hash = {}
          row = 20
          col += 1
        end
    end
  end
end


