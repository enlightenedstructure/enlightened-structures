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
      photo_source: 'https://twitter.com/mccarthyjim1'
    }
    {
      name: 'Jeremie Miller'
      photo_source: 'https://www.flickr.com/photos/docsearls/5578718966/'
    }
  ]

  projects: [
    {
      name: "InterPlanetary File System"
    }
    {
      name: "Hylo"
    }
  ]

# add slug based on 'name'
for category, items of data
  for item in items
    if item.name? and not item.slug?
      item.slug = slug item.name

module.exports = data