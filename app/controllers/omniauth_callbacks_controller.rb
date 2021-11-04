class OmniAuthCallbacksController < ApplicationController
  def twitter
    render plain: "Success!"
  end
end
