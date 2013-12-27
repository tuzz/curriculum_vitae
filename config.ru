use Rack::Static,
  :urls         => [""],
  :root         => "public",
  :index        => "index.html",
  :header_rules => [[:all, {"Cache-Control" => "public, max-age=#{60 * 60 * 24 * 7}"}]]

run lambda {} # Everything is served by Rack::Static
