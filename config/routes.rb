Rails.application.routes.draw do
  get 'ajax_test/index'
  post 'ajax_test/index'

  get 'systemu_test/index'

  get 'solr_test/index'
  post 'solr_test/index'
end
