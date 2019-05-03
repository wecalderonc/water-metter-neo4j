json.extract! uplink, :id, :data, :avgsnr, :rssi, :long, :lat, :snr, :thing_id, :created_at, :updated_at
json.url uplink_url(uplink, format: :json)
