json.array!(@schools) do |school|
  json.extract! school, :id, :school_id, :school_name, :school_number, :web_url, :logo_file_name, :pic_file_name, :desc, :status_id, :school_stat_id, :demo_flag_id, :discount, :discount_amt, :start_month, :end_month
  json.url school_url(school, format: :json)
end
