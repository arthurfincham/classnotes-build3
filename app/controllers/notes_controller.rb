# frozen_string_literal: true

class NotesController < ApplicationController
  before_action :authenticate_user!
  def index; end

  private

  def set_notes
    @notes = if params[:tag]
               current_user.notes.tagged_with(params[:tag]).order(note_date: :desc)
             else
               current_user.notes.order(note_date: :desc)
             end
  end
end
