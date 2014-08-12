class FavoriteMailer < ActionMailer::Base
  default from: "kristin_gonzalez@yahoo.com"

  def new_comment(user, post, comment)

    headers["Message-ID"] = "<comments/#{comment.id}@kristingonzalez-bloccit.herokuapp.com/>"
    headers["In-Reply-To"] = "<post/#{post.id}@kristingonzalez-bloccit.herokuapp.com/>"
    headers["References"] = "<post/#{post.id}@kristingonzalez-bloccit.herokuapp.com/>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")    
  end
end
