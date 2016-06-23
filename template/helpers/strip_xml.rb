def strip_xml(string)
  string = string.gsub(%r{</?[^>]+?>}, '')
end