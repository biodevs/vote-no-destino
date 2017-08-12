require 'rails_helper'

RSpec.describe Vote, type: :model do
  before :each do
    @destination = create(:destination)
    @user = create(:user)
    @created_votes = create_list(:vote, 50, {user: @user, destination: @destination})
  end
  
  it "must be belongs to user" do
    expect(@created_votes.last).to belong_to(:user)
  end
  
  it "must be belongs to user" do
    expect(@created_votes.last).to belong_to(:destination)
  end

  it "must be equal length votes" do
    expect(@created_votes.count).to eq(50)
  end

  
end
