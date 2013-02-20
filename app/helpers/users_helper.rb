module UsersHelper

	  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = 80
    default_url = "http%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F8%2F88%2F46_Dick_Cheney_3x4.jpg%2F220px-46_Dick_Cheney_3x4.jpg"
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=#{default_url}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar", default: default_url )
  end
  
end
