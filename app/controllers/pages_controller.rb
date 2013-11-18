class PagesController < ApplicationController
  def search
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
