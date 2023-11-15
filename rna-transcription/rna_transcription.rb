module Complement
  DNARNA = { G: 'C', C: 'G', T: 'A', A: 'U' }

  def self.of_dna(dna)
    return '' if dna.empty?

    dna.split('').map { |n| DNARNA[n.to_sym] }.join
  end
end
