# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Notes', type: :request do
  describe 'GET /index' do
    it 'directs client to sign in' do
      get '/notes/index'
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
