class StdsController < ApplicationController
  before_action :set_std, only: %i[ show edit update destroy ]

  def index
    @stds = Std.all
    @std = Std.new   # needed for form_with
  end

  def create
  @std = Std.new(std_params)

  if @std.save
    respond_to do |format|
      format.turbo_stream
    end
  end
end


  def update
    if @std.update(std_params)
      respond_to do |format|
        format.js   # renders update.js.erb
      end
    else
      head :unprocessable_entity
    end
  end

  def destroy
  @std.destroy

  respond_to do |format|
    format.turbo_stream
  end
end


  private

  def set_std
    @std = Std.find(params[:id])
  end

  def std_params
  params.require(:std).permit(:name, :age, :dept, :email, :phone)
  end
end
