require "twitter"
require "relevant/widget"

module Relevant
  class Twitter
    Version = "0.0.1"
    include Relevant::Widget
    
    available_options :query => :string, :limit => :string
    refresh_every 1.minute

    template_format :haml
    template %q[
%h2 Twitter - #{@options[:query]}
%ul.twitter-tweets
  - results.each do |r|
    %li
      %img{:alt => r.from_user, :src => r.profile_image_url, :width => 18, :class => 'twitter-avatar'}
      = r.text
:css
  ul.twitter-tweets li { padding-left: 28px; margin-bottom: 0.4em; clear: left }
  ul.twitter-tweets img.twitter-avatar { float: left; margin-left: -28px; border: 1px solid #505050; }
]

    def results
      ::Twitter::Search.new(options[:query]).per_page(limit)
    end

    def limit
      options[:limit].present? ? options[:limit].to_i : 10
    end

  end
end

Relevant.register Relevant::Twitter