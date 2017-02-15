class Page < ApplicationRecord
  validates :action, presence: true
  validates :template, presence: true
end
