class Worker
  def init(args)
    @given = true
  end

  def fire
    process if @given
  end
end
