class MainController < ApplicationController
  require "google_drive"
      
  DESC_COL = 2
  VOLUNTEER_TOTAL_COL = 4
  
  COMPASSION = 5
  IMPACT = 6
  ELEMENT = 7
  IH = 8
  ECM = 9
    
  
  def index
    session = GoogleDrive::Session.from_config("config.json")
    ws = session.spreadsheet_by_key("19bQFCuK47OVP9b_3CkHX4OSUOyXUdJBqYRB3Dj-fhG0").worksheets[0]
    @title = ws[1,1]

    @impact = {}
    @impact['desc'] = ws[IMPACT, DESC_COL]
    @impact['num'] = ws[IMPACT, VOLUNTEER_TOTAL_COL]
    
    @compassion = {}
    @compassion['desc'] = ws[COMPASSION, DESC_COL]
    @compassion['num'] = ws[COMPASSION, VOLUNTEER_TOTAL_COL]
    
    @element = {}
    @element['desc'] = ws[ELEMENT, DESC_COL]
    @element['num'] = ws[ELEMENT, VOLUNTEER_TOTAL_COL]
    
    @interhigh = {}
    @interhigh['desc'] = ws[IH, DESC_COL]
    @interhigh['num'] = ws[IH, VOLUNTEER_TOTAL_COL]
    
    @ecm = {}
    @ecm['desc'] = ws[ECM, DESC_COL]
    @ecm['num'] = ws[ECM, VOLUNTEER_TOTAL_COL]
    
    @vdoc = {}
    @vdoc['desc'] = ws[11, DESC_COL]
    @vdoc['num'] = ws[12, VOLUNTEER_TOTAL_COL]
    @vdoc['homes'] = ws[12, VOLUNTEER_TOTAL_COL]
    
    
  end
end
