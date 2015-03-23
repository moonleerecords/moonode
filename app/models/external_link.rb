class ExternalLink < ActiveRecord::Base
  belongs_to :linkable, polymorphic: true

  validates :linkable_id, :linkable_type, :type, :url, presence: true

  # TODO: define globally http://stackoverflow.com/questions/4110866/ruby-on-rails-where-to-define-global-constants
  def self.types
    ['website', 'facebook', 'twitter', 'lastfm', 'bandcamp', 'myspace', 'soundcloud']
  end
end
