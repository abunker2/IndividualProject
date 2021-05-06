class HomeprojectspageController < ApplicationController
  before_action :set_projectlist, only: %i[ show edit update destroy ]
  def home
    @projectlists = Projectlist.all
  end
end
