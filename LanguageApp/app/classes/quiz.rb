class VocabularyAppHelper
@@score = 0
@@lives = 3

  def initialize(letter, vocabList) 
    @vocabList = getVocabList(letter, vocabList)
  end

  def getVocabList(letter, vocabList)
    selectedList = fullList.select {|item| item[0][0] == letter}
    randomisedList = selectedList.sort {|a, b| rand <=> rand }
  end

  def begin
    puts "Please translate all given words into czech! Score: #{@@score}, Lives: #{@@lives}"
    @vocabList.each do |vocab|
      question(vocab)
      if @@lives == 0
        puts "GAME OVER!! Score: #{@@score}, Lives: #{@@lives}"
        break
      end
    end
  end 

  def question(vocab)
    puts("Word: #{vocab[0]}")
      
    input = gets.chomp
    command, *params = input.split /\s/
    if input.downcase == vocab[1].downcase
      @@score += 1
      puts("Correct! '#{vocab[0]}' is '#{vocab[1]}' in czech! Score: #{@@score}, Lives: #{@@lives}")
    else
      @@lives -= 1
      puts "Wrong! '#{vocab[0]}' is '#{vocab[1]}' in czech! Score: #{@@score}, Lives: #{@@lives}"
    end 
  end
end