require 'spec_helper'

describe HelpController do
  login_user

  describe "GET 'cancan_errors'" do
    it "returns http success" do
      get 'cancan_errors'
      response.should be_success
    end
  end

end
