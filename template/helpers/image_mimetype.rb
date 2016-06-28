def image_mimetype(image_file)
  # Image filetypes acceptable to Twitter
  # gif, jpeg, png
  # https://twittercommunity.com/t/issue-with-an-svg-image-showing-up-in-a-card/57253/2
  image_file = image_file.to_s # prevents error if no image
  if File.extname(image_file) == '.gif'
    mimetype = 'image/gif'
  elsif File.extname(image_file) == ('.jpeg' || '.jpg')
    mimetype = 'image/jpeg'
  elsif File.extname(image_file) == '.png'
    mimetype = 'image/png'
  elsif File.extname(image_file) == ('.svg' || '.svgz')
    mimetype = 'image/svg+xml'
  end
  mimetype
end
