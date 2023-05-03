class UrlTokensController < ApplicationController
  before_action :find_url_token, only: %i[show launch]

  def index
    @pagy, @url_tokens = pagy UrlToken.all
  end

  def new
    @token = UrlToken.new
  end

  def create
    @token = UrlToken.new(token_params)

    if @token.save
      redirect_to url_token_path(@token)
    else
      render :new
    end
  end

  def show
    @pagy, @url_visits = pagy @token.url_visits
  end

  def launch
    @token.url_visits.create!(ip_address: request.ip)
    redirect_to @token.url
  end

  private

  def find_url_token
    @token = UrlToken.find_by_token!(params.require(:id))
    redirect_to root_path unless @token
  end

  def token_params
    params.require(:url_token).permit(:url)
  end
end
