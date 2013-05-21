class DayExerciseMapsController < ApplicationController
    before_filter :authenticate_user!, :only => :new
  # GET /day_exercise_maps/new
  # GET /day_exercise_maps/new.json
  def new
    @day_exercise_map = DayExerciseMap.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @day }
    end
  end

  def create
    @day_exercise_map = DayExerciseMap.new(params[:day_exercise_map])

    respond_to do |format|
      if @day_exercise_map.save
        format.html { render :action => "show", :notice => 'Day was successfully created.' }
        format.json { render :json => @day_exercise_map, :status => :created, :location => @day_exercise_map }
      else
        format.html { render :action => "new" }
        format.json { render :json => @day_exercise_map.errors, :status => :unprocessable_entity }
      end
    end
  end

end
