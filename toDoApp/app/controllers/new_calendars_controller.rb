class NewCalendarsController < ApplicationController
  before_action :set_new_calendar, only: [:show, :edit, :update, :destroy]

  # GET /new_calendars
  # GET /new_calendars.json
  def index
    @new_calendars = NewCalendar.all
  end

  # GET /new_calendars/1
  # GET /new_calendars/1.json
  def show
  end

  # GET /new_calendars/new
  def new
    @new_calendar = NewCalendar.new
  end

  # GET /new_calendars/1/edit
  def edit
  end

  # POST /new_calendars
  # POST /new_calendars.json
  def create
    @new_calendar = NewCalendar.new(new_calendar_params)

    respond_to do |format|
      if @new_calendar.save
        format.html { redirect_to @new_calendar, notice: 'New calendar was successfully created.' }
        format.json { render action: 'show', status: :created, location: @new_calendar }
      else
        format.html { render action: 'new' }
        format.json { render json: @new_calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_calendars/1
  # PATCH/PUT /new_calendars/1.json
  def update
    respond_to do |format|
      if @new_calendar.update(new_calendar_params)
        format.html { redirect_to @new_calendar, notice: 'New calendar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @new_calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_calendars/1
  # DELETE /new_calendars/1.json
  def destroy
    @new_calendar.destroy
    respond_to do |format|
      format.html { redirect_to new_calendars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_calendar
      @new_calendar = NewCalendar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_calendar_params
      params.require(:new_calendar).permit(:New_Event_Title, :Location, :Starts, :Ends, :Notes)
    end
end
