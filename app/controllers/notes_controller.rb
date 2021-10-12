# frozen_string_literal: true

class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_notes

  def index; end

  private

  def set_notes
    @notes = if params[:tag]
               current_user.notes.tagged_with(params[:tag]).order(date: :desc)
             else
               current_user.notes.order(date: :desc)
             end
  end
end
