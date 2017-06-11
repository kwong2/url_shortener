class SitesController < ApplicationController

	def new
		@site = Site.new 
		@sites = Site.all
	end

	def create
		@site = Site.new
		puts "url short = #{@site.generateshort}"

		url_long = params[:url]
		url_short = @site.generateshort
		@site.url_short = url_short
		@site.url_long = url_long
		@site.save
		render 'show'
		# redirect_to 'show'
	end

	def show
		@site = Site.find(params[:id])
	end 


	def redirect
		p = params[:url_short]
		@site = Site.find_by(url_short: p)
		redirect_to @site.url_long
	end

end
