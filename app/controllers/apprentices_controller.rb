class ApprenticesController < ApplicationController
  before_action :set_apprentice, only:[:show, :edit, :update]

  def index
    @apprentices = [""] if @apprentices == nil
  end

  def show
  end

  def new
    @apprentice = Apprentice.new
  end

  def create
    @apprentice = Apprentice.new(apprentice_params)
    @apprentice.save
    redirect_to
  end

  def edit
  end

  def update
  end

end
