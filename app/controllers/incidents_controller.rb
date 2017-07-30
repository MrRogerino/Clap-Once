class IncidentsController < ApplicationController
  include IncidentsHelper
  
  def index
    @incidents = Incident.all
    render json: {incidents: @incidents}.as_json, status: 201
  end

  def affected
    @incident = Incident.find_by(id: params[:id])
    notified_users = alert_users(@incident.epicenter, @incident.severity)
    render json: {notifed_users: notified_users}.as_json, status: 201
  end


end
