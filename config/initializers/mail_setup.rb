ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.upstream.info",
  :port                 => 25,
  :domain               => "tradenote.co",
  :user_name            => "hello@tradenote.co",
  :password             => "snelock232",
  :authentication       => "login",
  # changed this from true because of a seg fault (pg only?) - http://redmine.ruby-lang.org/issues/4413
  # set to true for Heroku deploy? -- not sure why?
  :enable_starttls_auto => true,
}
