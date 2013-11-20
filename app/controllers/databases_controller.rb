class DatabasesController < ApplicationController
  # GET /databases
  # GET /databases.json
  def index
    @vehicles = Vehicle.all
    @subjects = Subject.all
    @drugs = Drug.all
    @databases = Database.all
    @databases = Database.search(params[:search])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @databases }
      
    end
  end
  
  
   def audit
    @vehicles = Vehicle.all
    @subjects = Subject.all
    @drugs = Drug.all
    @databases = Database.all
    @users = User.all
    @databases = Database.search(params[:search])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @databases }
      
    end
  end 
  

  def search
    @databases = Database.search(params[:search])
  end 
  
  
  # GET /databases/1
  # GET /databases/1.json
  def show
    @database = Database.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @database }
    end
  end

  # GET /databases/new
  # GET /databases/new.json
  def new
    @database = Database.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @database }
    end
  end

  # GET /databases/1/edit
  def edit
    @database = Database.find(params[:id])
  end

  # POST /databases
  # POST /databases.json
  def create
    @database = Database.new(params[:database])

    respond_to do |format|
      if @database.save
        format.html { redirect_to @database, notice: 'Database was successfully created.' }
        format.json { render json: @database, status: :created, location: @database }
      else
        format.html { render action: "new" }
        format.json { render json: @database.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /databases/1
  # PUT /databases/1.json
  def update
    @database = Database.find(params[:id])

    respond_to do |format|
      if @database.update_attributes(params[:database])
        format.html { redirect_to @database, notice: 'Database was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @database.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /databases/1
  # DELETE /databases/1.json
  def destroy
    @database = Database.find(params[:id])
    @database.destroy

    respond_to do |format|
      format.html { redirect_to databases_url }
      format.json { head :no_content }
    end
  end
end
