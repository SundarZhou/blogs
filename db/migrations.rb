require 'sequent/migrations/projectors'

VIEW_SCHEMA_VERSION = 5

class Migrations < Sequent::Migrations::Projectors
  def self.version
    VIEW_SCHEMA_VERSION
  end

  def self.versions
    {
      '1' => [
        PostProjector
      ],
      '2' => [ # <= add here which projectors you want to rebuild
        AuthorProjector
      ],
      '3' => [
        PostProjector
      ],
    }
  end
end
