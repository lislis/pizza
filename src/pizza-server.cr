require "./pizza-server/*"
require "kemal"
require "json"

get "/" do |env|
  env.response.content_type = "application/vnd.api+json"
  {data: [
    {name: "I Due Forni", address: "Schoenhauser Allee 12, 10119 Berlin, Germany"},
    {name: "Il Ritrovo", address: "Gabriel-Max-Str. 2, 10245 Berlin, Germany"},
    {name: "Il Casolare", address: "Grimmstr. 30, 10967 Berlin, Germany"},
    {name: "Stranero", address: "Liebenwalderstrasse 11, 13347 Berlin, Germany"}
  ]}.to_json
end

Kemal.run
