a = [] of Int32

10.times do |i|
  prng = Random.new(i)
  a << prng.rand(1000 + i)
end

def sort(a)
  a.each_with_index do |e1, i1|
    a.each_with_index do |e2, i2|
      if i1 < i2
        if e1 > e2
          tmp = e2
          a[i2] = e1
          a[i1] = tmp
        end
      end
    end
  end
end

puts sort(a).join(" ")
