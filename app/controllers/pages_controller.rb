class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end

  def sports_news
    @sports = SocialTool.sports_search
  end

end
