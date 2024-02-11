require 'rails_helper'

RSpec.describe SourceControl::Context do
  let(:mocked_client) { double('RevisionControl::Api::GitHub') }
  subject { described_class.new(mocked_client) }

  describe '#repositories' do
    it 'calls client.repositories with the provided org' do
      org = 'example_org'
      expect(mocked_client).to receive(:repositories).with(org: org)
      subject.repositories(org: org)
    end
  end

  describe '#commits' do
    it 'calls client.commits with the provided owner and repo' do
      owner = 'example_owner'
      repo = 'example_repo'
      expect(mocked_client).to receive(:commits).with(owner: owner, repo: repo)
      subject.commits(owner: owner, repo: repo)
    end
  end
end
