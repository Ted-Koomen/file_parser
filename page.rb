class Page
 
  attr_reader :page, :country_code, :language_code, :country_name
 
  def initialize(args = {})
    @country_code = args["country_code"]
    @language_code = args["language_code"]
    @country_name = args["country_name"]
    args.delete("country_code") && args.delete("language_code") && args.delete("country_name")
    @page = args
  end

end