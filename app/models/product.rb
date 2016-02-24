class Product < ActiveRecord::Base
  belongs_to :brand
end

class User < ActiveRecord::Base # ici pr ajout de l'avatar dans les product au moins 1
  mount_uploader :avatar, AvatarUploader
end
