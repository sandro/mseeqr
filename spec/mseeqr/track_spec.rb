require File.join(File.dirname(__FILE__), %w[.. spec_helper])

describe Mseeqr::Track do
  describe "coldplay results" do
    before do
      FakeWeb.register_uri('http://www.seeqpod.com/api/iphone', :file => site_file('coldplay_results.html'))
    end

    it 'searches' do
      tracks = Mseeqr::Track.search('coldplay')
      tracks.should be_kind_of(Array)
    end

    it 'parses' do
      tracks = Mseeqr::Track.search('coldplay')
      tracks.first.name.should == "BP vs. Coldplay by ToToM - Bloc Party vs. Coldplay - Hunting For Witches In My Place"
      tracks.first.url.should == "http://www.seeqpod.com/api/best?m=8185452b2799a51ee08cd5eefbe4fdf39b8cd185"
    end
  end
end
