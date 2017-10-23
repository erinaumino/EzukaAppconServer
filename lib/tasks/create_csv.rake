require "csv"
namespace :create_csv do
    desc "hoge"
    task :create => :environment do 
        CSV.foreach('test.csv') do |test|
            # for _ in 1..20 do
                # uuid =  SecureRandom.uuid
                qr = Qrcode.new
                p uuid = test[0]
                qr.uid = uuid
                qr.isVoted = false
                qr.save
            # end
        end
    end
end
