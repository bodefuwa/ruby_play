requre 'fileutils'

module CodingDrills
  class FileDeleter 
    def delete
      files = Dir['*~']
      FilesUtils::rm files, verbose: true
    end
  end
end
