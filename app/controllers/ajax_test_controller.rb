class AjaxTestController < ApplicationController
  def index

    @data2 = {
      title: params[:greeting].to_s,
      description: "test description2",

      list: [
        { name: 'name-1', score: 210 },
        { name: 'name-2', score: 220 },
        { name: 'name-3', score: 230 }
      ]
    };

    render
  end
end
