class EntriesController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
  end

  def create
    redirect_to entries_url
  end

  def edit
    redirect_to entry_url(params[:id])
  end

  def destroy
    redirect_to entries_url
  end
end
