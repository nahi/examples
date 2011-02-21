a = []

10.times.to_enum.map {
    Thread.new(a) {
      1000.times do |idx|
        a << idx
            end
  }
}.map { |th|
    th.join
}

p a.size
