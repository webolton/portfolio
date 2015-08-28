require 'rubygems'
require 'sinatra'
require 'mandrill'

get '/' do
  @title = "<title>William Bolton — Web Developer Based in Philly</title>"
  @projectsLink = "projects-link-home"
  @writingLink = "writing-link-home"
  @contactLink = "contact-link-home"
  @headerStripe = "header-stripe"

  erb :index
end

get '/projects' do
  @title = "<title>William Bolton — Projects</title>"
  @projectsLink = "projects-link-current"
  @writingLink = "writing-link-home"
  @contactLink = "contact-link-home"
  @headerStripe = "header-stripe-projects"
  @pageTint = "projects-tint"

  erb :projects
end

get '/writing' do
  @title = "<title>William Bolton — Writing</title>"
  @projectsLink = "projects-link-home"
  @writingLink = "writing-link-current"
  @contactLink = "contact-link-home"
  @headerStripe = "header-stripe-writing"
  @pageTint = "writing-tint"

  erb :writing
end

get '/contact' do
  @title = "<title>William Bolton — Contact</title>"
  @projectsLink = "projects-link-home"
  @writingLink = "writing-link-home"
  @contactLink = "contact-link-current"
  @headerStripe = "header-stripe-contact"
  @pageTint = "contact-tint"
  erb :contact
end


post '/contact' do
  puts params.inspect
  msg = Mandrill::API.new

  body = {
    :from_name => "#{params[:name]}",
    :from_email => "#{params[:email]}",
    :text => "#{params[:message]}",
    :subject => "#{params[:subject]}",
    :to => [{:email => "william.ellet@gmail.com", :name => "William Bolton"}]
  }

  result = msg.messages.send body
  redirect to '/', "Thanks!!!"
end

get '/thanks' do
  @title = "<title>Thanks! I will get back to you as soon as I can.</title>"
  @projectsLink = "projects-link-home"
  @writingLink = "writing-link-home"
  @contactLink = "contact-link-home"
  @headerStripe = "header-stripe"

  erb :thanks
end





