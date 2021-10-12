# frozen_string_literal: true

class Note < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :date, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  belongs_to :user, required: true
  validates :user_id, presence: true
  acts_as_taggable_on :tags
end
