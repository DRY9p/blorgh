Rails.application.routes.draw do
  get "fo/Foo"
  mount Blorgh::Engine => "/blorgh"
end
