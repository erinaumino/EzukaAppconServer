# -*- encoding: sjis -*-
require "csv"
require "securerandom"
require 'rqrcode'
require 'rqrcode_png'
require 'chunky_png'

CSV.open('test.csv','w') do |test| 
    for _ in 1..200 do
        uuid =  SecureRandom.uuid
        test << [uuid]
        qr = RQRCode::QRCode.new( uuid, :size => 5, :level => :h )
        png = qr.to_img
        png.resize(200, 200).save("/Users/erina/Desktop/rails/EzukaAppconServer/qrimages/" + uuid + ".png")        
    end
end