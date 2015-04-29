fs = require 'fs'
{log, pjson} = require 'lightsaber'

data =
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

  hosts: [
    'Harlan T Wood'
    'Steven Starr'
  ]

  projects: [
    {
      name: "IPFS"
      image: "img/ipfs.jpg"
    }
    {
      name: "Hylo"
      image: "img/hylo.jpg"
    }
  ]

fs.writeFileSync './src/_data.json', pjson(data)
