class MainController < ApplicationController
  require "google_drive"
  
  def index
    @test = 'text'
    
    session = GoogleDrive::Session.from_config("config.json")
    ws = session.spreadsheet_by_key("1A8cUX-nHnyXOcIxuhKMcZm1Wu7MZtlrTV8UZzZ6nCDI").worksheets[0]
    
    @test = ws[1,1]
    
    
  end
end
