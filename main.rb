require 'sinatra'
require 'mandrill'

get '/' do
  @title = "<title>William Bolton — Web Developer Based in Philly</title>"
  erb :index
end

get '/projects' do
  @title = "<title>William Bolton — Projects</title>"
  erb :projects
end

get '/writing' do
  @title = "<title>William Bolton — Writing</title>"
  erb :writing
end

get '/contact' do
  @title = "<title>William Bolton — Contact</title>"
  erb :contact
end