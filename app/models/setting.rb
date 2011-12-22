class Setting < ActiveRecord::Base

    validates :site_name,  
                  :length   => { :maximum => 255 }

    validates :meta_keywords,  
                  :length   => { :maximum => 255 }

    validates :meta_description,  
                  :length   => { :maximum => 255 }

end
