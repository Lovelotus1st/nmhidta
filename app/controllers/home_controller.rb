class HomeController < ApplicationController
  def index
  @databases = Database.all
  end
end
