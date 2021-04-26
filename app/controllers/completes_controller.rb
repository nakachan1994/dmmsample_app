class CompletesController < ApplicationController
  def create
    # list = List.find(params[:list_id])
    complete = Complete.new(complete_params)
    complete.list_id = params[:list_id]
    complete.save
    redirect_to todolists_path
  end

  def destroy
  end

  private

  def complete_params
    params.require(:complete).permit(:date)
  end
end
