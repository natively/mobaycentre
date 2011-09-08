class Advertisement < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :caption, :link_url]

  validates :title, :presence => true, :uniqueness => true
  
  belongs_to :picture, :class_name => 'Image'
end
