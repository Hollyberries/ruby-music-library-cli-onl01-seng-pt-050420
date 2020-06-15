class Music_Library_Controller

def initialize(path = "./db/mp3s")
  Music_Importer.new(path).import
end

def call
  
end


end
