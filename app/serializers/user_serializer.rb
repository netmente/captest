class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :first_name, :last_name, :phone, :avatar_face1, :avatar_face2, :avatar_face3, :avatar_face4, :avatar_face5, :avatar_face6, :fb_token, :website, :bio, :gender, :address, :city, :state, :post_count, :following_count, :follower_count, :family_count, :info, :contact_me, :online, :is_verified, :is_active, :role
end
