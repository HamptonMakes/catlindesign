class PagesController < ApplicationController
  make_resourceful do
    actions :index, :show
    
    belongs_to :area
  end
end
