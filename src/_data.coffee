slug = require 'slug'
# {p} = require 'lightsaber'

data =
  hosts: [
    {
      name: 'Harlan T Wood'
    }
    {
      name: 'Steven Starr'
    }
  ]

  upcoming: [
    {
      name: 'Jim McCarthy'
      image_source: 'https://twitter.com/mccarthyjim1'
    }
    {
      name: 'Jeremie Miller'
      image_source: 'https://www.flickr.com/photos/docsearls/5578718966/'
    }
  ]

  love: [
    {
      name: "InterPlanetary File System"
      image_type: "png"
      image_source: 'https://github.com/ipfs/website'
    }
    {
      name: "Synereo"
      image_type: "png"
      image_source: 'http://www.synereo.com/'
    }
  ]

# add slug based on 'name'
for category, items of data
  for item in items
    if item.name? and not item.slug?
      item.slug = slug item.name

module.exports = data