namespace :my_tasks do
	task :populate => :environment do
	    #http://stackoverflow.com/questions/4410794/ruby-on-rails-import-data-from-a-csv-file
	    CSV.foreach("app/assets/vocabLists/BeginnerVocab.csv", :headers => true) do |row|
	      Vocabulary.create!(row.to_hash)
	    end
	  end
	end
