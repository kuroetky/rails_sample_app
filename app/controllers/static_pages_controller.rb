class StaticPagesController < ApplicationController
  def home
    #デフォルトではapp/views/リソース名/アクション名.html.erbが動く
    #app/views/static_pages/home.html.erb
  end

  def help
  end
  
  def about
    #app/views/static_pages/about.html.erb
  end
  
  #演習
  def contact
  end
end
