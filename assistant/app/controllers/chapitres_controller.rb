class ChapitresController < ApplicationController
  before_action :signed_in_user

  def create
    @chapitre = current_user.chapitres.build(chapitre_params)
    if @chapitre.save
      flash[:success] = "Chapitre created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def chapitre_params
      params.require(:chapitre).permit(:number, :title)
    end
end

