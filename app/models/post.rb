class Post
  include Mongoid::Document
  include Mongoid::Paperclip
  field :name, type: String
  field :content,type: String
  
   has_mongoid_attached_file :image,:styles => {
      :original => ['1920x1680>', :jpg],
      :small    => ['100x100#',   :jpg],
      :medium   => ['250x250',    :jpg],
      :large    => ['500x500>',   :jpg]
    }
	
 validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }	

end