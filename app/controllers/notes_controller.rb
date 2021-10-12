# frozen_string_literal: true

class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_note, only: %i[edit update destroy show]
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

  def edit; end

  def update
    if @note.update(note_params)
      redirect_to root_path
    else
      flash[:notice] = 'note was not updated'
      render 'edit'
    end
  end

  def destroy
    @note.destroy
    flash[:notice] = 'Note was deleted'
    redirect_to root_path
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

  def set_note
    @note = Note.find(params[:id])
  end
end
