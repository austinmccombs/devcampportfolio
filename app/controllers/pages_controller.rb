class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
    @latest_blog = Blog.last
    @latest_proj = Portfolio.last
  end

  def about
    @skills = Skill.all
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
