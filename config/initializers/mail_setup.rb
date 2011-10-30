ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.clickonward.com",
  :port                 => 25,
  :domain               => "clickonward.com",
  :user_name            => "hello@clickonward.com",
  :password             => "0011708",
  :authentication       => "login",
  # changed this from true because of a seg fault (pg only?) - http://redmine.ruby-lang.org/issues/4413
  # set to true for Heroku deploy? -- not sure why?
  :enable_starttls_auto => true,
}
