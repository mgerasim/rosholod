#coding: utf-8
module ApplicationHelper

    def setting
	obj = Setting.first
	if obj.nil?
	    obj = Setting.new
	    obj.save
	end
	obj
    end

    def title
		base_title = "#{setting.site_name}"
		
		if @title.nil?
		    base_title
		else
		    "#{base_title} | #{@title}"
		end
    end

    def meta_keywords
        meta = setting.meta_keywords
    end
    
    def meta_description
	Setting.first.meta_description
    end

end
