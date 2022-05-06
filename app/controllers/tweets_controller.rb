class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @tweets = Tweet.all.order("created_at DESC")
    @tweet = Tweet.new
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweets = Tweet.all.order("created_at DESC")
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    if @tweet.save
      redirect_to tweets_path
    else
      raise
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content, :photo)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end
