class ApplicationController < ActionController::Base

    def hello
        render html: "Hello, World! This will soon be The Care Hub"
    end
end
