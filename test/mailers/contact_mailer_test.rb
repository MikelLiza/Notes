require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should return contact email" do
    mail = ContactMailer.contact_email("matthew@me.com", "Matthew Casey", "123456790", @message = "Hello")
    assert_equal ['info@mynotes.com'], mail.to
    assert_equal ['info@mynotes.com'], mail.from
  end

end
