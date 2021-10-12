require 'rails_helper'

RSpec.describe NotesController, type: :controller do

  before do
    sign_in FactoryBot.create(:user)
  end

  context "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  context "GET #new" do
    it "assigns a blank note to the view" do
      get :new
      expect(assigns(:note)).to be_a_new(Note)
    end
  end

  context "POST #create" do
    it 'saves the note to db' do
      expect{ FactoryBot.create(:note) }.to change { Note.count }.by(1)
    end

    it "redirects to notes page" do
      params = { title: "Test Note", date: "2021-12-31", description: "A test description for a note in controller spec." }
      post :create, params: { note: params }
      expect(response).to redirect_to(root_path)
    end
  end

  context "#destroy" do
    it 'can destroy a note' do
      note = FactoryBot.create(:note)
      expect{ note.destroy }.to change { Note.count }.by(-1)
    end
  end


end