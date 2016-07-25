module Kintone::Type
  class Record < Hash
    def initialize(hash = nil)
      self.replace(hash) if hash
    end

    def to_kintone
      map { |k, v| [k, { 'value' => v.to_kintone }] }.to_h
    end

    def inspect
      "#<#{self.class.name} #{super}>"
    end
  end
end
