module Touchstone
  class DashboardController < ApplicationController
    
    layout 'touchstone/touchstone'
    
    ASSOCIATION_NAME = Touchstone.association_name.capitalize.constantize
    
    def dashboard
      @costs = Touchstone.costs
      @month = Date.today.month
      @year = Date.today.year
      if request.post?
        @month = params[:date][:month].to_i
        @year = params[:date][:year].to_i
      end
      total_users,new_users,churn,current_users,cancellations,cmrr = Array.new,Array.new,Array.new,Array.new,Array.new,Array.new
      @range = (@month-2..@month)
      @top_line = Hash.new
      @bottom_line = Hash.new
      
      @range.each{|n| total_users << ASSOCIATION_NAME.where('created_at < ?',Date.new(@year,n,1,0).end_of_month).count}
      @range.each{|n| new_users << TouchstoneEvent.signups_in(n,@year)}
      @range.each_with_index{|n,index| churn << sprintf("%.2f %",TouchstoneEvent.cancellations_in(n,@year) / total_users[index].to_f * 100)}
      avg_lifetime = churn.map{|c| sprintf("%.2f months", 100/c.to_f) }
      @range.each{|n| current_users << ASSOCIATION_NAME.where('created_at < ?',Date.new(@year,n-1,1,0).end_of_month).count}
      @range.each{|n| cancellations << TouchstoneEvent.cancellations_in(n,@year)}
      @range.each do |n|
        users = ASSOCIATION_NAME.where('created_at < ?',Date.new(@year,n,1,0).end_of_month)
        total = Array.new
        users.each{|u| total << u.monthly_revenue}
        cmrr << "#{Touchstone.currency}#{total.inject{|sum,x| sum + x}}"
      end
      %w(churn avg_lifetime current_users cancellations new_users total_users cmrr).each do |w|
        @top_line[w] = eval(w)
      end
      
      cost_per_user,cost_per_acquisition = Array.new,Array.new
      @range.each_with_index{|n,index| cost_per_user << sprintf("#{Touchstone.currency}%.2f",(@costs[:total_cost].to_f / total_users[index].to_f))}
      @range.each_with_index{|n,index| cost_per_acquisition << sprintf("#{Touchstone.currency}%.2f",(@costs[:marketing].to_f / total_users[index].to_f))}
      %w(cost_per_user cost_per_acquisition).each do |w|
        @bottom_line[w] = eval(w)
      end
    end
    
  end
end