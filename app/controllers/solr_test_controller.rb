class SolrTestController < ApplicationController
  def index
    solr = RSolr.connect :url => "http://localhost:8983/solr/solrbook"

    q = params[:search_word].to_s

    if q == "" then
      q = "*:*"
    end

    @result_data1 = solr.get 'select', :params => {:q=>q, :wt => 'json'}

    render
  end
end
