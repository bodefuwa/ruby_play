def var_args (*args)
  args.map {|arg| arg.upcase}
end

puts var_args('matthew','mark','luke','john')
