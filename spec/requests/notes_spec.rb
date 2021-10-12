# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Notes', type: :request do
  describe 'before sign in GET /index' do
    it 'redirects client to sign_in' do
      get '/notes/index'
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  describe 'after sign in GET /index' do
    it 'can get index of notes' do
      sign_in FactoryBot.create(:user)
      get '/notes/index'
      expect(response).to have_http_status(:success)
    end
  end
end
