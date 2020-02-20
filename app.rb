require "sinatra"
require "sinatra/reloader" if development?
require "cvss_factory"

configure {set :server, :puma}

@title = "CVSS calculating"

get "/" do
  slim :homepage, layout: :header
end

post "/" do
  @cvss = CVSSFactory.cvss(params)
  slim :result, layout: :header
end
