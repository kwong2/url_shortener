class SitesController < ApplicationController

	def new
		@site = Site.new 
	end

	def create
		s = Site.new
		puts "url short = #{s.generateshort}"

		url_long = params[:url]
		url_short = s.generateshort
		s.url_short = url_short
		s.url_long = url_long
		s.save
		render 'new'
	end

	def show
		p = params[:url_short]
		@site = Site.find_by(url_short:p)
		redirect_to @site.url_long
	end 

	# def redirect
	# 	redirect_to Site.find_by(url_long: 
	# end

end
