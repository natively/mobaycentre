module Admin
  class AdvertisementsController < Admin::BaseController

    crudify :advertisement, :xhr_paging => true

  end
end
