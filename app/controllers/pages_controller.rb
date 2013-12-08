class PagesController < ApplicationController
  def search
  end
 
 def audit
 	@users = User.all
 	@databases = Database.all
 	@drugs = Drug.all
 	@subjects = Subject.all
 	
 	
 	@databases = Database.search(params[:search])
    respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @databases }
 	end
 end
  
  
def index
      @databases = Database.all
      @databases = Database.search(params[:search])    
end
  
  
  def self.search(search)
  if search
    find(:all, :conditions => ['time LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
  
end
