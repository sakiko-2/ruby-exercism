module Raindrops
  RAINDROPS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(n)
    result = ''
    RAINDROPS.each {|k, v| result += v if n % k == 0}
    result.empty? ? n.to_s : result
  end
end
