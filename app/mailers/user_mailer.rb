class UserMailer < ActionMailer::Base
    default from: "GreekWalls <welcome@james-prelaunchr.herokuapp.com>"

    def signup_email(user)
        @user = user
        @twitter_message = "#GreekWalls - Fraternity & Sorority
    9  Wall Graphics"

        mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
