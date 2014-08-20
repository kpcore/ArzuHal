class TwitsController < ApplicationController


  # POST /twits
  # POST /twits.json
  def create
    @user = User.find(params[:user_id])
    @twit = @user.twits.create(twit_params)
    redirect_to user_path(@user)
  end


  # DELETE /twits/1
  # DELETE /twits/1.json
  def destroy
    @user = User.find(params[:user_id])
    @twit = @user.twits.find(params[:id])
    @twit.destroy
    redirect_to user_path(@user)
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def twit_params
      params.require(:twit).permit(:content)
    end
end
