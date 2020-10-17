
module ApplicationHelper

  def gravatar_for(user ,options={size: 80})
    _email = user.email.downcase
    gravatar_id = Digest::MD5.hexdigest(_email)
    size= options[:size]
    gravatar_url= "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt:user.username,class: "rounded-circle")

  end
end
