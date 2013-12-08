class VehiclesController < ApplicationController
  # GET /vehicles
  # GET /vehicles.json
  def index
    @vehicles = Vehicle.all
    @vehicles = Vehicle.search(params[:search])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vehicles }
    end
  end


  def search
    @vehicles = Vehicle.search(params[:search])

  end 



  # GET /vehicles/1
  # GET /vehicles/1.json
  def show
    @vehicle = Vehicle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vehicle }
    end
  end

  # GET /vehicles/new
  # GET /vehicles/new.json
  def new
    @vehicle = Vehicle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vehicle }
    end
  end

  # GET /vehicles/1/edit
  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  # POST /vehicles
  # POST /vehicles.json
  def create
  #  @vehicle = Vehicle.new(params[:vehicle])
		@database = Database.find(params[:database_id])
		@vehicle = @database.vehicles.create!(params[:vehicle])

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to @database }
        format.json { render json: @database, status: :created, location: @vehicle }
        format.js # create.js.erb 
      else
        format.html { render action: "new" }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vehicles/1
  # PUT /vehicles/1.json
  def update
    @vehicle = Vehicle.find(params[:id])

    respond_to do |format|
      if @vehicle.update_attributes(params[:vehicle])
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1
  # DELETE /vehicles/1.json
  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy

    respond_to do |format|
      format.html { redirect_to vehicles_url }
      format.json { head :no_content }
    end
  end
end
