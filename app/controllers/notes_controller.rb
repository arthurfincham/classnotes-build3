# frozen_string_literal: true

class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_notes

  def index; end

  def new
    @note = current_user.notes.new
  end

  def create
    @note = current_user.notes.new(note_params)
    if @note.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def set_notes
    @notes = if params[:tag]
               current_user.notes.tagged_with(params[:tag]).order(date: :desc)
             else
               current_user.notes.order(date: :desc)
             end
  end

  def note_params
     params.require(:note).permit(:date, :title, :instructor, :description, :tag_list)
  end
end
