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

require 'spec_helper'

describe Bookmark do
  before do
  	@bookmark = Bookmark.new(url: "example.com", name: "example", dateSaved: "today")
  end

  subject { @bookmark }

  it { should respond_to(:url) }
  it { should respond_to(:name) }
  it { should respond_to(:dateSaved) }

  it { should be_valid }

  describe "when the name is too long" do
  	before { @bookmark.name = "a" * 101 }
  	it { should_not be_valid }
  end

  describe "when the url is not long enough" do
  	before { @bookmark.url = "a" * 10 }
  	it {should be_valid }
  end
end
