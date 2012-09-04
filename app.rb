get "/" do
  erb Redcarpet::Markdown.new(Redcarpet::Render::HTML, fenced_code_blocks: true).render(File.read(File.dirname(__FILE__) + "/README.md"))
end

post "/" do
  info = MultiJson.load request.body.read
  perform!(info, basic.credentials[1], basic.username)
end

def basic
  Rack::Auth::Basic::Request.new(request.env)
end

def perform!(build_info, api_key, widget)
  url = "https://#{api_key}:duck@push.ducksboard.com/v/#{widget}"
  connection = Faraday.new(url)

  status = build_info["status_message"].downcase
  time = Time.parse(build_info["committed_at"]).strftime("%b %d, %y at %l:%M%P")
  committer = build_info["committer_name"]

  payload = {
    timestamp: time.to_i,
    value: {
      source: request.url + "/images/#{status}.png",
      caption: "by #{committer}"
    }
  }

  response = connection.post do |req|
    req.headers["Content-Type"] = "application/json"
    req.body = MultiJson.dump(payload)
  end

  require 'pry'; binding.pry
end