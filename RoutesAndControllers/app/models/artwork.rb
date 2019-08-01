# == Schema Information
#
# Table name: artworks
#
#  id        :bigint           not null, primary key
#  title     :string           not null
#  image_url :string           not null
#  artist_id :integer          not null
#

class Artwork < ApplicationRecord
  has_many :artwork_shares,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User

  has_many :shared_viewers,
    through: :artwork_shares,
    source: :viewer

end
