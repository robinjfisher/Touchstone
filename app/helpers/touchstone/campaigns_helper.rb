module Touchstone
  module CampaignsHelper
    
    def signups_table_headers
      item = "<th scope='col' width='5%'>ID</th>\n"
      %w(email name first_name fname).each do |word|
        if Touchstone.association_name.capitalize.constantize.column_names.include?(word)
          item += "<th scope='col' width='30%'>#{word.capitalize}</th>\n"
        end
      end
      item += "<th scope='col' width='30%'>Registered</th>\n"
			item += "<th scope='col' width='15%'>Lifetime Value</th>\n"
			item.html_safe
    end
    
    def signups_table_content(signup)
      item = "<td>#{signup.user.id}</td>\n"
      %w(email name first_name fname).each do |word|
        if Touchstone.association_name.capitalize.constantize.column_names.include?(word)
          item += "<td>#{signup.user.send(word.to_sym)}</td>\n"
        end
      end
      item += "<td>#{time_ago_in_words(signup.user.created_at)} ago</td>\n"
			item += "<td>$#{sprintf('%.2f',signup.user.lifetime_value)}</td>\n"
			item.html_safe
    end
    
  end
end
