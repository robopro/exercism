class Complement
    DNA = "GCTA"
    RNA = "CGAU"

    def self.of_dna(sequence)
        sequence.tr(DNA, RNA)
    end
end
