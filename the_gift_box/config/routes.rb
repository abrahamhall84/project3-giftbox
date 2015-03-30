Rails.application.routes.draw do
  # get 'items/index'

  # get 'items/new'

  # get 'items/show'

  # get 'items/edit'

  # get 'giftees/index'

  # get 'giftees/show'

  # get 'giftees/new'

  # get 'giftees/edit'

  # get 'gifters/index'

  # get 'gifters/new'

  # get 'gifters/show'

  # get 'gifters/edit'

  # get 'homepage/index'

  root :to => 'homepage#index'
  resources :gifters do 
    resources :items
  end

  resources :giftees do 
    resources :items
  end

end 
# Prefix Verb   URI Pattern                                  Controller#Action
#             root GET    /                                            index#homepage
#     gifter_items GET    /gifters/:gifter_id/items(.:format)          items#index
#                  POST   /gifters/:gifter_id/items(.:format)          items#create
#  new_gifter_item GET    /gifters/:gifter_id/items/new(.:format)      items#new
# edit_gifter_item GET    /gifters/:gifter_id/items/:id/edit(.:format) items#edit
#      gifter_item GET    /gifters/:gifter_id/items/:id(.:format)      items#show
#                  PATCH  /gifters/:gifter_id/items/:id(.:format)      items#update
#                  PUT    /gifters/:gifter_id/items/:id(.:format)      items#update
#                  DELETE /gifters/:gifter_id/items/:id(.:format)      items#destroy
#          gifters GET    /gifters(.:format)                           gifters#index
#                  POST   /gifters(.:format)                           gifters#create
#       new_gifter GET    /gifters/new(.:format)                       gifters#new
#      edit_gifter GET    /gifters/:id/edit(.:format)                  gifters#edit
#           gifter GET    /gifters/:id(.:format)                       gifters#show
#                  PATCH  /gifters/:id(.:format)                       gifters#update
#                  PUT    /gifters/:id(.:format)                       gifters#update
#                  DELETE /gifters/:id(.:format)                       gifters#destroy
#     giftee_items GET    /giftees/:giftee_id/items(.:format)          items#index
#                  POST   /giftees/:giftee_id/items(.:format)          items#create
#  new_giftee_item GET    /giftees/:giftee_id/items/new(.:format)      items#new
# edit_giftee_item GET    /giftees/:giftee_id/items/:id/edit(.:format) items#edit
#      giftee_item GET    /giftees/:giftee_id/items/:id(.:format)      items#show
#                  PATCH  /giftees/:giftee_id/items/:id(.:format)      items#update
#                  PUT    /giftees/:giftee_id/items/:id(.:format)      items#update
#                  DELETE /giftees/:giftee_id/items/:id(.:format)      items#destroy
#          giftees GET    /giftees(.:format)                           giftees#index
#                  POST   /giftees(.:format)                           giftees#create
#       new_giftee GET    /giftees/new(.:format)                       giftees#new
#      edit_giftee GET    /giftees/:id/edit(.:format)                  giftees#edit
#           giftee GET    /giftees/:id(.:format)                       giftees#show
#                  PATCH  /giftees/:id(.:format)                       giftees#update
#                  PUT    /giftees/:id(.:format)                       giftees#update
#                  DELETE /giftees/:id(.:format)                       giftees#destroy

