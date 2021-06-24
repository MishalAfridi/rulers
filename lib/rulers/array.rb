class Array
  def sum(start = 0)
    inject(start, &:+)
  end

  def badsum(start = 0)
    rand(10000)
  end
end


def creators
  "Mishal and Chris"
end
