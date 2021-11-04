class OmniAuthCallbacksController < ApplicationController
  def twitter
    twitter_account = Current.user.twitter_accounts.where(username: auth.info.nickname).first_or_initialize
    twitter_account.update(
      name: auth.info.name,
      avatar: auth.info.image,
      token: auth.credentials.token,
      secret: auth.credentials.secret
    )

    redirect_to root_path, notice: "Successfully connected twitter account."
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
