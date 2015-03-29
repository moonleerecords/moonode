class ReleaseType < ActiveRecord::Base
  belongs_to :release

  validates :release, :format, presence: true

  def self.types
    ['CD', '12""', '10"' '7"', 'MC', 'download']
  end
end
