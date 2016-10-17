class MainController < ApplicationController
  require "google_drive"
      
  DESC_COL = 2
  VOLUNTEER_TOTAL_COL = 4
    
  
  def index
    @test = 'text'
    
    session = GoogleDrive::Session.from_config("config.json")
    ws = session.spreadsheet_by_key("1A8cUX-nHnyXOcIxuhKMcZm1Wu7MZtlrTV8UZzZ6nCDI").worksheets[0]
    @title = ws[1,1]

    @impact = {}
    @impact['desc'] = ws[6, DESC_COL]
    @impact['num'] = ws[6, VOLUNTEER_TOTAL_COL]
    
    
  end
end
