class PersonesController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @persone = current_user.persones.build(persone_params)
    if @persone.save
      flash[:success] = "Persone created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
    @persone.destroy
    redirect_to root_url
  end

  private

    def persone_params
      params.require(:persone).permit(:name)
    end
  
    def correct_user
      @persone = current_user.persones.find_by(id: params[:id])
      redirect_to root_url if @persone.nil?
    end
end

