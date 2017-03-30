require 'rbconfig'
include RbConfig
module CodingDrills
  class EnvDetails
    def output
      puts CONFIG["host"]
      puts CONFIG["libdir"]
    end
  end 
  env_d = EnvDetails.new
  env_d.output
end
