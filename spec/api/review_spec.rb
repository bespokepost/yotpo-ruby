require 'helper'

describe Yotpo::Review do
  include_context 'endpoints'

  describe '.get_reviews' do
    subject do
      VCR.use_cassette('get_reviews') do
        Yotpo.get_reviews(base_params).body
      end
    end

    it { is_expected.to be_a ::Hashie::Mash }
    it { expect(subject['reviews']).to be_a Array }
  end
end
