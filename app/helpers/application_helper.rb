module ApplicationHelper

    def avatar_url(user)
        if user.avatar.attached?
            url_for(user.avatar)
        elsif user.image?
            user.imgage?
        else
            ActionController::Base.helpers.asset_path('default_pic.png')
        end
        
    end
end
