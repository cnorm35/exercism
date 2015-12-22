class Raindrops
  def self.convert(n)
    raise ArgumentError unless n.is_a?(Fixnum)
    result = ''
    result << 'Pling' if n%3 == 0
    result << 'Plang' if n%5 == 0
    result << 'Plong' if n%7 == 0
    return n.to_s if result.empty?
    result
  end
end