class Touchstone::CampaignsController < ApplicationController
  
  layout 'metrics'
  
  def index
    @campaigns = Campaign.all
  end
  
  def new
    @campaign = Campaign.new
  end
  
  def create
    @campaign = Campaign.new(params[:metrics_campaign])
    if @campaign.save
      flash[:notice] = "Campaign added"
      redirect_to metrics_campaigns_url
    else
      flash[:error] = "Could not add campaign"
      redirect_to new_metrics_campaign_url
    end
  end
  
  def show
    @campaign = Campaign.find(params[:id])
  end
  
end