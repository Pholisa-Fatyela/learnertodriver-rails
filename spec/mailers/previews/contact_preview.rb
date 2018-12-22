# Preview all emails at http://localhost:3000/rails/mailers/contact
class ContactPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact/feedback
  def feedback
    user = User.all.sample
    quote = "Is this it? That’s what it’s all about, Manny?"
    meaning = "In a rather existential moment, Tony realizes that maybe having everything in the world isn’t all it’s cracked up to be. The man was deep like a puddle."
    ContactMailer.feedback(user, quote, meaning)
  end

end
