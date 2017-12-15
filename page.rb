class Page
 
  attr_reader :page, :country_code, :language_code, :country_name, :page_type
 
  def initialize(args = {})
    @country_code = args["country_code"]
    @language_code = args["language_code"]
    @country_name = args["country_name"]
    @page_type = args["page_type"]
    args.delete("country_code") && args.delete("language_code") && args.delete("country_name") && args.delete("page_type")
    @page = args
  end

end