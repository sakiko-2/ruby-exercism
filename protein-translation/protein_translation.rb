class InvalidCodonError < StandardError
end

module Translation
  PROTEINS = { AUG: 'Methionine', UUU: 'Phenylalanine', UUC: 'Phenylalanine', 
    UUA: 'Leucine', UUG: 'Leucine', UCU: 'Serine', UCC: 'Serine', UCA: 'Serine',
    UCG: 'Serine', UAU: 'Tyrosine', UAC: 'Tyrosine', UGU: 'Cysteine',
    UGC: 'Cysteine', UGG: 'Tryptophan', UAA: 'STOP', UAG: 'STOP', UGA: 'STOP'
  }

  def self.of_rna(strand)
    codons = []
    strand.chars.each_slice(3) {|codon| codons << codon.join }

    proteins = []
    codons.each do |codon|
      raise InvalidCodonError unless PROTEINS[codon.to_sym]
      PROTEINS[codon.to_sym] == 'STOP' ? break : proteins << PROTEINS[codon.to_sym]
    end

    proteins
  end
end
