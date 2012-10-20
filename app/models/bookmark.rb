# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  name       :string(255)
#  dateSaved  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bookmark < ActiveRecord::Base
  attr_accessible :dateSaved, :name, :url

  validates :name, presence: true,
  				   length: { maximum: 100 }
  validates :url, presence: true,
  			      length: { minimum: 10 }
end
