class AuthorSerializer < ActiveModel::Serializer
  attributes :name 

  has_one :profile
  has_many :tags
  has_many :posts, serializer: AuthorPostsSerializer
  # give me the posts data, but interpreted through this ^ serializer 
end
