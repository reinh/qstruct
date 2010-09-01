require 'ostruct'
class QueryStruct < OpenStruct
  # Add query methods to struct members.
  def new_ostruct_member(name)
    super
    meta = class << self; self end
    meta.send(:alias_method, "#{name}?", name)
  end
end