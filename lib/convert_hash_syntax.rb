def convert_hash_syntax(input)
  input.gsub(/:(\w+)\s*=>\s*/) { "#{Regexp.last_match(1)}: " }
end
