class StoriesController < ApplicationController

  def index
  end

  def new
  end

  def create
    Story.create(name: params[:name], image: params[:image], text: params[:text])
  end
end
