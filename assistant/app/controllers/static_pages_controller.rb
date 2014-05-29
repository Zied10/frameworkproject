class StaticPagesController < ApplicationController
  def home
    @persone = current_user.persones.build if signed_in?
    @anecdote = current_user.anecdotes.build if signed_in?
  end

  def help
  end
end
