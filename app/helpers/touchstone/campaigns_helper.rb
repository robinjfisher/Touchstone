module Touchstone
  module CampaignsHelper
    
    def signups_table_headers(columns)
      item = ""
      columns.each do |column|
        item += "<th scope='col' id='#{column}'>#{column.capitalize}</th>\n"
      end
			item.html_safe
    end
    
    def signups_table_content(columns,signup)
      item = ""
      columns.each do |column|
        item += "<td class='#{column}'>#{signup.user.send(column.to_sym)}</td>\n"
      end
			item.html_safe
    end
    
  end
end
