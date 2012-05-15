class Touchstone::CampaignsController < ApplicationController
  
  layout 'touchstone/touchstone'
  
  def index
    @campaigns = Campaign.all
  end
  
  def new
    @campaign = Campaign.new
  end
  
  def create
    @campaign = Campaign.new(params[:campaign])
    if @campaign.save
      flash[:notice] = "Campaign added"
      redirect_to campaigns_url
    else
      flash[:error] = "Could not add campaign"
      redirect_to new_campaign_url
    end
  end
  
  def show
    @campaign = Campaign.find(params[:id])
    @columns = Touchstone.column_names
  end
  
  def edit
    @campaign = Campaign.find(params[:id])
  end
  
  def update
    @campaign = Campaign.find(params[:id])
    if @campaign.update_attributes(params[:campaign]) && @campaign.save
      flash[:notice] = "Campaign details updated"
      redirect_to campaign_path(@campaign)
    else
      flash[:error] = "Could not update details at this time."
      redirect_to campaign_path(@campaign)
    end
  end
  
end