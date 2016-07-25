module Kintone::Type
  class Table < Array
    def initialize(array = nil)
      self.replace(array) if array
    end

    def to_kintone
      map { |v| { 'value' => v.to_kintone } }
    end

    def inspect
      "#<#{self.class.name} #{super}>"
    end
  end
end
