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

    ALLOWED_TAGS = %w(a h1 img) unless defined?(ALLOWED_TAGS)

    def whitelist(html)
    	if html.index("<")
    		tokenizer = HTML::Tokenizer.new(html)
    		new_text = ""

    		while token = tokenizer.next
    			node = HTML::Node.parse(nil, 0, 0, token, false)
    			new_text << if node === HTML::Tag && ALLOWED_TAGS.include?(node.name)
    				node.to_s
    			else
    				node.to_s.gsub(/</, "&amp;LT;")
    			end
    		end
    		html = new_text
    	end
    	html
    end
    
end
