# coding: utf-8
require "./pizza-server/*"
require "kemal"
require "json"

get "/pizza" do |env|
  env.response.content_type = "application/vnd.api+json"
  env.response.headers.add "Access-Control-Allow-Origin", "*"
  {data: [
    {name: "I Due Forni", address: "Schoenhauser Allee 12, 10119 Berlin, Germany"},
    {name: "Il Ritrovo", address: "Gabriel-Max-Str. 2, 10245 Berlin, Germany"},
    {name: "Il Casolare", address: "Grimmstr. 30, 10967 Berlin, Germany"},
    {name: "Stranero", address: "Liebenwalderstrasse 11, 13347 Berlin, Germany"}
  ]}.to_json
end

get "/kieze" do |env|
  env.response.content_type = "application/vnd.api+json"
  env.response.headers.add "Access-Control-Allow-Origin", "*"
  {data: [
     {name: "Wedding", long: "technically Mitte"},
     {name: "Pberg", long: "technically Pankow"},
     {name: "Fhain+Kberg", long: "Friedrichshain-Kreuzberg"},
     {name: "Neukölln", long: "just Neukölln"}
   ]}.to_json
end

Kemal.run
