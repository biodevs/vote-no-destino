require 'rails_helper'

RSpec.describe Destination, type: :model do
  before :each do
    @destination = create(:destination)
  end
  it 'must be valid' do
    expect(@destination).to be_valid
  end
  it 'must be invalid' do
    destination = build(:destination, name: nil)
    expect(destination).to be_invalid
  end
  it "must be has_many votes" do
    expect(@destination).to have_many(:votes)
  end
  it 'must be quantity correct the votes' do
    user = create(:user)
    created_votes = create_list(:vote, 50, {user: user, destination: @destination})    
    expect(created_votes.group_by(&:destination_id)[@destination.id].count).to eql(@destination.votes.count)       
  end
end
