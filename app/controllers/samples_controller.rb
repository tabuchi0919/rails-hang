require 'net/http' 

class SamplesController < ApplicationController
  def root
    res = Net::HTTP.get(URI("http://localhost:3000/api"))

    render plain: res
  end

  def api
    render plain: "ok"
  end
end
