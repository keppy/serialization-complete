class SerializationComplete
  def serializable_attributes(*args)
      if not @serializable
        @serializable = {}
        args.each { |a| @serializable.merge!({a.to_s => 'nil'})}
      return @serializable
    end
  end

  def attributes
    return @serializable
  end
end
