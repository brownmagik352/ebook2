class EventsController < ApplicationController

  before_filter :get_event, :only => [:edit, :update, :show, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(params[:event])
    @event.save

    redirect_to events_path
  end

  def edit
  end

  def update
    @event.update_attributes(params[:event])

    redirect_to events_path
  end

  def show
  end

  def destroy
  end

  def get_event
    @event = Event.find(params[:id])
  end

end
