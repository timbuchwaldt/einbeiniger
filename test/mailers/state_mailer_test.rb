require 'test_helper'

class StateMailerTest < ActionMailer::TestCase
  test "accepted" do
    mail = StateMailer.accepted
    assert_equal "Accepted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "rejected" do
    mail = StateMailer.rejected
    assert_equal "Rejected", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "backup" do
    mail = StateMailer.backup
    assert_equal "Backup", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
