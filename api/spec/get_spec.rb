describe "get" do
  context "when a registered user" do
    let(:user) { build(:registered_user) }
    let(:token) { ApiUser.token(user.email, user.password) }
    let(:result) { ApiUser.find(token, user.id) }

    it { expect(result.response.code).to eql "200" }
  end

  context "when not exists" do
    let(:user) { build(:registered_user) }
    let(:token) { ApiUser.token(user.email, user.password) }
    let(:result) { ApiUser.find(token, "0") }

    it { expect(result.response.code).to eql "404" }
  end

  context "when wrong id" do
    let(:user) { build(:registered_user) }
    let(:token) { ApiUser.token(user.email, user.password) }
    let(:result) { ApiUser.find(token, "abc123") }

    it { expect(result.response.code).to eql "412" }
  end

  context "when other id" do
    let(:user) { build(:registered_user) }
    let(:other_user) { build(:registered_user) }
    let(:token) { ApiUser.token(user.email, user.password) }
    let(:result) { ApiUser.find(token, other_user.id) }

    it { expect(result.response.code).to eql "401" }
  end
end
