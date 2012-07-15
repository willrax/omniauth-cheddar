require 'spec_helper'

describe OmniAuth::Strategies::Cheddar do
  subject do
    OmniAuth::Strategies::Cheddar.new({})
  end

  context "client options" do
    it 'should have correct site' do
      subject.options.client_options.site.should eq("https://api.cheddarapp.com")
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_url.should eq('https://api.cheddarapp.com/oauth/authorize')
    end

    it 'should have correct token url' do
      subject.options.client_options.token_url.should eq('https://api.cheddarapp.com/oauth/token')
    end
  end
end