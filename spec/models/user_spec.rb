require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = create(:user)
  end
  it 'must be valid' do
    expect(@user).to be_valid
  end
  it 'must be invalid' do
    user = build(:user, name: nil, email: nil)
    expect(user).to be_invalid
  end
  it 'must be uniqueness email' do
    expect(@user).to validate_uniqueness_of(:email)
  end
  
  it 'must be uniq email' do
    user1 = create(:user)
    user2 = build(:user, name: user1.name, email: user1.email)
    expect(user2).to validate_uniqueness_of(:email)
  end
  
  it 'with email invalid' do
    user = build(:user, email: 'email_invalid')
    expect(user).to be_invalid
  end
  
  it "must be has_many votes" do
    expect(@user).to have_many(:votes)
  end  
  
  it "must be quantity correct the votes" do
    destination = create(:destination)
    created_votes = create_list(:vote, 50, {user: @user, destination: destination})
    expect(created_votes.group_by(&:user_id)[@user.id].count).to eql(@user.votes.count)
  end
end
