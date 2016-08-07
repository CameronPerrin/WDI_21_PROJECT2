class StaticPagesController < ApplicationController
  def home
    @items = Item.all.sort { |a,b| b.created_at <=> a.created_at }
  end

  def info
  end
end
