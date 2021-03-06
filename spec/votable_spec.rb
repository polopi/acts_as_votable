require 'acts_as_votable'
require 'spec_helper'

describe ActsAsVotable::Votable do
  it "should not be votable" do
    expect(NotVotable).not_to be_votable
  end

  it "should be votable" do
    expect(Votable).to be_votable
  end

  it_behaves_like "a votable_model" do
    # TODO Replace with factories
    let (:voter) { Voter.create(:name =>'i can vote!') }
    let (:voter2) { Voter.create(:name => 'a new person') }
    let (:votable) { Votable.create(:name =>'a voting model') }
    let (:votable_cache) { VotableCache.create(:name => 'voting model with cache') }
  end
end
