class CompletesController < ApplicationController
  def create
    @complete = Complete.new(post_complete_params)
    @complete.list_id = params[:list_id]
    @complete.save
    redirect_to todolists_path
  end

  def destroy
  end

  private

  def post_complete_params
    params.require(:complete).permit(:date)
  end
end
