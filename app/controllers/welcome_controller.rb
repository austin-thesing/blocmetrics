class WelcomeController < ApplicationController
  # allows users to see > about & index pages without the need to signup/signin to a account
  skip_before_action :authenticate_user!

  def index
  end

  def about
  end
end
