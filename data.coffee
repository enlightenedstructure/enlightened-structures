fs = require 'fs'
{log, pjson} = require 'lightsaber'

data =
  upcoming: [
    'Jim McCarthy'
    'Jeremie Miller'
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
