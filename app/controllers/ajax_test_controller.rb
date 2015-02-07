class AjaxTestController < ApplicationController
  def index
    @greeting = params[:greeting]
    greeting1 = params[:greeting1].to_s
    greeting2 = params[:greeting2].to_s
    greeting3 = params[:greeting3].to_s

    c1_ary = greeting1.split(//)
    c2_ary = greeting2.split(//)
    c3_ary = greeting3.split(//)

#c1_ary = Array["あ", "か", "さ", "た", "な", "は", "ま", "や", "ら", "わ"]
#c2_ary = Array["あ", "か", "さ", "た", "な", "は", "ま", "や", "ら", "わ"]
#c3_ary = Array["ろ"]

@kekka = []
@kekka2 = ""

for c1 in c1_ary do
  for c2 in c2_ary do
    for c3 in c3_ary do
      @kekka.push( c1 + c2 + c3 )
      @kekka2 = @kekka2 + c1 + c2 + c3 + "<br>"
    end
  end
end


    render
  end
end
