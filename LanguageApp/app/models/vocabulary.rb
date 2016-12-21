class Vocabulary < ApplicationRecord
	require 'csv'

	def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      vocabulary_hash = row.to_hash 
      vocabulary = Vocabulary.where(id: vocabulary_hash["id"])

      if vocabulary.count == 1
        vocabulary.first.update_attributes(vocabulary_hash)
      else
        Vocabulary.create!(vocabulary_hash)
      end
    end
  end
end
