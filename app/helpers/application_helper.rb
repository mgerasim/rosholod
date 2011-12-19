#coding: utf-8
module ApplicationHelper
    def title
	base_title = "ЗАО \"Росхолод-Хабаровск\""
	if @title.nil?
	    base_title
	else
	    "#{base_title} | #{@title}"
	end
    end
    
end
