class PokerController < ApplicationController
  def top
  end
  def check
  end
  def new
    @card = Card.new
  end
  def edit
    @card = Card.find(params[:id])
  end
  def hand_params
    params.permit(:card)
  end
end
