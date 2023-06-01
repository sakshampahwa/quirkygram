require "test_helper"

class ModelMailerTest < ActionMailer::TestCase
  test "signup_notification" do
    mail = ModelMailer.signup_notification
    assert_equal "Signup notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
