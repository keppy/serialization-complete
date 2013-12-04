class SerializationComplete
  def serializable_attributes(*args)
    @serializable ||= {}
    args.each { |a| @serializable.merge!({a.to_s => 'nil'})}
      return @serializable
  end

  def attributes
    return @serializable
  end
end
