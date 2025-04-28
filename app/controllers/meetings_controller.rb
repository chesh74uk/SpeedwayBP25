class MeetingsController < ApplicationController
  before_action :set_meeting, only: %i[show edit update destroy]
  def index
    @meetings = Meeting.all.order(date: :desc)
  end

  def new
    @meeting = Meeting.new
  end

  def edit
  end

  def create
    @meeting = Meeting.new(meeting_params)
    respond_to do |format|
      if @meeting.save
        format.html { redirect_to meetings_path notice: "Meeting was successfully created" }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to meetings_path, notice: "Meeting was successfully updated" }
      else
        format.html { render :edit }
      end
    end
  end
  def show
  end

  def destroy
    @meeting.destroy
    respond_to do |format|
      format.html { redirect_to meetings_url, notice: "Meeting was successfully removed" }
    end
  end

  private

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end
  def meeting_params
    params.expect(meeting: [ :date, :home_team, :away_team, :gate_choice ])
  end
end
