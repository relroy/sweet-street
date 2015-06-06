class PopcornsController < ApplicationController

def index

  
end

def show
  @popcorn_choice = PopcornFlavor.find(params[:id])
  
end

end
