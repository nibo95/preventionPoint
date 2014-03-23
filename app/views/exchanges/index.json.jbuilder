json.array!(@exchanges) do |exchange|
  json.extract! exchange, :id, :ultrafines, :halfs, :pogos, :blues, :one_qt, :two_qt, :three_gal, :alcohol_whipes, :cookers, :cottons, :ties, :bleach, :condoms, :ascorbic_acid, :pieces_of_lit, :narcan, :secondary_exchange
  json.url exchange_url(exchange, format: :json)
end
