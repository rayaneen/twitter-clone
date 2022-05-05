class TweetsController < ApplicationController
  before_action :set_tweeet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @tweets = Tweet.all.order("created_at DESC")
    @tweet = Tweet.new
  end

  private

  def set_tweet
    @tweeet = Tweet.find(params[:id])
  end
end
