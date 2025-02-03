class StaticPagesController < ApplicationController
  def about
  end

  def services
    @services = Service.all
  end
end
