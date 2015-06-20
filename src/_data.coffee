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
      name: 'Juan Benet'
      image_source: 'https://github.com/jbenet'
    }
    {
      name: 'Jeremie Miller'
      image_source: 'https://www.flickr.com/photos/docsearls/5578718966/'
    }
  ]

  love: [
    {
      name: 'MaidSafe'
      link: 'http://maidsafe.net/'
      image_source: 'http://maidsafe.net/'
      image_type: "png"
    }
    {
      name: "Synereo"
      link: 'http://www.synereo.com/'
      image_source: 'http://www.synereo.com/'
      image_type: "png"
    }
    {
      name: 'Swarm'
      link: 'https://swarm.fund/'
      image_source: 'http://ceptr.org/'
      image_type: "png"
    }
    {
      name: 'Ceptr'
      link: 'http://ceptr.org/'
      image_source: 'http://ceptr.org/'
      image_type: "png"
    }
  ]

# add slug based on 'name'
for category, items of data
  for item in items
    if item.name? and not item.slug?
      item.slug = slug item.name

module.exports = data