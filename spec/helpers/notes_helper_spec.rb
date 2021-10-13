# frozen_string_literal: true

require 'rails_helper'

RSpec.describe NotesHelper, type: :helper do

  let(:note){double :note, date: Date.new(2021,10,13), title: "Fun Class Today", tag_list: ["closed guard", "cross choke"]}
  
  describe "#date format methods" do
    it 'format_date(note)' do
      expect(format_date(note)).to eq "13th Oct 2021"
    end

    it 'short_format(note)' do
      expect(short_format_date(note)).to eq "Wed 13th Oct"
    end
  end

  describe "#table header formatting" do
    let(:note){double :note, id: 5}
    it 'shows new note if note is new' do
      url = double('notes/new', :include? => false)
      allow(url).to receive(:include?).with('notes/new').and_return(true)
      expect(table_header(url)).to eq 'New Note'
    end

    it 'shows all notes if on index' do
      url = double('http://www.classnotes.com', :include? => false)
      allow(url).to receive(:include?).and_return(false)
      expect(table_header(url)).to eq 'All Notes'
    end
  end

  describe "#note title formatting" do
    it 'downcases and separates with underscores' do
      expect(format_title(note)).to eq "fun_class_today"
    end
  end
end
