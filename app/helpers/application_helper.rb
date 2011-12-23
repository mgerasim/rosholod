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
    	if @eqpgroup
    	    if @eqpgroup.meta_keywords
        	    meta = @eqpgroup.meta_keywords
    	    end
    	end
    	meta
    end
    
    def meta_description
	meta = setting.meta_description
	if @eqpgroup
	    if @eqpgroup.meta_description
		    meta = @eqpgroup.meta_description
	    end
	end
	meta
    end

end
