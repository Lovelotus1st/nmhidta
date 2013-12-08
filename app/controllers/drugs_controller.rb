class DrugsController < ApplicationController
  # GET /drugs
  # GET /drugs.json
  def index
    @drugs = Drug.all

    @drugs = Drug.search(params[:search])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drugs }
    end
  end
  
  
  
 def search
    @drugs = Drug.search(params[:search])
  end
  

  # GET /drugs/1
  # GET /drugs/1.json
  def show
    @drug = Drug.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drug }
    end
  end

  # GET /drugs/new
  # GET /drugs/new.json
  def new
    @drug = Drug.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drug }
    end
  end

  # GET /drugs/1/edit
  def edit
    @drug = Drug.find(params[:id])
  end

  # POST /drugs
  # POST /drugs.json
  def create
 # delete this line:==>   @drug = Drug.new(params[:drug])  and replace with
 	@database = Database.find(params[:database_id])
	@drug = @database.drugs.create!(params[:drug])

    respond_to do |format|
      if @drug.save
        format.html { redirect_to @database}
        format.json { render json: @database, status: :created, location: @drug }
        format.js # create.js.erb
      else
        format.html { render action: "new" }
        format.json { render json: @drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drugs/1
  # PUT /drugs/1.json
  def update
    @drug = Drug.find(params[:id])

    respond_to do |format|
      if @drug.update_attributes(params[:drug])
        format.html { redirect_to @drug, notice: 'Drug was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @drug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drugs/1
  # DELETE /drugs/1.json
  def destroy
    @drug = Drug.find(params[:id])
    @drug.destroy

    respond_to do |format|
      format.html { redirect_to drugs_url }
      format.json { head :no_content }
    end
  end
end
