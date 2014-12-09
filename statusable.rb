module MongoMapper
  module Statusable
    def self.included(base)
      # add methods in ClassMethods into the meta class
      base.extend(ClassMethods)
    end

    module ClassMethods
      def statusable!(statuses={} , default_value = nil)
        extend Enumerize
        if statuses.is_a?(Hash)
          if default_value
            enumerize :status, in: statuses,  default: default_value.to_sym , predicates: true , scope: true
          else
            enumerize :status, in: statuses, predicates: true, scope: true
          end
        elsif statuses.is_a?(Array)
          if default_value
            enumerize :status, in: statuses.map!{|s| s.to_sym},  default: default_value.to_sym, predicates: true, scope: true
          else
            enumerize :status, in: statuses.map!{|s| s.to_sym}, predicates: true, scope: true
          end
        end
      end
    end
  end
end
