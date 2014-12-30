module Mongoid
  module Statusable
    extend ActiveSupport::Concern
    included do
    include SimpleEnum::Mongoid
     as_enum :status, [:new , :active], field: { :type => Integer, :default => 0 }
    end
  end
end
