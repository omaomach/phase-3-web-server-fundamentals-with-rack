require 'rack'
require 'pry'

class App
    def call(env)
        path = env["PATH_INFO"]

        if path == "/"
            [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>World</em>!</h2>"]]
        elsif path == "/engineer"
            [200, { "Content-Type" => "text/html" }, ["<h2><em>Software Engineer Omao</em>!</h2>"]]
        else
            [404, { "Content-Type" => "text/html" }, ["PAGE NOT FOUND"]]
        end
    end
end

run App.new