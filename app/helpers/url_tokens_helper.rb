module UrlTokensHelper

  def launch_path(token)
    link_to launch_url(id: token.token).to_s, launch_url(id: token.token), target: :_blank
  end
end
