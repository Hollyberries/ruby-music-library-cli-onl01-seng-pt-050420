class Music_Library_Controller

def initialize(path = "./db/mp3s")
  Music_Importer.new(path)
end

def call
  
end


end
