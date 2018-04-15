class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def edit
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def create
    @entry = Entry.new
    @entry.word = params[:entry][:word]
    @entry.definition = params[:entry][:definition]
    @entry.language = params[:entry][:language]

    if @entry.save
      redirect_to entries_url
    else
      redirect_to entries_url
    end
  end

  def edit
    redirect_to entry_url(params[:id])
  end

  def destroy
    redirect_to entries_url
  end
end
